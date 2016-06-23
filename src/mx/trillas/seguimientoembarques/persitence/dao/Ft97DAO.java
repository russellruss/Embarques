package mx.trillas.seguimientoembarques.persitence.dao;

import java.util.List;

import mx.trillas.seguimientoembarques.persitence.pojos.Ft97;

public abstract interface Ft97DAO {
	public void deleteAll() throws Exception;

	public List<Ft97> getDetailsOf(String serie, Integer nudoc) throws Exception;
}
