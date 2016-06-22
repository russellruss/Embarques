package mx.trillas.seguimientoembarques.persitence.dao;

import mx.trillas.seguimientoembarques.persitence.pojos.Generales;

public interface GeneralesDAO {

	public static enum keyactions {
		ULTIMAACTUALIZACIONDB,
		ACTUALIZACIONUSUARIOSARCHIVO,
	}
	public Generales getByKeyaction(GeneralesDAO.keyactions keyaction) throws Exception;

	public void setData(GeneralesDAO.keyactions keyaction, String data) throws Exception;
}
