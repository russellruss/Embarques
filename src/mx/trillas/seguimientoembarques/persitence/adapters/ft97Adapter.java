package mx.trillas.seguimientoembarques.persitence.adapters;

import java.lang.reflect.Type;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;

import mx.trillas.seguimientoembarques.persitence.pojos.Ft97;

public class ft97Adapter implements JsonSerializer<Ft97> {

	@Override
	public JsonElement serialize(Ft97 ft97, Type arg1, JsonSerializationContext jsc) {
		JsonObject jsonO = new JsonObject();
		try {
			jsonO.addProperty("autit", ft97.getAutit());
			jsonO.addProperty("esurt", ft97.getEsurt());
			jsonO.addProperty("codbar", ft97.getId().getCodbar());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return jsonO;
	}

}
