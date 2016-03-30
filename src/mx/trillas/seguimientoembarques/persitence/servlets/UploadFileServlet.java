package mx.trillas.seguimientoembarques.persitence.servlets;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mx.trillas.seguimientoembarques.Asesor;
import mx.trillas.seguimientoembarques.IOAlmacen;
import mx.trillas.seguimientoembarques.persitence.impl.AlmacenDAODBImpl;
import mx.trillas.seguimientoembarques.persitence.impl.UserAlmacenDAODBImpl;
import mx.trillas.seguimientoembarques.persitence.impl.UserDAODBImpl;
import mx.trillas.seguimientoembarques.persitence.pojos.Almacen;
import mx.trillas.seguimientoembarques.persitence.pojos.Usuario;
import mx.trillas.seguimientoembarques.util.Cripto;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.log4j.Logger;

/**
 * Servlet implementation class UploadFileServlet
 */
@WebServlet("/UploadFileServlet")
public class UploadFileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletFileUpload uploader = null;

	private static UserDAODBImpl usersDAO = new UserDAODBImpl();
	private static AlmacenDAODBImpl almacenDAO = new AlmacenDAODBImpl();
	static Logger log = Logger.getLogger(UploadFileServlet.class.getName());
	private static UserAlmacenDAODBImpl useralmacenDAO = new UserAlmacenDAODBImpl();

	@Override
	public void init() throws ServletException {
		DiskFileItemFactory fileFactory = new DiskFileItemFactory();
		File filesDir = (File) getServletContext().getAttribute("FILES_DIR_FILE");
		fileFactory.setRepository(filesDir);
		this.uploader = new ServletFileUpload(fileFactory);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String msg = "";
		boolean flag = false;

		if (!ServletFileUpload.isMultipartContent(request)) {
			log.error("Content type no es multipart/form-data");
			throw new ServletException("Content type no es multipart/form-data");
		}

		List<Asesor> asesoresFromFile = new ArrayList<>();
		List<Usuario> listaDeUsuarios = new ArrayList<>();
		List<FileItem> fileItemsList;
		try {
			fileItemsList = uploader.parseRequest(request);
		} catch (FileUploadException e) {
			log.error(e.getMessage());
			return;
		}
		Iterator<FileItem> fileItemsIterator = fileItemsList.iterator();
		while (fileItemsIterator.hasNext()) {
			FileItem fileItem = fileItemsIterator.next();
			String path = request.getServletContext().getAttribute("FILES_DIR") + File.separator + fileItem.getName();
			File file = new File(path);

			log.info("Ruta en el servidor: " + file.getAbsolutePath());
			try {
				fileItem.write(file);
			} catch (Exception e) {
				log.error(e.getMessage());
				return;
			}
			log.info(fileItem.getName() + " ...subido exitosamente");

			try {
				String lineUsernameVacio = IOAlmacen.verifyDataFromFile(file, path);

				if (!IOAlmacen.verifyFile(file, path)) {
					msg = "El archivo ingresado no es valido";
					log.error("El archivo ingresado no es valido");
					flag = false;
				} else if (!IOAlmacen.isEmptyLine(file, path)) {
					msg = "La linea " + IOAlmacen.getEmptyLine(file, path)
							+ " del archivo ingresado, esta vacia. Favor de corregir";
					log.error("La linea " + IOAlmacen.getEmptyLine(file, path)
							+ " del archivo ingresado, esta vacia. Favor de corregir");
					flag = false;

				} else if (lineUsernameVacio != null) {
					msg = "La linea " + lineUsernameVacio
							+ "] del archivo ingresado, contiene un formato no válido. No se harán cambios en los registros de usuario.";
					log.error("La linea " + lineUsernameVacio
							+ "] del archivo ingresado, contiene un formato no válido (username o password vacío). No se harán cambios en los registros de usuario.");
					flag = false;
				} else {
					log.info("Character Encoding:  " + IOAlmacen.getEncoding(path).toUpperCase());
					asesoresFromFile.addAll(IOAlmacen.getUsersFile(file, path));
					flag = true;
				}
			} catch (Exception e) {
				log.error(e.getMessage());
				return;
			} finally {

			}
		}
		if (flag == true) {
			// Borra relacion usuario-almacen
			try {
				useralmacenDAO.deleteUserAlmacenByList();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			// Borra usuarios tipo asesor
			try {
				usersDAO.deleteUsersList();
			} catch (Exception e) {
				log.error(e.getMessage());
				return;
			}

			List<String> usernameExist = new ArrayList<>();
			List<Asesor> asesoresList = new ArrayList<>();

			for (Asesor asesor : asesoresFromFile) {
				Usuario usuario = new Usuario();

				if (asesor.getUsername().equals("") || asesor.getUsername() == null) {
					log.info("Salto al asesor " + asesor + " por valor username vacio:  username["
							+ asesor.getUsername() + "]   password[" + asesor.getPasswd() + "]");
				} else if (usernameExist.contains(asesor.getUsername())) {
					log.info("Salto a asesor porque ya existe:  username[" + asesor.getUsername() + "]   password["
							+ asesor.getPasswd() + "]" + "   permisos" + asesor.getCaracteres());
				} else if (asesor.getUsername() != null) {
					usuario.setUsername(asesor.getUsername());
					usuario.setName(asesor.getName());
					usuario.setPassword(Cripto.getSha256(asesor.getPasswd()));
					usuario.setTipousuario(asesor.getTipousuario());
					usernameExist.add(asesor.getUsername());
					listaDeUsuarios.add(usuario);
					asesoresList.add(asesor);
				}
			}
			// Guarda usuarios asesores a bd
			try {
				usersDAO.altaUsuarioFromList(listaDeUsuarios);
			} catch (Exception e) {
				log.error(e.getMessage());
				return;
			}

			try {
				// Crea las relaciones usuario-almacen
				for (Asesor asesor : asesoresList) {
					LinkedHashSet<Almacen> listaDeAlmacenes = useralmacenDAO.getRelacionUserAlmacen(asesor,
							almacenDAO.getAlmacenes());
					if (listaDeAlmacenes.isEmpty()) {
						log.info("El Asesor   username[" + asesor.getUsername()
								+ "]   no tiene almacenes relacionados ");
					} else {
						for (Almacen almacen : listaDeAlmacenes) {
							Usuario usuarioAsesor = new Usuario(asesor.getUsername(), asesor.getTipousuario());
							usuarioAsesor.setPassword(asesor.getPasswd());
							log.info("Asesor  username[" + asesor.getUsername() + "]    ::   Almacen"
									+ listaDeAlmacenes.toString());
							useralmacenDAO.insert(almacen, usuarioAsesor);
						}
					}
				}
				msg = "Los asesores han sido actualizados exitosamente";
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {

			}
		}

		if (msg.equals("")) {
			msg = "Ocurri� un problema. Consulte archivos log del sistema.";
		}

		response.setContentType("text/plain");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(msg);
	}
}