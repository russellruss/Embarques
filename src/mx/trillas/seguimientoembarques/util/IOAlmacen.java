package mx.trillas.seguimientoembarques.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import mx.trillas.seguimientoembarques.persitence.dao.TipousuarioDAO;
import mx.trillas.seguimientoembarques.persitence.dao.UserDAO;
import mx.trillas.seguimientoembarques.persitence.factory.ImplFactory;
import mx.trillas.seguimientoembarques.persitence.pojos.Usuario;

public class IOAlmacen {
	private static Logger log = Logger.getLogger(IOAlmacen.class.getName());
	private static TipousuarioDAO tipousuarioDAO = ImplFactory.getTipousuarioDAODBImplImpl();
	private static UserDAO userDAO = ImplFactory.getUserDAODBImplImpl();

	public static boolean verifyFile(File file, String path)
			throws UnsupportedEncodingException, FileNotFoundException,
			IOException {

		if (!isTextFile(file)) {
			log.error("El archivo ingresado no es de tipo texto (.txt). Intentelo nuevamente.");
			return false;
		} else if (isEmptyFile(path)) {
			log.error("El archivo esta vacio. Intentelo nuevamente");
			return false;
		} else {
			return true;
		}
	}

	public static boolean isAcceptedSize(File file) {
		long bytes = file.length();
		double kilobytes = (bytes / 1024l);
		double megabytes = (kilobytes / 1024l);
		if (megabytes <= 2l) {
			return true;
		}
		return false;
	}

	public static boolean isEmptyLine(File file, String path)
			throws IOException {

		String line = null;
		FileInputStream fis = null;
		BufferedReader br = null;
		InputStreamReader isr = null;

		try {
			fis = new FileInputStream(file);
			isr = new InputStreamReader(fis, "CP850");
			br = new BufferedReader(isr);
			while ((line = br.readLine()) != null) {

				String[] asesorSplit = line.split("\\,");
				if (asesorSplit.length <= 1) {
					return false;
				}
			}
		} catch (UnsupportedEncodingException e) {
			throw e;
		} catch (FileNotFoundException e) {
			throw e;
		} finally {
			if (br != null)
				br.close();
			if (isr != null)
				isr.close();
			if (fis != null)
				fis.close();
		}
		return true;
	}

	public static String getEmptyLine(File file, String path)
			throws IOException {

		String line = null;
		FileInputStream fis = null;
		BufferedReader br = null;
		InputStreamReader isr = null;
		int counter = 1;
		String msg = "";

		try {
			fis = new FileInputStream(file);
			isr = new InputStreamReader(fis, "CP850");
			br = new BufferedReader(isr);
			while ((line = br.readLine()) != null) {

				String[] asesorSplit = line.split("\\,");
				if (asesorSplit.length <= 1) {
					msg = counter + "";
					break;
				}
				counter++;
			}
		} catch (UnsupportedEncodingException e) {
			throw e;
		} catch (FileNotFoundException e) {
			throw e;
		} finally {
			if (br != null)
				br.close();
			if (isr != null)
				isr.close();
			if (fis != null)
				fis.close();
		}
		return msg;
	}

	public static String verifyRegexFromFile(File file, String path)
			throws Exception, IOException {

		FileInputStream fis = null;
		BufferedReader br = null;
		InputStreamReader isr = null;

		String line = null;
		int counter = 1;
		try {
			fis = new FileInputStream(file);
			isr = new InputStreamReader(fis, "CP850");
			br = new BufferedReader(isr);

			while ((line = br.readLine()) != null) {
				if (!Util.containLineExpression(line)
						|| Util.containSpaceExpression(line)) {
					return counter + ": [" + line;
				}
				counter++;
			}
		} catch (UnsupportedEncodingException e) {
			throw e;
		} catch (FileNotFoundException e) {
			throw e;
		} finally {
			if (br != null)
				br.close();
			if (isr != null)
				isr.close();
			if (fis != null)
				fis.close();
		}
		return null;
	}

	public static String verifyDataFromFile(File file, String path)
			throws Exception, IOException {

		FileInputStream fis = null;
		BufferedReader br = null;
		InputStreamReader isr = null;

		String line = null;
		AsesorAux asesor = null;
		int counter = 1;
		try {
			fis = new FileInputStream(file);
			isr = new InputStreamReader(fis, "CP850");
			br = new BufferedReader(isr);

			while ((line = br.readLine()) != null) {
				asesor = new AsesorAux();
				String[] asesorSplit = line.split("\\,");

				if (asesorSplit.length >= 1 && asesorSplit[0] != null
						&& !asesorSplit[0].isEmpty()) {
					asesor.setName(asesorSplit[0].trim());
				}
				if (asesorSplit.length >= 1 && asesorSplit[1] != null
						&& !asesorSplit[1].isEmpty()) {
					asesor.setUsername(asesorSplit[1].trim());
				}
				if (asesorSplit.length >= 1 && asesorSplit[2] != null
						&& !asesorSplit[2].isEmpty()) {
					asesor.setPasswd(asesorSplit[2].trim());
				}

				if (asesor.getUsername() == null
						|| "".equals(asesor.getUsername())) {
					return counter + ": [" + line;
				} else if (asesor.getPasswd() == null
						|| "".equals(asesor.getPasswd())) {
					return counter + ": [" + line;
				}
				counter++;
			}
		} catch (UnsupportedEncodingException e) {
			throw e;
		} catch (FileNotFoundException e) {
			throw e;
		} finally {
			if (br != null)
				br.close();
			if (isr != null)
				isr.close();
			if (fis != null)
				fis.close();
		}
		return null;
	}

	public static List<AsesorAux> getUsersFile(File file, String path)
			throws Exception, IOException {

		FileInputStream fis = null;
		BufferedReader br = null;
		InputStreamReader isr = null;

		String line = null;
		List<String> caracter = null;
		List<AsesorAux> list = new ArrayList<>();

		try {
			fis = new FileInputStream(file);
			isr = new InputStreamReader(fis, "CP850");
			br = new BufferedReader(isr);

			while ((line = br.readLine()) != null) {
				AsesorAux asesor = new AsesorAux();
				String[] asesorSplit = line.split("\\,");
				String lineName = asesorSplit[1];

				Usuario usuario = userDAO.getUser(lineName);

				if (usuario != null
						&& usuario
								.getTipousuario()
								.getTipo()
								.equals(tipousuarioDAO
										.getTipousuarioAdministrador()
										.getTipo())) {
					log.info("Se ignoro al usuario " + usuario
							+ " porque ya existe en bd como administrador");
				} else {
					asesor.setName(asesorSplit[0]);
					asesor.setUsername(asesorSplit[1]);
					asesor.setPasswd(asesorSplit[2]);
					asesor.setTipousuario(tipousuarioDAO.getTipousuarioAsesor());

					caracter = new ArrayList<>();

					for (int i = 3; i < asesorSplit.length; i++) {
						caracter.add(asesorSplit[i]);
					}
					asesor.setCaracteres(caracter);
					list.add(asesor);
				}
			}
		} catch (UnsupportedEncodingException e) {
			throw e;
		} catch (FileNotFoundException e) {
			throw e;
		} finally {
			if (br != null)
				br.close();
			if (isr != null)
				isr.close();
			if (fis != null)
				fis.close();
		}
		return list;
	}

	private static boolean isTextFile(File file) {
		String fileName = file.getName();
		String ext = fileName.substring(fileName.lastIndexOf(".") + 1);

		if (ext.toLowerCase().equals("txt")) {
			return true;
		}
		return false;
	}

	private static boolean isEmptyFile(String path)
			throws FileNotFoundException, IOException {
		BufferedReader br = null;
		try {
			br = new BufferedReader(new FileReader(path));
			if (br.readLine() == null) {
				return true;
			}
		} catch (FileNotFoundException e) {
			throw e;
		} finally {
			if (br != null)
				br.close();
		}
		return false;
	}

	public static String getEncoding(String path) throws IOException {
		FileInputStream fis = null;
		InputStreamReader isr = null;
		String s;

		try {
			fis = new FileInputStream(path);
			isr = new InputStreamReader(fis);
			s = isr.getEncoding();
		} catch (FileNotFoundException e) {
			throw e;
		} finally {
			if (fis != null)
				fis.close();
			if (isr != null)
				isr.close();
		}
		return s;
	}
}