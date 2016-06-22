package mx.trillas.seguimientoembarques.persitence.dao;

import java.util.LinkedHashSet;
import java.util.List;

import mx.trillas.seguimientoembarques.persitence.pojos.Almacen;
import mx.trillas.seguimientoembarques.persitence.pojos.UserAlmacen;
import mx.trillas.seguimientoembarques.persitence.pojos.Usuario;
import mx.trillas.seguimientoembarques.util.AsesorAux;

public interface UserAlmacenDAO {
	public void insert(Almacen almacen, Usuario usuario) throws Exception;

	public UserAlmacen getByUserAndAlmacen(Almacen almacen, Usuario usuario)
			throws Exception;

	public void delete(UserAlmacen userAlmacen) throws Exception;
	
	public List<UserAlmacen> getUsuariosAsesoresList() throws Exception;
	
	public void deleteUserAlmacenByList() throws Exception;
	
	public LinkedHashSet<Almacen> getRelacionUserAlmacen(AsesorAux asesor, List<Almacen> listaDeAlmacenes) throws Exception;
}
