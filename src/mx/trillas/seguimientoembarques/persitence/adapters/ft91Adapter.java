package mx.trillas.seguimientoembarques.persitence.adapters;

import java.lang.reflect.Type;

import mx.trillas.seguimientoembarques.persitence.dao.AlmacenDAO;
import mx.trillas.seguimientoembarques.persitence.impl.AlmacenDAODBImpl;
import mx.trillas.seguimientoembarques.persitence.pojos.Almacen;
import mx.trillas.seguimientoembarques.persitence.pojos.Ft91;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;

public class ft91Adapter implements JsonSerializer<Ft91> {	
	private AlmacenDAO almacenDAO = new AlmacenDAODBImpl();

	@Override
	public JsonElement serialize(Ft91 ft91, Type arg1,
			JsonSerializationContext jsc) {
		JsonObject jsonO = new JsonObject();
		try {
		
			if (ft91.getFoltra() == null || ft91.getFoltra().intValue() == 0) {
				jsonO.addProperty(
						"Traspaso",
						String.format("%-3s", ft91.getId().getSerie())
								+ String.format("%07d", ft91.getId().getNdoc()));
			} else {
				String traspaso = "";
				traspaso += ft91.getSertra() == null ? "   " : String.format(
						"%-3s", ft91.getSertra());
				traspaso += String.format("%07d", ft91.getFoltra());
				jsonO.addProperty("Traspaso", traspaso);
			}
			jsonO.addProperty("NoTraspasoCasaOrigen", String.format("%-3s", ft91.getSertra()) + String.format("%07d", ft91.getFoltra()));
			jsonO.addProperty("FechaTraspaso", ft91.getFecemi().toString());
			String requisicion = "";
			requisicion += ft91.getSerped() == null ? "   " : String.format(
					"%-3s", ft91.getSerped());
			requisicion += String.format("%07d", ft91.getNumped());
			jsonO.addProperty("Requisicion", requisicion);
			jsonO.addProperty("FechaRequisicion", ft91.getFecped().toString());
			
			if (ft91.getAlmad() != null) {
				Almacen almacen = almacenDAO.getByClave(ft91.getAlmad());
				String almacens = almacen == null ? null : almacen.getNombre();
				almacens = almacens == null ? ft91.getAlmad() + "" : almacens;
				jsonO.addProperty("AlmacenOrigen", almacens);
			}
			else
				jsonO.addProperty("AlmacenOrigen", "");
			if (ft91.getAlma() != null) {
				Almacen almacen = almacenDAO.getByClave(ft91.getAlma());
				if(almacen==null)
					System.out.println();
				String almacens = almacen == null ? null : almacen.getNombre();
				almacens = almacens == null ? ft91.getAlma() + "" : almacens;
				jsonO.addProperty("AlmacenDestino", almacens);
			}
			else
				jsonO.addProperty("AlmacenDestino", "");
			
			if(ft91.getSer()==null){
				jsonO.addProperty("Embarque", "-");
				jsonO.addProperty("FechaEmbarque", "-");
			}else{
				jsonO.addProperty("Embarque", String.format("%-3s", ft91.getSer()) + String.format("%07d", ft91.getFolio()));
				if(ft91.getFesaal()==null){
					jsonO.addProperty("FechaEmbarque", "-");
				}else{
					jsonO.addProperty("FechaEmbarque", ft91.getFesaal().toString());
				}
			}
			if(ft91.getStatus()==null)
				jsonO.addProperty("Status", "Activo");
			else{
				switch (ft91.getStatus()) {
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
