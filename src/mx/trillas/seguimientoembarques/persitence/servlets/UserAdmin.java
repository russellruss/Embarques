package mx.trillas.seguimientoembarques.persitence.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mx.trillas.seguimientoembarques.persitence.adapters.AlmacenAdapter;
import mx.trillas.seguimientoembarques.persitence.adapters.UsuarioAdapter;
import mx.trillas.seguimientoembarques.persitence.dao.AlmacenDAO;
import mx.trillas.seguimientoembarques.persitence.dao.Ft96DAO;
import mx.trillas.seguimientoembarques.persitence.dao.GeneralesDAO;
import mx.trillas.seguimientoembarques.persitence.dao.TipousuarioDAO;
import mx.trillas.seguimientoembarques.persitence.dao.UserAlmacenDAO;
import mx.trillas.seguimientoembarques.persitence.dao.UserDAO;
import mx.trillas.seguimientoembarques.persitence.impl.AlmacenDAODBImpl;
import mx.trillas.seguimientoembarques.persitence.impl.Ft96DAODBImpl;
import mx.trillas.seguimientoembarques.persitence.impl.GeneralesDAODBImpl;
import mx.trillas.seguimientoembarques.persitence.impl.TipousuarioDAODBImpl;
import mx.trillas.seguimientoembarques.persitence.impl.UserAlmacenDAODBImpl;
import mx.trillas.seguimientoembarques.persitence.impl.UserDAODBImpl;
import mx.trillas.seguimientoembarques.persitence.pojos.Almacen;
import mx.trillas.seguimientoembarques.persitence.pojos.Generales;
import mx.trillas.seguimientoembarques.persitence.pojos.UserAlmacen;
import mx.trillas.seguimientoembarques.persitence.pojos.Usuario;
import mx.trillas.seguimientoembarques.util.Cripto;

import org.apache.log4j.Logger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

/**
 * Servlet implementation class UserAdmin
 */
@WebServlet("/UserAdmin")
public class UserAdmin extends HttpServlet {
	private static Logger logger = Logger.getLogger(UserAdmin.class.getName());
	private static UserDAO userDAO = new UserDAODBImpl();
	private static AlmacenDAO almacenDAO = new AlmacenDAODBImpl();
	private static TipousuarioDAO tipousuarioDAO = new TipousuarioDAODBImpl();
	private static UserAlmacenDAO userAlmacenDAO = new UserAlmacenDAODBImpl();
	private static GeneralesDAO generalesDAO = new GeneralesDAODBImpl();
	private static Ft96DAO ft96DAO = new Ft96DAODBImpl();
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserAdmin() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Object actionObj = request.getParameter("action");
		String action = null;
		if (actionObj != null && actionObj instanceof String) {
			action = (String) actionObj;
		}
		if (action != null && action.equals("getUsuariosasesores")) {
			response.setContentType("application/json");
			JSONObject json = new JSONObject();
			PrintWriter out = response.getWriter();
			JSONArray list = new JSONArray();

			try {
				for (Usuario usuario : userDAO.getUsuariosAsesores()) {
					GsonBuilder gsonBuilder = new GsonBuilder();
					gsonBuilder.registerTypeAdapter(Usuario.class,
							new UsuarioAdapter());
					Gson gson = gsonBuilder.create();
					list.put(gson.toJson(usuario));
				}
				json.put("usuarios", list);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			out.print(json.toString());
			out.flush();
			// System.out.println(json.toString());
		}
		if (action != null && action.equals("getListaUsuarios")) {
			response.setContentType("application/json");
			JSONObject json = new JSONObject();
			PrintWriter out = response.getWriter();
			JSONArray list = new JSONArray();
			try {
				for (Usuario usuario : userDAO.getAllUsers()) {
					if (!(usuario.getTipousuario().getTipo().equals(tipousuarioDAO.getTipousuarioAdministrador().getTipo()))){
						GsonBuilder gsonBuilder = new GsonBuilder();
						gsonBuilder.registerTypeAdapter(Usuario.class,
								new UsuarioAdapter());
						Gson gson = gsonBuilder.create();
						list.put(gson.toJson(usuario));
					}
				}
				json.put("usuarios", list);
				out.print(json.toString());
				out.flush();
				// System.out.println(json);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (action != null && action.equals("getAlmacenesOfUsuario")) {
			Object usuarioObj = request.getParameter("user");
			Usuario usuario;
			try {
				if (usuarioObj != null && usuarioObj instanceof String) {
					String username = (String) usuarioObj;
					usuario = userDAO.getByUsername(username);
				} else {
					return;
				}
				List<Almacen> almacenesOfUsuario = almacenDAO
						.getAlmacenesOfUser(usuario);
				List<Almacen> almacenes = almacenDAO.getAlmacenes();
				response.setContentType("application/json");
				JSONObject json = new JSONObject();
				PrintWriter out = response.getWriter();
				JSONArray list = new JSONArray();
				for (Almacen almacen : almacenes) {
					GsonBuilder gsonBuilder = new GsonBuilder();
					AlmacenAdapter almacenAdapter = new AlmacenAdapter();
					// System.out.println();
					if (almacenesOfUsuario.contains(almacen)) {
						almacenAdapter.setSelected(true);
					} else {
						almacenAdapter.setSelected(false);
					}
					gsonBuilder.registerTypeAdapter(Almacen.class,
							almacenAdapter);
					Gson gson = gsonBuilder.create();
					list.put(gson.toJson(almacen));
				}
				json.put("almacenes", list);
				out.print(json.toString());
				out.flush();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (action != null && action.equals("updateAlmacenFor")) {
			Object usuarioObj = request.getParameter("usuario");
			Usuario usuario = null;
			if (usuarioObj != null && usuarioObj instanceof String) {
				String username = (String) usuarioObj;
				try {
					usuario = userDAO.getByUsername(username);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else {
				return;
			}

			Object isCheckedObj = request.getParameter("checked");
			boolean isChecked = false;
			if (isCheckedObj != null && isCheckedObj instanceof String) {
				String isCheckedStr = (String) isCheckedObj;
				isChecked = isCheckedStr.equals("1") ? true : false;
			} else {
				return;
			}

			Object valueObj = request.getParameter("value");
			int value;
			if (valueObj != null && valueObj instanceof String) {
				String valueStr = (String) valueObj;
				value = new Integer(valueStr).intValue();
			} else {
				return;
			}

			Almacen almacen = null;
			try {
				almacen = almacenDAO.getByClave(value);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			if (isChecked) {
				try {
					userAlmacenDAO.insert(almacen, usuario);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (!isChecked) {
				try {
					UserAlmacen userAlmacen = userAlmacenDAO
							.getByUserAndAlmacen(almacen, usuario);
					userAlmacenDAO.delete(userAlmacen);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}

		if (action != null && action.equals("fillDistinctAlmacenes")) {
			response.setContentType("application/json");
			JSONObject json = new JSONObject();
			PrintWriter out = response.getWriter();
			JSONArray list = new JSONArray();

			List<String> almacenesNames = null;
			try {
				almacenesNames = almacenDAO.getAllAlmacenesNames();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			List<String> listRsocf = null;
			try {
				listRsocf = ft96DAO.getAllDistinctRSOCF();
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

			try {
				if (listRsocf != null)
					for (String rsocf : listRsocf) {
						Map<String, String> retMap = new HashMap<>();
						retMap.put("nombre", rsocf);
						if (almacenesNames.contains(rsocf))
							retMap.put("agregado", "1");
						else
							retMap.put("agregado", "0");
						Map<String, Object> respuesta = new HashMap<>();
						respuesta.put("registro", retMap);
						list.put(respuesta);
					}
				json.put("rsocf", list);
			} catch (JSONException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
//			System.out.println(json.toString());
			out.print(json.toString());
			out.flush();
		}

		if (action != null && action.equals("agregarAlmacen")) {
			Object nombreAlmacenObj = request.getParameter("nombrealmacen");
			if (nombreAlmacenObj != null && nombreAlmacenObj instanceof String) {
				String nombreAlmacen = (String) nombreAlmacenObj;
				Almacen almacen = new Almacen();
				try {
					almacen.setClave(almacenDAO.getNextID());
				} catch (Exception e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				almacen.setNombre(nombreAlmacen);
				try {
					almacenDAO.insert(almacen);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}

		if (action != null && action.equals("ultimaActualizacion")) {
			Generales generales;
			try {
				generales = generalesDAO
						.getByKeyaction(Generales.keyactions.ULTIMAACTUALIZACIONDB);
				Gson gson = new Gson();
				String salida = gson.toJson(generales);

				response.setContentType("application/json");
				PrintWriter out = response.getWriter();
				out.write(salida);
				out.flush();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Pattern usuarioPattern = Pattern.compile("^(([a-z]){6,12})$");
		Pattern passwordPattern = Pattern
				.compile("^(([a-z]|[A-Z]|\\d){6,20})$");
		Object usernameObj = request.getParameter("username");
		String username = null;
		if (usernameObj != null && usernameObj instanceof String) {
			username = (String) usernameObj;
		}
		Object passwordObj = request.getParameter("password");
		String password = null;
		if (passwordObj != null && passwordObj instanceof String) {
			password = (String) passwordObj;
		}
		Object password2Obj = request.getParameter("password2");
		String password2 = null;
		if (password2Obj != null && password2Obj instanceof String) {
			password2 = (String) password2Obj;
		}

		boolean hayError = false;
		try {
			response.setContentType("application/json");
			JSONObject json = new JSONObject();
			if (username == null || password == null) {
				hayError = true;
				json.put("message", "Usuario y password son campos requeridos");
			}

			Matcher matcher = null;

			if (username != null) {
				matcher = usuarioPattern.matcher(username);
				if (!matcher.matches()) {
					hayError = true;
					json.put("message",
							"El usuario debe tener entre 10 y 20 letras minúsculas");
				}
			}
			if (password != null) {
				matcher = passwordPattern.matcher(password);
				if (!matcher.matches()) {
					hayError = true;
					json.put(
							"message",
							"El password solo puede tener letras y números y debe tener entre 6 y 20 carácteres.");
				}
			}
			if (!password.equals(password2)) {
				hayError = true;
				json.put("message",
						"Los campos password y confirmar password no coinciden");
			}

			try {
				if (userDAO.usernameExists(username)) {
					hayError = true;
					json.put("message",
							"El username proporcionado ya está dado de alta");
				}
			} catch (Exception e) {
				hayError = true;
				json.put("message", e.getMessage());
				logger.error(e.getMessage());
			}

			PrintWriter out = response.getWriter();
			if (!hayError) {
				try {
					json.put("status", "ok");
					Usuario usuario = new Usuario();
					usuario.setUsername(username);
					usuario.setPassword(Cripto.getSha256(password));
					usuario.setTipousuario(tipousuarioDAO
							.getTipousuarioAsesor());
					try {
						userDAO.altaUsuario(usuario);
					} catch (Exception e) {
						hayError = true;
						throw e;
					}
				} catch (Exception e1) {
					json.put("status", "error");
					json.put("message", e1.getMessage());
					logger.error(e1.getMessage());
				}
			} else {
				json.put("status", "error");
			}
			// System.out.println(json.toString());
			out.print(json.toString());
			out.flush();
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
