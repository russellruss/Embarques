package mx.trillas.seguimientoembarques.persitence.pojos;
// Generated 16/05/2016 10:04:39 AM by Hibernate Tools 4.3.1



/**
 * Generales generated by hbm2java
 */
public class Generales  implements java.io.Serializable {

	public static enum keyactions {
		ULTIMAACTUALIZACIONDB,
		ACTUALIZACIONUSUARIOSARCHIVO,
	}



     private Integer idgenerales;
     private String keyaction;
     private String dato;

    public Generales() {
    }

    public Generales(String keyaction, String dato) {
       this.keyaction = keyaction;
       this.dato = dato;
    }
   
    public Integer getIdgenerales() {
        return this.idgenerales;
    }
    
    public void setIdgenerales(Integer idgenerales) {
        this.idgenerales = idgenerales;
    }
    public String getKeyaction() {
        return this.keyaction;
    }
    
    public void setKeyaction(String keyaction) {
        this.keyaction = keyaction;
    }
    public String getDato() {
        return this.dato;
    }
    
    public void setDato(String dato) {
        this.dato = dato;
    }




}

