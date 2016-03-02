package mx.trillas.seguimientoembarques.persitence.dao;

import mx.trillas.seguimientoembarques.persitence.pojos.Generales;

public interface GeneralesDAO {
	public Generales getByKeyaction(Generales.keyactions keyaction) throws Exception;

	public void setData(Generales.keyactions keyaction, String data) throws Exception;
}
