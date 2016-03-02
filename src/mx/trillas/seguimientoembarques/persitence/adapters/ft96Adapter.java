package mx.trillas.seguimientoembarques.persitence.adapters;

import java.lang.reflect.Type;

import mx.trillas.seguimientoembarques.persitence.pojos.Ft96;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;

public class ft96Adapter implements JsonSerializer<Ft96> {

	@Override
	public JsonElement serialize(Ft96 ft96, Type arg1,
			JsonSerializationContext jsc) {
		JsonObject jsonO = new JsonObject();
		try {
			
			jsonO.addProperty("RazonS", ft96.getRsocf());
			jsonO.addProperty("Calle", ft96.getDirf());
			jsonO.addProperty("Colonia", ft96.getColf());
			jsonO.addProperty("Deleg", ft96.getDelf());
			jsonO.addProperty("Ciudad", ft96.getCdf());
			jsonO.addProperty("Estado", ft96.getEdof());
			jsonO.addProperty("Pais", ft96.getPaisf());
			jsonO.addProperty("CP", ft96.getCpf());
			jsonO.addProperty("ClaveT", ft96.getCvtra());
			jsonO.addProperty("NombreT", ft96.getCiatra());
			jsonO.addProperty("NoGuia", ft96.getGuia());
			jsonO.addProperty("FechaE", ft96.getFecenv().toString());
			jsonO.addProperty("NoCajas", ft96.getNcaj());
			jsonO.addProperty("NoPaq", ft96.getNpac());
			jsonO.addProperty("Placas", ft96.getPlacas());
			jsonO.addProperty("NomRec", ft96.getNomrec());
			jsonO.addProperty("serie", ft96.getId().getSer());
			jsonO.addProperty("folio", ft96.getId().getFolio());
//			if(ft96.getSer()==null){
//				jsonO.addProperty("Embarque", "-");
//				jsonO.addProperty("FechaE", "-");
//			}else{
//				jsonO.addProperty("Embarque", ft96.getSer());
//				if(ft96.getFesaal()==null){
//					jsonO.addProperty("FechaE", "-");
//				}else{
//					jsonO.addProperty("FechaE", ft96.getFesaal().toString());
//				}
//			}
//			if(ft96.getStatus()==null)
//				jsonO.addProperty("Status", "Activo");
//			else{
//				switch (ft96.getStatus()) {
//				case "S":
//					jsonO.addProperty("Status", "Surtido");
//					break;
//				case "M":
//					jsonO.addProperty("Status", "Empaque");
//					break;
//				case "T":
//					jsonO.addProperty("Status", "Enviado");
//					break;
//				case "C":
//					jsonO.addProperty("Status", "Cancelado");
//					break;
//				case "E":
//					jsonO.addProperty("Status", "Embarcado");
//					break;
//				default:
//					jsonO.addProperty("Status", "Activo");
//					break;
//				}
//				
//			}
//		
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return jsonO;
	}

	
	
}
