package mx.trillas.seguimientoembarques.persitence.adapters;

import java.lang.reflect.Type;

import mx.trillas.seguimientoembarques.persitence.dao.AlmacenDAO;
import mx.trillas.seguimientoembarques.persitence.impl.AlmacenDAODBImpl;
import mx.trillas.seguimientoembarques.persitence.pojos.Ft91;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;

public class ft91Adapter implements JsonSerializer<Ft91> {

	@Override
	public JsonElement serialize(Ft91 ftp91, Type arg1,
			JsonSerializationContext jsc) {
		AlmacenDAO almacenDAO = new AlmacenDAODBImpl();
		JsonObject jsonO = new JsonObject();
		try {
		
			jsonO.addProperty("Traspaso", ftp91.getId().getSerie()+ftp91.getId().getNdoc());
			jsonO.addProperty("FechaT", ftp91.getFecemi().toString());
			jsonO.addProperty("Requisicion", ftp91.getPedido());
//			jsonO.addProperty("FechaR", ftp91.get);
			jsonO.addProperty("TipoDoc", ftp91.getId().getTdoc());
			jsonO.addProperty("NDoc", ftp91.getId().getNdoc());
			jsonO.addProperty("Serie", ftp91.getId().getSerie());
			jsonO.addProperty("ser", ftp91.getSer());
			jsonO.addProperty("folio", ftp91.getFolio());
			
			if(ftp91.getAlma()!=null)
				jsonO.addProperty("almaceno",almacenDAO.getByClave(ftp91.getAlma()).getNombre());
			else
				jsonO.addProperty("almaceno","");
			if(ftp91.getAlmao()!=null)
				jsonO.addProperty("almacend", almacenDAO.getByClave(ftp91.getAlmao()).getNombre());
			else
				jsonO.addProperty("almacend", "");
			
			if(ftp91.getSer()==null){
				jsonO.addProperty("Embarque", "-");
				jsonO.addProperty("FechaE", "-");
			}else{
				jsonO.addProperty("Embarque", ftp91.getSer()+ftp91.getFolio());
				if(ftp91.getFesaal()==null){
					jsonO.addProperty("FechaE", "-");
				}else{
					jsonO.addProperty("FechaE", ftp91.getFesaal().toString());
				}
			}
			if(ftp91.getStatus()==null)
				jsonO.addProperty("Status", "Activo");
			else{
				switch (ftp91.getStatus()) {
				case "S":
					jsonO.addProperty("Status", "Surtido");
					break;
				case "M":
					jsonO.addProperty("Status", "Empaque");
					break;
				case "T":
					jsonO.addProperty("Status", "Enviado");
					break;
				case "C":
					jsonO.addProperty("Status", "Cancelado");
					break;
				case "E":
					jsonO.addProperty("Status", "Embarcado");
					break;
				default:
					jsonO.addProperty("Status", "Activo");
					break;
				}
				
			}
		
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return jsonO;
	}

	
	
}
