package mx.trillas.seguimientoembarques.util;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

public class ParseFile {

	private static Logger logger = Logger.getLogger(ParseFile.class);

	public static List<Map<?, ?>> parse(Path path, String encode, String[] arregloClaves, int[] arregloPosiciones) {
		List<String> stringsList = pathToStringsList(path, encode);
		List<Map<?, ?>> contenido = new ArrayList<Map<?, ?>>();
		for (String string : stringsList) {
			Map<String, String> arrayContent = parseLineToArrayContent(string, arregloClaves, arregloPosiciones);
			if (arrayContent.get("SERIE") != null && !arrayContent.get("SERIE").equals(""))
				contenido.add(arrayContent);
			else
				logger.warn("sin serie: "+ arrayContent.toString());
		}
		return contenido;
	}

	private static Map<String, String> parseLineToArrayContent(String line, String[] arregloClaves,
			int[] arregloPosiciones) {
		if (arregloClaves.length != arregloPosiciones.length) {
			System.out.println("La longitud de los arreglos no coincide");
			return null;
		}
		Map<String, String> contenido = new Hashtable<>();
		for (int i = 0; i < arregloPosiciones.length; i++) {
			int inicioPosicion = arregloPosiciones[i] - 1;
			int finPosicion;
			if ((i + 1) == arregloPosiciones.length) {
				finPosicion = line.length();
			} else {
				finPosicion = arregloPosiciones[i + 1] - 1;
			}

			String cont = "";
			try {
				cont = line.substring(inicioPosicion, finPosicion);
			} catch (StringIndexOutOfBoundsException e) {
				logger.warn(e.getMessage());
				break;
			}

			cont = cont.trim();
			contenido.put(arregloClaves[i], cont);
		}
		return contenido;
	}

	private static List<String> pathToStringsList(Path path, String encode) {
		BufferedReader br = null;
		InputStreamReader isr = null;
		FileInputStream fis = null;
		List<String> listString = new ArrayList<>();
		try {
			fis = new FileInputStream(path.toFile());
			isr = new InputStreamReader(fis, encode);
			br = new BufferedReader(isr);

			String str;

			while ((str = br.readLine()) != null) {
				listString.add(str);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (br != null)
				try {
					br.close();
				} catch (IOException e) {
				}
			if (isr != null)
				try {
					isr.close();
				} catch (IOException e) {
				}
			if (fis != null)
				try {
					fis.close();
				} catch (IOException e) {
				}
		}
		return listString;
	}
}