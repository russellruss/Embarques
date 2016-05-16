package mx.trillas.seguimientoembarques.persitence.pojos;
// Generated 16/05/2016 10:04:39 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Usuario generated by hbm2java
 */
public class Usuario  implements java.io.Serializable {


     private String username;
     private Tipousuario tipousuario;
     private String name;
     private String password;
     private Set userAlmacens = new HashSet(0);

    public Usuario() {
    }

	
    public Usuario(String username, Tipousuario tipousuario, String name) {
        this.username = username;
        this.tipousuario = tipousuario;
        this.name = name;
    }
    public Usuario(String username, Tipousuario tipousuario, String name, String password, Set userAlmacens) {
       this.username = username;
       this.tipousuario = tipousuario;
       this.name = name;
       this.password = password;
       this.userAlmacens = userAlmacens;
    }
   
    public String getUsername() {
        return this.username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }
    public Tipousuario getTipousuario() {
        return this.tipousuario;
    }
    
    public void setTipousuario(Tipousuario tipousuario) {
        this.tipousuario = tipousuario;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public Set getUserAlmacens() {
        return this.userAlmacens;
    }
    
    public void setUserAlmacens(Set userAlmacens) {
        this.userAlmacens = userAlmacens;
    }




}


