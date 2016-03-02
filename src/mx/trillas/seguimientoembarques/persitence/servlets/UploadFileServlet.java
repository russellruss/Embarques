package mx.trillas.seguimientoembarques.persitence.servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.log4j.Logger;

import com.google.gson.Gson;

import mx.trillas.seguimientoembarques.Asesor;
import mx.trillas.seguimientoembarques.IOAlmacen;
import mx.trillas.seguimientoembarques.persitence.dao.GeneralesDAO;
import mx.trillas.seguimientoembarques.persitence.impl.AlmacenDAODBImpl;
import mx.trillas.seguimientoembarques.persitence.impl.GeneralesDAODBImpl;
import mx.trillas.seguimientoembarques.persitence.impl.UserAlmacenDAODBImpl;
import mx.trillas.seguimientoembarques.persitence.impl.UserDAODBImpl;
import mx.trillas.seguimientoembarques.persitence.pojos.Almacen;
import mx.trillas.seguimientoembarques.persitence.pojos.Generales;
import mx.trillas.seguimientoembarques.persitence.pojos.Usuario;
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
	public void init() throws ServletException{
		DiskFileItemFactory fileFactory = new DiskFileItemFactory();
		File filesDir = (File) getServletContext().getAttribute("FILES_DIR_FILE");
		fileFactory.setRepository(filesDir);
		this.uploader = new ServletFileUpload(fileFactory);
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String msg = "";
		boolean flag = false;

		if(!ServletFileUpload.isMultipartContent(request)){
			log.error("Content type no es multipart/form-data");
			throw new ServletException("Content type no es multipart/form-data");
		}
		try {
			List<Asesor> asesoresFromFile = new ArrayList<>();
			List<Usuario> listaDeUsuarios = new ArrayList<>();
			List<FileItem> fileItemsList = uploader.parseRequest(request);
			Iterator<FileItem> fileItemsIterator = fileItemsList.iterator();
			while(fileItemsIterator.hasNext()){
				FileItem fileItem = fileItemsIterator.next();
				String path = request.getServletContext().getAttribute("FILES_DIR")+File.separator+fileItem.getName();
				File file = new File(path);
				
				log.info("Ruta en el servidor: " + file.getAbsolutePath());
				fileItem.write(file);
				log.info(fileItem.getName() + " ...subido exitosamente");
				
				if (!IOAlmacen.verifyFile(file, path)){
					msg = "El archivo no es valido";
					log.error("El archivo no es valido");
					flag = false;
				} else if (!IOAlmacen.isStruct(file, path)) {
					msg = "Una de las lineas del archivo no contiene la estructura sugerida";
					log.error("Una de las lineas del archivo no contiene la estructura sugerida");
					flag = false;
				} else {
					log.info("Character Encoding:  " + IOAlmacen.getEncoding(path).toUpperCase());
					asesoresFromFile.addAll(IOAlmacen.getUsersFile(file, path));
					flag = true;
				}
			}
			if (flag == true){
			// Borra relacion usuario-almacen
			useralmacenDAO.deleteUserAlmacenByList();

			// Borra usuarios tipo asesor
			usersDAO.deleteUsersList();
			
			List<String> usernameExist = new ArrayList<>();
			List<Asesor> asesoresList = new ArrayList<>();
			
			for (Asesor asesor : asesoresFromFile){
				Usuario usuario = new Usuario();
				
				if ( asesor.getUsername().equals("") || asesor.getUsername() == null){
					log.info("Salté al asesor " + asesor + " por valor username vacio:  username[" + asesor.getUsername() + "]   password["  + asesor.getPasswd() + "]");
				} else if ( usernameExist.contains(asesor.getUsername())) {
					log.info("Salté a asesor porque ya existe:  username[" + asesor.getUsername() + "]   password["  + asesor.getPasswd() + "]" + "   permisos" + asesor.getCaracteres());
				} else if (asesor.getUsername() != null){
					usuario.setUsername(asesor.getUsername());
					usuario.setPassword(asesor.getPasswd());
					usuario.setTipousuario(asesor.getTipousuario());
					usernameExist.add(asesor.getUsername());
					listaDeUsuarios.add(usuario);
					asesoresList.add(asesor);
				}
			}
				
			// Guarda usuarios asesores a bd
			usersDAO.altaUsuarioFromList(listaDeUsuarios);
			
			// Crea las relaciones usuario-almacen
			for (Asesor asesor : asesoresList) {
				LinkedHashSet<Almacen> listaDeAlmacenes = useralmacenDAO.getRelacionUserAlmacen(asesor, almacenDAO.getAlmacenes());
				if (listaDeAlmacenes.isEmpty()) {
					log.info("El Asesor   username[" + asesor.getUsername() +"]   no tiene almacenes relacionados ");
				}	else {
					for (Almacen almacen : listaDeAlmacenes) {
						Usuario usuarioAsesor = new Usuario(asesor.getUsername(), asesor.getTipousuario());
						usuarioAsesor.setPassword(asesor.getPasswd());
						log.info("Asesor  username[" + asesor.getUsername() + "]    ::   Almacen" + listaDeAlmacenes.toString());
						useralmacenDAO.insert(almacen, usuarioAsesor);
					}
				}
			}
			msg = "Los asesores han sido actualizados exitosamente";
			}
		} catch (FileUploadException e) {
			log.error(e.getMessage());
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		
		response.setContentType("text/plain");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(msg);
	}
}