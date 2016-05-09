package mx.trillas.seguimientoembarques.persitence.dao;

import mx.trillas.seguimientoembarques.persitence.pojos.Tipousuario;

public abstract interface TipousuarioDAO {

	public enum TIPOS_USUARIO {
		TIPOUSUARIO_ADMINISTRADOR("administrador"), TIPOUSUARIO_ASESOR("asesor"), TIPOUSUARIO_CONSULTOR(
				"consultor");
		private String tipo;

		TIPOS_USUARIO(String tipo) {
			this.tipo = tipo;
		}

		public String getString() {
			return this.tipo;
		}
	}

	public Tipousuario getTipousuarioAdministrador() throws Exception;

	public Tipousuario getTipousuarioAsesor() throws Exception;
	
	public Tipousuario getTipousuarioConultor() throws Exception;
}
