package mx.trillas.seguimientoembarques.persitence.pojos;
// Generated 22/06/2016 03:58:43 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * UserAlmacen generated by hbm2java
 */
public class UserAlmacen  implements java.io.Serializable {


     private Integer id;
     private Almacen almacen;
     private Usuario usuario;
     private Date modificacion;
     private Date creacion;

    public UserAlmacen() {
    }

	
    public UserAlmacen(Almacen almacen, Usuario usuario) {
        this.almacen = almacen;
        this.usuario = usuario;
    }
    public UserAlmacen(Almacen almacen, Usuario usuario, Date modificacion, Date creacion) {
       this.almacen = almacen;
       this.usuario = usuario;
       this.modificacion = modificacion;
       this.creacion = creacion;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Almacen getAlmacen() {
        return this.almacen;
    }
    
    public void setAlmacen(Almacen almacen) {
        this.almacen = almacen;
    }
    public Usuario getUsuario() {
        return this.usuario;
    }
    
    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
    public Date getModificacion() {
        return this.modificacion;
    }
    
    public void setModificacion(Date modificacion) {
        this.modificacion = modificacion;
    }
    public Date getCreacion() {
        return this.creacion;
    }
    
    public void setCreacion(Date creacion) {
        this.creacion = creacion;
    }




}


