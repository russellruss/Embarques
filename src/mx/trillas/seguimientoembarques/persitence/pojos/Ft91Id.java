package mx.trillas.seguimientoembarques.persitence.pojos;
// Generated 22/06/2016 01:50:26 PM by Hibernate Tools 4.3.1



/**
 * Ft91Id generated by hbm2java
 */
public class Ft91Id  implements java.io.Serializable {


     private Integer ndoc;
     private String serie;
     private Integer tdoc;

    public Ft91Id() {
    }

    public Ft91Id(Integer ndoc, String serie, Integer tdoc) {
       this.ndoc = ndoc;
       this.serie = serie;
       this.tdoc = tdoc;
    }
   
    public Integer getNdoc() {
        return this.ndoc;
    }
    
    public void setNdoc(Integer ndoc) {
        this.ndoc = ndoc;
    }
    public String getSerie() {
        return this.serie;
    }
    
    public void setSerie(String serie) {
        this.serie = serie;
    }
    public Integer getTdoc() {
        return this.tdoc;
    }
    
    public void setTdoc(Integer tdoc) {
        this.tdoc = tdoc;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof Ft91Id) ) return false;
		 Ft91Id castOther = ( Ft91Id ) other; 
         
		 return (this.getNdoc()==castOther.getNdoc())
 && ( (this.getSerie()==castOther.getSerie()) || ( this.getSerie()!=null && castOther.getSerie()!=null && this.getSerie().equals(castOther.getSerie()) ) )
 && (this.getTdoc()==castOther.getTdoc());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getNdoc();
         result = 37 * result + ( getSerie() == null ? 0 : this.getSerie().hashCode() );
         result = 37 * result + this.getTdoc();
         return result;
   }   


}


