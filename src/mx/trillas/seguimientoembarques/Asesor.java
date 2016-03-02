package mx.trillas.seguimientoembarques;

import java.util.List;

import mx.trillas.seguimientoembarques.persitence.pojos.Tipousuario;

public class Asesor {
	private String username;
	private String passwd;
	private String name;
	private List<String> caracteres;
	private Tipousuario tipousuario;
	
	public Asesor(){
		
	}

	public Asesor(String username, String passwd, String name, List<String> caracteres, Tipousuario tipousuario) {
		super();
		this.username = username;
		this.passwd = passwd;
		this.name = name;
		this.caracteres = caracteres;
		this.tipousuario = tipousuario;
	}

	public Asesor(String username, String passwd, String name, List<String> caracteres) {
		super();
		this.username = username;
		this.passwd = passwd;
		this.name = name;
		this.caracteres = caracteres;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<String> getCaracteres() {
		return caracteres;
	}

	public void setCaracteres(List<String> caracteres) {
		this.caracteres = caracteres;
	}

	public Tipousuario getTipousuario() {
		return tipousuario;
	}

	public void setTipousuario(Tipousuario tipousuario) {
		this.tipousuario = tipousuario;
	}
}
