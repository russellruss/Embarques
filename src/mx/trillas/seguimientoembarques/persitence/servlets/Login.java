package mx.trillas.seguimientoembarques.persitence.servlets;

import java.io.IOException;
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
import mx.trillas.seguimientoembarques.persitence.dao.TipousuarioDAO;
import mx.trillas.seguimientoembarques.persitence.dao.UserDAO;
import mx.trillas.seguimientoembarques.persitence.impl.AlmacenDAODBImpl;
import mx.trillas.seguimientoembarques.persitence.impl.TipousuarioDAODBImpl;
import mx.trillas.seguimientoembarques.persitence.impl.UserDAODBImpl;
import mx.trillas.seguimientoembarques.persitence.pojos.Almacen;
import mx.trillas.seguimientoembarques.persitence.pojos.Usuario;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static UserDAO userDAO = new UserDAODBImpl();
	private static AlmacenDAO almacenDAO = new AlmacenDAODBImpl();
	private static TipousuarioDAO tipousuarioDAO = new TipousuarioDAODBImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setAttribute("almacenes", null);
		session.setAttribute("user", null);
		session.removeAttribute("user");
		session.removeAttribute("almacenes");
		session.invalidate();

		String url = request.getRequestURL().toString();
		if (request.getServletPath() != null)
			url = url.replace(request.getServletPath(), "");
		if (request.getPathInfo() != null)
			url = url.replace(request.getPathInfo(), "");
		response.sendRedirect(url);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("application/json");
		JSONObject obj = new JSONObject();
		Usuario user = null;
		try {
			user = userDAO.getUser(request.getParameter("email"),
					request.getParameter("password"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (user != null) {
			HttpSession session = request.getSession();
			try {
				obj.put("status", "ok");
				session.setAttribute("user", user);
			} catch (JSONException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			List<Almacen> almacenes;
			try {
				if (user.getTipousuario().equals(
						tipousuarioDAO.getTipousuarioAdministrador())) {
					almacenes = almacenDAO.getAlmacenes();
				} else {
					almacenes = almacenDAO.getAlmacenesOfUser(user);
				}
				session.setAttribute("almacenes", almacenes);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			try {
				obj.put("status", "x");
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		response.getWriter().write(obj.toString());
	}

}
