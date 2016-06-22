package mx.trillas.seguimientoembarques.persitence.pojos;
// Generated 22/06/2016 11:19:49 AM by Hibernate Tools 4.3.1



/**
 * Ft97Id generated by hbm2java
 */
public class Ft97Id  implements java.io.Serializable {


     private String serie;
     private int nudoc;
     private int noreg;
     private int linea;
     private int codbar;

    public Ft97Id() {
    }

    public Ft97Id(String serie, int nudoc, int noreg, int linea, int codbar) {
       this.serie = serie;
       this.nudoc = nudoc;
       this.noreg = noreg;
       this.linea = linea;
       this.codbar = codbar;
    }
   
    public String getSerie() {
        return this.serie;
    }
    
    public void setSerie(String serie) {
        this.serie = serie;
    }
    public int getNudoc() {
        return this.nudoc;
    }
    
    public void setNudoc(int nudoc) {
        this.nudoc = nudoc;
    }
    public int getNoreg() {
        return this.noreg;
    }
    
    public void setNoreg(int noreg) {
        this.noreg = noreg;
    }
    public int getLinea() {
        return this.linea;
    }
    
    public void setLinea(int linea) {
        this.linea = linea;
    }
    public int getCodbar() {
        return this.codbar;
    }
    
    public void setCodbar(int codbar) {
        this.codbar = codbar;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof Ft97Id) ) return false;
		 Ft97Id castOther = ( Ft97Id ) other; 
         
		 return ( (this.getSerie()==castOther.getSerie()) || ( this.getSerie()!=null && castOther.getSerie()!=null && this.getSerie().equals(castOther.getSerie()) ) )
 && (this.getNudoc()==castOther.getNudoc())
 && (this.getNoreg()==castOther.getNoreg())
 && (this.getLinea()==castOther.getLinea())
 && (this.getCodbar()==castOther.getCodbar());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + ( getSerie() == null ? 0 : this.getSerie().hashCode() );
         result = 37 * result + this.getNudoc();
         result = 37 * result + this.getNoreg();
         result = 37 * result + this.getLinea();
         result = 37 * result + this.getCodbar();
         return result;
   }   


}


