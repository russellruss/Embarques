package mx.trillas.seguimientoembarques;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.file.Path;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import mx.trillas.seguimientoembarques.persitence.HibernateUtil;
import mx.trillas.seguimientoembarques.persitence.pojos.Ft91;
import mx.trillas.seguimientoembarques.persitence.pojos.Ft91Id;
import mx.trillas.seguimientoembarques.persitence.pojos.Ft96;
import mx.trillas.seguimientoembarques.persitence.pojos.Ft96Id;
import mx.trillas.seguimientoembarques.util.ParseFile;

import org.hibernate.Session;
import org.hibernate.Transaction;

public class SeguimientoEmbarques {
	private static SimpleDateFormat SDFDATE = new SimpleDateFormat("yyyyMMdd");
	private static SimpleDateFormat SDFHOUR = new SimpleDateFormat("HHmmss");
	private String[] arregloClaves;
	private int[] arregloPosiciones;

	public SeguimientoEmbarques() {

	}

	private void mapSeter(Set<?> keyset, Map<?, ?> map, String bandera,
			Object ft, Object ftId) {

		for (Object keyObj : keyset) {
			if (keyObj != null && keyObj instanceof String) {
				String key = (String) keyObj;
				Object valueObj = map.get(key);

				String returnType = null;

				String getter = "get" + key.substring(0, 1).toUpperCase()
						+ key.substring(1, key.length()).toLowerCase();

				// if(getter.equals("getNdoc")){
				// System.out.println();
				// }

				Method getterMethod;
				Class<?> returntype;

				try {
					if (bandera == "FT91_MAP.properties") {
						getterMethod = Ft91.class.getMethod(getter);
						returntype = getterMethod.getReturnType();
						returnType = returntype.getName();
					} else {
						getterMethod = Ft96.class.getMethod(getter);
						returntype = getterMethod.getReturnType();
						returnType = returntype.getName();
					}
				} catch (NoSuchMethodException e) {
					try {
						if (bandera == "FT91_MAP.properties") {
							getterMethod = Ft91Id.class.getMethod(getter);
							returntype = getterMethod.getReturnType();
							returnType = returntype.getName();
						} else {
							getterMethod = Ft96Id.class.getMethod(getter);
							returntype = getterMethod.getReturnType();
							returnType = returntype.getName();
						}

					} catch (NoSuchMethodException | SecurityException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
				} catch (SecurityException e2) {
					// TODO Auto-generated catch block
					e2.printStackTrace();
				}
				seter(ft, ftId, key, valueObj, returnType);
			}
		}

	}

	public void parseFT96(Path path, String bandera) {

		loadArreglos(bandera);
		String encodeCP850 = "CP850";

		List<Map<?, ?>> fileContent = ParseFile.parse(path, encodeCP850,
				arregloClaves, arregloPosiciones);

		List<Ft96> listFt96 = new ArrayList<>();

		for (Map<?, ?> map : fileContent) {
			Set<?> keyset = map.keySet();

			Ft96 ft96 = new Ft96();
			Ft96Id ftId96 = new Ft96Id();

			mapSeter(keyset, map, bandera, ft96, ftId96);

			ft96.setId(ftId96);
			listFt96.add(ft96);
		}
		Session session = null;
		Transaction transaction = null;

		try {
			session = HibernateUtil.getSessionFactory().openSession();
			transaction = session.getTransaction();
			transaction.begin();
			for (Ft96 ft96 : listFt96)
				session.saveOrUpdate(ft96);
			transaction.commit();
		} catch (Exception ex) {
			if (transaction != null)
				transaction.rollback();
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}
	}

	public void parseFT91(Path path, String bandera) {

		loadArreglos(bandera);
		String encodeCP850 = "CP850";

		List<Map<?, ?>> fileContent = ParseFile.parse(path, encodeCP850,
				arregloClaves, arregloPosiciones);

		List<Ft91> listFt91 = new ArrayList<>();
		for (Map<?, ?> map : fileContent) {
			Set<?> keyset = map.keySet();
			Ft91 ft91 = new Ft91();
			Ft91Id ft91Id = new Ft91Id();

			mapSeter(keyset, map, bandera, ft91, ft91Id);
			ft91.setId(ft91Id);
			if (!listFt91.contains(ft91))
				listFt91.add(ft91);
			else
				System.out.println("contenido");
		}

		Session session = null;
		Transaction transaction = null;
		try {
			session = HibernateUtil.getSessionFactory().openSession();
			transaction = session.getTransaction();
			transaction.begin();
			for (Ft91 ft91 : listFt91)
				session.saveOrUpdate(ft91);
			transaction.commit();
		} catch (Exception ex) {
			if (transaction != null)
				transaction.rollback();
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		}

	}

	private void seter(Object objectOfClass, Object objectOfKey, String key,
			Object valueObj, String returnType) {
		Object value = null;

		if (valueObj != null && returnType.equals("java.lang.Double")) {
			String str = (String) valueObj;
			if (!str.equals("")) {
				Double valueDou = new Double(str);
				if (valueDou.doubleValue() == new Double(0).doubleValue()) {
					value = null;
				} else {
					str = new StringBuilder(str).insert(str.length() - 2, ".")
							.toString();
					Double number = Double.parseDouble(str);
					value = number;
				}
			} else {
				value = null;
			}
		}

		if (valueObj != null && returnType.equals("java.lang.Integer")) {
			String str = (String) valueObj;
			if (!str.equals("")) {
				value = new Integer((String) valueObj);
			} else {
				value = null;
			}
		}

		if (valueObj != null && returnType.equals("int")) {
			String str = (String) valueObj;
			if (!str.equals("")) {
				Integer valueInt = new Integer(str);
				if (valueInt.intValue() == new Integer(0).intValue()) {
					value = null;
				} else {
					value = new Integer((String) valueObj);
				}
			} else {
				value = null;
			}
		}

		if (valueObj != null && returnType.equals("java.lang.String")) {
			String valueStr = (String) valueObj;
			valueStr = valueStr.trim();
			if (valueStr.equals("")) {
				value = null;
			} else {
				value = (String) valueObj;
			}
		}

		if (valueObj != null && returnType.equals("java.util.Date")) {
			String valueStr = (String) valueObj;

			if (valueStr != null && valueStr.equals("00000000")) {
				valueStr = null;
			}
			if (valueStr != null && valueStr.equals("000000")) {
				valueStr = null;
			}

			if (valueStr != null && valueStr.length() == 8) {
				try {
					value = SDFDATE.parseObject(valueStr);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (valueStr != null && valueStr.length() == 6) {
				try {
					value = SDFHOUR.parseObject(valueStr);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}

		if (value == null) {
			return;
		}

		String setter = "set" + key.substring(0, 1).toUpperCase()
				+ key.substring(1, key.length()).toLowerCase();
		Method method;
		try {
			method = objectOfClass.getClass().getMethod(setter,
					value.getClass());
			method.invoke(objectOfClass, value);
		} catch (NoSuchMethodException e) {
			try {
				method = objectOfKey.getClass().getMethod(setter,
						value.getClass());
				method.invoke(objectOfKey, value);
			} catch (NoSuchMethodException | SecurityException
					| IllegalAccessException | IllegalArgumentException
					| InvocationTargetException e1) {
				e1.printStackTrace();
			}
		} catch (SecurityException | IllegalAccessException
				| IllegalArgumentException | InvocationTargetException
				| NullPointerException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void loadArreglos(String bandera) {
		BufferedReader br = null;
		InputStreamReader isr = null;
		InputStream is = null;
		List<String> lines = new ArrayList<>();
		try {
			is = Thread.currentThread().getContextClassLoader()
					.getResourceAsStream(bandera);
			isr = new InputStreamReader(is, "UTF8");
			br = new BufferedReader(isr);

			String str;

			while ((str = br.readLine()) != null) {
				lines.add(str);
			}
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
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
			if (is != null)
				try {
					is.close();
				} catch (IOException e) {
				}
		}
		arregloClaves = new String[lines.size()];
		arregloPosiciones = new int[lines.size()];
		for (int i = 0; i < lines.size(); i++) {
			String[] arr = lines.get(i).split("\\=");
			String clave = arr[0];
			int valor = new Integer(arr[1]).intValue();
			arregloClaves[i] = clave;
			arregloPosiciones[i] = valor;
		}
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		new SeguimientoEmbarques();
	}

}
