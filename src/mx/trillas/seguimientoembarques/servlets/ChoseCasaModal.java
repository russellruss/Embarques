package mx.trillas.seguimientoembarques.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;

import mx.trillas.seguimientoembarques.persitence.dao.AlmacenDAO;
import mx.trillas.seguimientoembarques.persitence.factory.ImplFactory;
import mx.trillas.seguimientoembarques.persitence.pojos.Almacen;

/**
 * Servlet implementation class ChoseCasaModal
 */
@WebServlet("/pages/login/ChoseCasaModal")
public class ChoseCasaModal extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static AlmacenDAO almacenDAO = ImplFactory.getAlmacenDAOImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ChoseCasaModal() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String claveS = request.getParameter("showalmacen");
		int clave = new Integer(claveS).intValue();
		List<Almacen> almacenes = new ArrayList<>();
		Almacen showAlmacen;
		try {
			showAlmacen = almacenDAO.getByClave(clave);
			almacenes.add(showAlmacen);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		session.setAttribute("almacenes", almacenes);
		JSONObject obj = new JSONObject();
		try {
			obj.put("status", "ok");
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		System.out.println(obj.toString());
		response.setContentType("application/json");
		response.getWriter().write(obj.toString());
	}

}
