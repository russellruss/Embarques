package mx.trillas.seguimientoembarques;

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

import mx.trillas.seguimientoembarques.persitence.dao.TipousuarioDAO;
import mx.trillas.seguimientoembarques.persitence.impl.TipousuarioDAODBImpl;

import org.apache.log4j.Logger;

public class IOAlmacen {
	private static Logger log = Logger.getLogger(IOAlmacen.class.getName());
	private static TipousuarioDAO tipousuarioDAO = new TipousuarioDAODBImpl();

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

	public static boolean isStruct(File file, String path) throws Exception,
			IOException {

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

	public static List<Asesor> getUsersFile(File file, String path)
			throws Exception, IOException {

		FileInputStream fis = null;
		BufferedReader br = null;
		InputStreamReader isr = null;

		String line = null;
		List<String> caracter = null;
		List<Asesor> list = new ArrayList<>();

		try {
			fis = new FileInputStream(file);
			isr = new InputStreamReader(fis, "CP850");
			br = new BufferedReader(isr);

			while ((line = br.readLine()) != null) {
				Asesor asesor = new Asesor();
				String[] asesorSplit = line.split("\\,");
				asesor.setUsername(asesorSplit[0]);
				asesor.setPasswd(asesorSplit[1]);
				asesor.setTipousuario(tipousuarioDAO.getTipousuarioAsesor());

				caracter = new ArrayList<>();

				for (int i = 3; i < asesorSplit.length; i++) {
					caracter.add(asesorSplit[i]);
				}
				asesor.setCaracteres(caracter);
				list.add(asesor);
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

	public static boolean isTextFile(File file) {
		String fileName = file.getName();
		String ext = fileName.substring(fileName.lastIndexOf(".") + 1);

		if (ext.toLowerCase().equals("txt")) {
			return true;
		}
		return false;
	}

	public static boolean isEmptyFile(String path)
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

	public static String getEncoding(String path) throws Exception {
		FileInputStream fis = null;
		InputStreamReader isr = null;
		String s;

		try {
			fis = new FileInputStream(path);
			isr = new InputStreamReader(fis);
			s = isr.getEncoding();
		} catch (Exception e) {
			log.error("\nEl Stream se encuentra cerrado" + "\n"
					+ e.getMessage());
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