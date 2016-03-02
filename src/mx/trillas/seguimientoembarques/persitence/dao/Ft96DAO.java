package mx.trillas.seguimientoembarques.persitence.dao;

import java.util.List;

import mx.trillas.seguimientoembarques.persitence.pojos.Ft96;

public abstract interface Ft96DAO {
	public Ft96 getFt96(String serie, Integer folio) throws Exception;

	public List<String> getAllDistinctRSOCF() throws Exception;
	
	public void deleteAll() throws Exception;
}
