package mx.trillas.seguimientoembarques.persitence.pojos;
// Generated 22/06/2016 01:50:26 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Almacen generated by hbm2java
 */
public class Almacen  implements java.io.Serializable {


     private int clave;
     private String nombre;
     private String seriefacturacion;
     private String seriedevolucion;
     private String seriecredito;
     private String seriesimple;
     private Character caracter;
     private Set userAlmacens = new HashSet(0);

    public Almacen() {
    }

	
    public Almacen(int clave, String nombre) {
        this.clave = clave;
        this.nombre = nombre;
    }
    public Almacen(int clave, String nombre, String seriefacturacion, String seriedevolucion, String seriecredito, String seriesimple, Character caracter, Set userAlmacens) {
       this.clave = clave;
       this.nombre = nombre;
       this.seriefacturacion = seriefacturacion;
       this.seriedevolucion = seriedevolucion;
       this.seriecredito = seriecredito;
       this.seriesimple = seriesimple;
       this.caracter = caracter;
       this.userAlmacens = userAlmacens;
    }
   
    public int getClave() {
        return this.clave;
    }
    
    public void setClave(int clave) {
        this.clave = clave;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getSeriefacturacion() {
        return this.seriefacturacion;
    }
    
    public void setSeriefacturacion(String seriefacturacion) {
        this.seriefacturacion = seriefacturacion;
    }
    public String getSeriedevolucion() {
        return this.seriedevolucion;
    }
    
    public void setSeriedevolucion(String seriedevolucion) {
        this.seriedevolucion = seriedevolucion;
    }
    public String getSeriecredito() {
        return this.seriecredito;
    }
    
    public void setSeriecredito(String seriecredito) {
        this.seriecredito = seriecredito;
    }
    public String getSeriesimple() {
        return this.seriesimple;
    }
    
    public void setSeriesimple(String seriesimple) {
        this.seriesimple = seriesimple;
    }
    public Character getCaracter() {
        return this.caracter;
    }
    
    public void setCaracter(Character caracter) {
        this.caracter = caracter;
    }
    public Set getUserAlmacens() {
        return this.userAlmacens;
    }
    
    public void setUserAlmacens(Set userAlmacens) {
        this.userAlmacens = userAlmacens;
    }




}


