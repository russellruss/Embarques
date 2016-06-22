package mx.trillas.seguimientoembarques.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.google.gson.Gson;

import mx.trillas.seguimientoembarques.persitence.dao.GeneralesDAO;
import mx.trillas.seguimientoembarques.persitence.factory.ImplFactory;
import mx.trillas.seguimientoembarques.persitence.pojos.Generales;

/**
 * Servlet implementation class UpdateDateUsersServlet
 */
@WebServlet("/UpdateDateUsersServlet")
public class UpdateDateUsersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static Logger log = Logger.getLogger(UpdateDateUsersServlet.class.getName());
	private static GeneralesDAO generalesDAO = ImplFactory.getGeneralesDAODBImplImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateDateUsersServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Object actionObj = request.getParameter("action");
		String action = null;

		if (actionObj != null && actionObj instanceof String) {
			action = (String) actionObj;
		}
		
		if (action != null && action.equals("")) {
			
		}
		
		if (action != null && action.equals("laterUpdate")) {
			Generales generales;
			try {
				generales = generalesDAO.getByKeyaction(GeneralesDAO.keyactions.ACTUALIZACIONUSUARIOSARCHIVO);
				Gson gson = new Gson();
				String salida = gson.toJson(generales);
				response.setContentType("application/json");
				PrintWriter out = response.getWriter();
				out.write(salida);
				out.flush();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		SimpleDateFormat sdf = new SimpleDateFormat(
				"d 'de' MMMM 'de' yyyy ' a las ' HH:mm:ss aa");
		try {
			generalesDAO.setData(GeneralesDAO.keyactions.ACTUALIZACIONUSUARIOSARCHIVO, sdf.format(new Date()));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
