package mx.trillas.seguimientoembarques.persitence.pojos;
// Generated 22/06/2016 11:19:49 AM by Hibernate Tools 4.3.1


import java.math.BigDecimal;

/**
 * Ft97 generated by hbm2java
 */
public class Ft97  implements java.io.Serializable {


     private Ft97Id id;
     private String ident;
     private String control;
     private String autit;
     private Integer ed;
     private String cvpen;
     private Integer epend;
     private Integer esurt;
     private String cvpre;
     private BigDecimal plista;
     private BigDecimal pnet;
     private BigDecimal impobn;
     private BigDecimal tipcam;
     private String desca;
     private Integer mone;
     private Integer adest1;
     private String cdest1;
     private Integer rexist;
     private String cvrga;
     private String cvapro;
     private Integer fecham;
     private BigDecimal plisv;
     private Integer acsal1;
     private Integer acsal2;
     private String consig;
     private Integer ncte;
     private BigDecimal piva;
     private BigDecimal impiva;
     private BigDecimal impdes;
     private Integer conoc;
     private BigDecimal dctoa;
     private BigDecimal idesa;
     private String cvest;
     private Integer isbnp;
     private Integer tiptra;
     private Integer subtra;
     private BigDecimal plis4;
     private BigDecimal pnet4;
     private String cnov;
     private String format;
     private Integer perren;
     private String cvpro;
     private String seriepd;
     private Integer folpd;
     private String cvecan;
     private String cveopo;

    public Ft97() {
    }

	
    public Ft97(Ft97Id id) {
        this.id = id;
    }
    public Ft97(Ft97Id id, String ident, String control, String autit, Integer ed, String cvpen, Integer epend, Integer esurt, String cvpre, BigDecimal plista, BigDecimal pnet, BigDecimal impobn, BigDecimal tipcam, String desca, Integer mone, Integer adest1, String cdest1, Integer rexist, String cvrga, String cvapro, Integer fecham, BigDecimal plisv, Integer acsal1, Integer acsal2, String consig, Integer ncte, BigDecimal piva, BigDecimal impiva, BigDecimal impdes, Integer conoc, BigDecimal dctoa, BigDecimal idesa, String cvest, Integer isbnp, Integer tiptra, Integer subtra, BigDecimal plis4, BigDecimal pnet4, String cnov, String format, Integer perren, String cvpro, String seriepd, Integer folpd, String cvecan, String cveopo) {
       this.id = id;
       this.ident = ident;
       this.control = control;
       this.autit = autit;
       this.ed = ed;
       this.cvpen = cvpen;
       this.epend = epend;
       this.esurt = esurt;
       this.cvpre = cvpre;
       this.plista = plista;
       this.pnet = pnet;
       this.impobn = impobn;
       this.tipcam = tipcam;
       this.desca = desca;
       this.mone = mone;
       this.adest1 = adest1;
       this.cdest1 = cdest1;
       this.rexist = rexist;
       this.cvrga = cvrga;
       this.cvapro = cvapro;
       this.fecham = fecham;
       this.plisv = plisv;
       this.acsal1 = acsal1;
       this.acsal2 = acsal2;
       this.consig = consig;
       this.ncte = ncte;
       this.piva = piva;
       this.impiva = impiva;
       this.impdes = impdes;
       this.conoc = conoc;
       this.dctoa = dctoa;
       this.idesa = idesa;
       this.cvest = cvest;
       this.isbnp = isbnp;
       this.tiptra = tiptra;
       this.subtra = subtra;
       this.plis4 = plis4;
       this.pnet4 = pnet4;
       this.cnov = cnov;
       this.format = format;
       this.perren = perren;
       this.cvpro = cvpro;
       this.seriepd = seriepd;
       this.folpd = folpd;
       this.cvecan = cvecan;
       this.cveopo = cveopo;
    }
   
    public Ft97Id getId() {
        return this.id;
    }
    
    public void setId(Ft97Id id) {
        this.id = id;
    }
    public String getIdent() {
        return this.ident;
    }
    
    public void setIdent(String ident) {
        this.ident = ident;
    }
    public String getControl() {
        return this.control;
    }
    
    public void setControl(String control) {
        this.control = control;
    }
    public String getAutit() {
        return this.autit;
    }
    
    public void setAutit(String autit) {
        this.autit = autit;
    }
    public Integer getEd() {
        return this.ed;
    }
    
    public void setEd(Integer ed) {
        this.ed = ed;
    }
    public String getCvpen() {
        return this.cvpen;
    }
    
    public void setCvpen(String cvpen) {
        this.cvpen = cvpen;
    }
    public Integer getEpend() {
        return this.epend;
    }
    
    public void setEpend(Integer epend) {
        this.epend = epend;
    }
    public Integer getEsurt() {
        return this.esurt;
    }
    
    public void setEsurt(Integer esurt) {
        this.esurt = esurt;
    }
    public String getCvpre() {
        return this.cvpre;
    }
    
    public void setCvpre(String cvpre) {
        this.cvpre = cvpre;
    }
    public BigDecimal getPlista() {
        return this.plista;
    }
    
    public void setPlista(BigDecimal plista) {
        this.plista = plista;
    }
    public BigDecimal getPnet() {
        return this.pnet;
    }
    
    public void setPnet(BigDecimal pnet) {
        this.pnet = pnet;
    }
    public BigDecimal getImpobn() {
        return this.impobn;
    }
    
    public void setImpobn(BigDecimal impobn) {
        this.impobn = impobn;
    }
    public BigDecimal getTipcam() {
        return this.tipcam;
    }
    
    public void setTipcam(BigDecimal tipcam) {
        this.tipcam = tipcam;
    }
    public String getDesca() {
        return this.desca;
    }
    
    public void setDesca(String desca) {
        this.desca = desca;
    }
    public Integer getMone() {
        return this.mone;
    }
    
    public void setMone(Integer mone) {
        this.mone = mone;
    }
    public Integer getAdest1() {
        return this.adest1;
    }
    
    public void setAdest1(Integer adest1) {
        this.adest1 = adest1;
    }
    public String getCdest1() {
        return this.cdest1;
    }
    
    public void setCdest1(String cdest1) {
        this.cdest1 = cdest1;
    }
    public Integer getRexist() {
        return this.rexist;
    }
    
    public void setRexist(Integer rexist) {
        this.rexist = rexist;
    }
    public String getCvrga() {
        return this.cvrga;
    }
    
    public void setCvrga(String cvrga) {
        this.cvrga = cvrga;
    }
    public String getCvapro() {
        return this.cvapro;
    }
    
    public void setCvapro(String cvapro) {
        this.cvapro = cvapro;
    }
    public Integer getFecham() {
        return this.fecham;
    }
    
    public void setFecham(Integer fecham) {
        this.fecham = fecham;
    }
    public BigDecimal getPlisv() {
        return this.plisv;
    }
    
    public void setPlisv(BigDecimal plisv) {
        this.plisv = plisv;
    }
    public Integer getAcsal1() {
        return this.acsal1;
    }
    
    public void setAcsal1(Integer acsal1) {
        this.acsal1 = acsal1;
    }
    public Integer getAcsal2() {
        return this.acsal2;
    }
    
    public void setAcsal2(Integer acsal2) {
        this.acsal2 = acsal2;
    }
    public String getConsig() {
        return this.consig;
    }
    
    public void setConsig(String consig) {
        this.consig = consig;
    }
    public Integer getNcte() {
        return this.ncte;
    }
    
    public void setNcte(Integer ncte) {
        this.ncte = ncte;
    }
    public BigDecimal getPiva() {
        return this.piva;
    }
    
    public void setPiva(BigDecimal piva) {
        this.piva = piva;
    }
    public BigDecimal getImpiva() {
        return this.impiva;
    }
    
    public void setImpiva(BigDecimal impiva) {
        this.impiva = impiva;
    }
    public BigDecimal getImpdes() {
        return this.impdes;
    }
    
    public void setImpdes(BigDecimal impdes) {
        this.impdes = impdes;
    }
    public Integer getConoc() {
        return this.conoc;
    }
    
    public void setConoc(Integer conoc) {
        this.conoc = conoc;
    }
    public BigDecimal getDctoa() {
        return this.dctoa;
    }
    
    public void setDctoa(BigDecimal dctoa) {
        this.dctoa = dctoa;
    }
    public BigDecimal getIdesa() {
        return this.idesa;
    }
    
    public void setIdesa(BigDecimal idesa) {
        this.idesa = idesa;
    }
    public String getCvest() {
        return this.cvest;
    }
    
    public void setCvest(String cvest) {
        this.cvest = cvest;
    }
    public Integer getIsbnp() {
        return this.isbnp;
    }
    
    public void setIsbnp(Integer isbnp) {
        this.isbnp = isbnp;
    }
    public Integer getTiptra() {
        return this.tiptra;
    }
    
    public void setTiptra(Integer tiptra) {
        this.tiptra = tiptra;
    }
    public Integer getSubtra() {
        return this.subtra;
    }
    
    public void setSubtra(Integer subtra) {
        this.subtra = subtra;
    }
    public BigDecimal getPlis4() {
        return this.plis4;
    }
    
    public void setPlis4(BigDecimal plis4) {
        this.plis4 = plis4;
    }
    public BigDecimal getPnet4() {
        return this.pnet4;
    }
    
    public void setPnet4(BigDecimal pnet4) {
        this.pnet4 = pnet4;
    }
    public String getCnov() {
        return this.cnov;
    }
    
    public void setCnov(String cnov) {
        this.cnov = cnov;
    }
    public String getFormat() {
        return this.format;
    }
    
    public void setFormat(String format) {
        this.format = format;
    }
    public Integer getPerren() {
        return this.perren;
    }
    
    public void setPerren(Integer perren) {
        this.perren = perren;
    }
    public String getCvpro() {
        return this.cvpro;
    }
    
    public void setCvpro(String cvpro) {
        this.cvpro = cvpro;
    }
    public String getSeriepd() {
        return this.seriepd;
    }
    
    public void setSeriepd(String seriepd) {
        this.seriepd = seriepd;
    }
    public Integer getFolpd() {
        return this.folpd;
    }
    
    public void setFolpd(Integer folpd) {
        this.folpd = folpd;
    }
    public String getCvecan() {
        return this.cvecan;
    }
    
    public void setCvecan(String cvecan) {
        this.cvecan = cvecan;
    }
    public String getCveopo() {
        return this.cveopo;
    }
    
    public void setCveopo(String cveopo) {
        this.cveopo = cveopo;
    }




}


