package mx.trillas.seguimientoembarques.persitence.dao;

import java.util.List;

import mx.trillas.seguimientoembarques.persitence.pojos.Usuario;

public abstract interface UserDAO {
	public Usuario getUser(String username, String password) throws Exception;

	public void altaUsuario(Usuario usuario) throws Exception;

	public boolean usernameExists(String username) throws Exception;

	public List<Usuario> getUsuariosAsesores() throws Exception;

	public List<Usuario> getAllUsers() throws Exception;

	public Usuario getByUsername(String username) throws Exception;
	
	public void deleteUsersList() throws Exception;
	
	public void altaUsuarioFromList(List<Usuario> list) throws Exception;
}
