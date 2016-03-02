package mx.trillas.seguimientoembarques.persitence.adapters;

import java.lang.reflect.Type;

import mx.trillas.seguimientoembarques.persitence.pojos.Almacen;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;

public class AlmacenAdapter implements JsonSerializer<Almacen> {

	private boolean selected = false;

	public boolean isSelected() {
		return selected;
	}

	public void setSelected(boolean selected) {
		this.selected = selected;
	}

	@Override
	public JsonElement serialize(Almacen almacen, Type type,
			JsonSerializationContext gsc) {
		JsonObject json = new JsonObject();
		json.addProperty("nombre", almacen.getNombre());
		json.addProperty("clave", almacen.getClave());
		json.addProperty("selected", selected ? "1" : "0");
		return json;
	}

}
