package mx.trillas.seguimientoembarques.persitence.adapters;

import java.lang.reflect.Type;

import mx.trillas.seguimientoembarques.persitence.pojos.Usuario;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;

public class UsuarioAdapter implements JsonSerializer<Usuario>{

	@Override
	public JsonElement serialize(Usuario usuario, Type arg1,
			JsonSerializationContext jsc) {
		JsonObject json = new JsonObject();
		json.addProperty("username", usuario.getUsername());
		json.addProperty("password", usuario.getPassword());
		json.addProperty("tipousuario", usuario.getTipousuario().getTipo());
		return json;
	}

}
