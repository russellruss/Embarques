package mx.trillas.seguimientoembarques.persitence.dao;

import java.util.List;

import mx.trillas.seguimientoembarques.persitence.pojos.Almacen;
import mx.trillas.seguimientoembarques.persitence.pojos.Usuario;

public abstract interface AlmacenDAO {
	public List<Almacen> getAlmacenes() throws Exception;

	public List<Almacen> getAlmacenesOfUser(Usuario user) throws Exception;

	public Almacen getByClave(int clave) throws Exception;

	public List<String> getAllAlmacenesNames() throws Exception;

	public void insert(Almacen almacen) throws Exception;

	public int getNextID() throws Exception;
	
}
