/**
 * 
 */
function altaUsuario() {
	$.ajax({
		type : "POST",
		url : "../../UserAdmin",
		data : $("#frmalta").serialize(),
		success : function(data) {
			if (data.status == 'error') {
				alert(data.message);
			} else {
				getListaUsuarios();
				getUsuariosasesores();
				alert("El usuario fué dado de alta correctamente");
			}
		},
		error : function(data) {
			alert('Se encontro un Error al cargar los Datos');
		}
	});
}

function fillUsuariosasesores() {
	$.ajax({
		type : "POST",
		url : "../../UserAdmin",
		data : $("#frmalta").serialize(),
		success : function(data) {
			if (data.status == 'error') {
				alert(data.message);
			} else {
				alert("El usuario fué dado de alta correctamente");
			}
		},
		error : function(data) {
			alert('Se encontro un Error al cargar los Datos');
		}
	});
}

function getAlmacenesOfUser(usuario) {
	$
			.ajax({
				type : "GET",
				url : "../../UserAdmin",
				data : "action=getAlmacenesOfUsuario&user=" + usuario,
				success : function(data) {
					if (data.status == 'error') {
					} else {
						var salida = "";
						for (i = 0; i < data.almacenes.length; i++) {
							var almacen = JSON.parse(data.almacenes[i]);
							salida += "<input type=\"checkbox\" name=\""
									+ almacen.nombre
									+ "\" value=\""
									+ almacen.clave
									+ "\" "
									+ (almacen.selected == "1" ? "checked=\"checked\""
											: "") +" onclick=\"newChecked(this)\""+ ">" + almacen.nombre
									+ "</input>\n";
						}
						// alert(salida);
						$("#cambioAlmacenes").html(salida);
					}
				},
				error : function(data) {
					alert('Se encontro un Error al cargar los Datos');
				}
			});
}

function getUsuariosasesores() {
	$.ajax({
		type : "GET",
		url : "../../UserAdmin",
		data : "action=getUsuariosasesores",
		success : function(data) {
			if (data.status == 'error') {
			} else {
				var salida = "";
				for (i = 0; i < data.usuarios.length; i++) {
					var usuario = JSON.parse(data.usuarios[i]);
					salida += "<option>" + usuario.username + "</option>\n";
				}
				$("#listaUsuariosAsesores").html(salida);
			}
		},
		error : function(data) {
			alert('Se encontro un Error al cargar los Datos');
		}
	});
}

function getListaUsuarios() {
	var salida = "";
	$.ajax({
		type : "GET",
		url : "../../UserAdmin",
		data : "action=getListaUsuarios",
		success : function(data) {
			if (data.status == 'error') {
			} else {
				console.log(data.usuarios);
				var salida = "<option>Selecciona...</option>\n";
				for (i = 0; i < data.usuarios.length; i++) {
					var usuario = JSON.parse(data.usuarios[i]);
					salida += "<option>" + usuario.username + "</option>\n";
				}
				$("#listaUsuarios").html(salida);
			}
		},
		error : function(data) {
			alert('Se encontro un Error al cargar los Datos');
		}
	});
}

function newChecked(element){
	var usuario = $("select option:selected").text();
	var isChecked = element.checked;
	var value = element.value;
	$.ajax({
		type : "GET",
		url : "../../UserAdmin",
		data : "action=updateAlmacenFor&value="+value+"&usuario="+usuario+"&checked="+(isChecked?"1":"0"),
		success : function(data) {
			if (data.status == 'error') {
			} else {
				getAlmacenesOfUser(usuario);
			}
		},
		error : function(data) {
			alert('Se encontro un Error al cargar los Datos');
		}
	});
}

$(document).ready(function() {
	getListaUsuarios();
	getUsuariosasesores();
});