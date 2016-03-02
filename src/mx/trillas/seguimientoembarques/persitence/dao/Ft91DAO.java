package mx.trillas.seguimientoembarques.persitence.dao;

import java.util.List;

import mx.trillas.seguimientoembarques.persitence.pojos.Ft91;

public abstract interface Ft91DAO {
	public void save(Ft91 ft91) throws Exception;

	public List<Ft91> getTraspasos(List<Integer> idsAlmacenes) throws Exception;

	public Ft91 getFt91(Integer ndoc, String serie, Integer tdoc)
			throws Exception;

	public void deleteAll() throws Exception;
}
