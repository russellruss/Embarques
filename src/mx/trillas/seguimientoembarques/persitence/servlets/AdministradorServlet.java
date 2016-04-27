package mx.trillas.seguimientoembarques.persitence.servlets;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import mx.trillas.seguimientoembarques.SeguimientoEmbarques;
import mx.trillas.seguimientoembarques.persitence.FTP.FTPDownloader;
import mx.trillas.seguimientoembarques.persitence.dao.Ft91DAO;
import mx.trillas.seguimientoembarques.persitence.dao.Ft96DAO;
import mx.trillas.seguimientoembarques.persitence.dao.GeneralesDAO;
import mx.trillas.seguimientoembarques.persitence.impl.Ft91DAODBImpl;
import mx.trillas.seguimientoembarques.persitence.impl.Ft96DAODBImpl;
import mx.trillas.seguimientoembarques.persitence.impl.GeneralesDAODBImpl;
import mx.trillas.seguimientoembarques.persitence.pojos.Generales;
import mx.trillas.seguimientoembarques.util.HashUtil;

@WebServlet("/AdministradorServlet")
public class AdministradorServlet extends HttpServlet {
	private static Logger logger = Logger.getLogger(AdministradorServlet.class);
	private static final long serialVersionUID = 1L;
	private static GeneralesDAO generalesDAO = new GeneralesDAODBImpl();
	private static Ft96DAO ft96DAO = new Ft96DAODBImpl();
	private static Ft91DAO ft91DAO = new Ft91DAODBImpl();

	public AdministradorServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String datetime = request.getParameter("datetime");
		String key = request.getParameter("key");

		if (datetime == null || key == null) {
			logger.error("datetime o key nulo");
			return;
		}

		String cadena = datetime + "|" + "|" + datetime + "|" + "|" + datetime;

		String hash1 = HashUtil.sha256(cadena);
		String hash2 = HashUtil.sha256(hash1);
		if (hash2.equals(key)){
			logger.info("Parámetros correctos, se actualiza");
			update();
		}
		else
			logger.error("La llave hash no concuerda");
		response.sendError(200);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		update();
	}

	private void update() {
		ServletContext servletContext = getServletContext();

		try {
			ft91DAO.deleteAll();
			ft96DAO.deleteAll();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		Path path91 = Paths.get(servletContext.getRealPath("/data/FT91PC.TXT"));
		FTPDownloader.downloadFile(path91);
		SeguimientoEmbarques ps = new SeguimientoEmbarques();
		String bandera = "FT91_MAP.properties";
		ps.parseFT91(path91, bandera);

		Path path96 = Paths.get(servletContext.getRealPath("/data/FT96PC.TXT"));
		FTPDownloader.downloadFile(path96);
		bandera = "FT96_MAP.properties";
		ps.parseFT96(path96, bandera);

		SimpleDateFormat sdf = new SimpleDateFormat(
				"d 'de' MMMM 'de' yyyy ' a las ' HH:mm:ss aa");
		try {
			generalesDAO.setData(Generales.keyactions.ULTIMAACTUALIZACIONDB,
					sdf.format(new Date()));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
