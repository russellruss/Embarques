package mx.trillas.seguimientoembarques.persitence.dao;

import mx.trillas.seguimientoembarques.persitence.pojos.Tipousuario;

public abstract interface TipousuarioDAO {
	public Tipousuario getTipousuarioAdministrador() throws Exception;

	public Tipousuario getTipousuarioAsesor() throws Exception;
}
