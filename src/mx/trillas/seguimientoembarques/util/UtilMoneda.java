package mx.trillas.seguimientoembarques.util;

import java.math.BigDecimal;

public class UtilMoneda {
	public static Double reduceDosDecimales(Double valor) {
		if (valor == null)
			return null;
		valor = valor / 100d;
		return valor;
	}

	public static BigDecimal reduceDosDecimales(BigDecimal valor) {
		if (valor == null)
			return null;
		valor = valor.divide(new BigDecimal(100));
		return valor;
	}
	
	public static Double reduceCuatroDecimales(Double valor) {
		if (valor == null)
			return null;
		valor = valor / 100d;
		return valor;
	}

	public static BigDecimal reduceCuatroDecimales(BigDecimal valor) {
		if (valor == null)
			return null;
		valor = valor.divide(new BigDecimal(100));
		return valor;
	}
}
