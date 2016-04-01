function actualizar() {
	$("#fountainPA").css('display', 'block');
	$("#btnActualizar").prop("disabled", true);
	$.ajax({
		type : "POST",
		url : "../../AdministradorServlet",
		success : function(data) {
			$("#fountainPA").css('display', 'none');
			$("#btnActualizar").prop("disabled", false);
			ultimaActualizacion();
			alert("Los datos han sido actualizados correctamente");
		},
		error : function(data) {
			$("#fountainPA").css('display', 'none');
			$("#btnActualizar").prop("disabled", false);
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
						var countCheckbox = 1;
						var countPannel = 1;
						var i = 0;
						for (i = 0; i < data.almacenes.length; i++) {
							if (countPannel == 1 && countCheckbox == 1) {
								salida += "<div class=\"row\">";
							}
							if (countCheckbox == 1) {
								salida += "<div class=\"col-lg-4\"><div class=\"panel panel-default\">";
							}
							var almacen = JSON.parse(data.almacenes[i]);
							salida += "<div class=\"checkbox\"><label><input type=\"checkbox\" name=\""
									+ almacen.nombre
									+ "\" value=\""
									+ almacen.clave
									+ "\" "
									+ (almacen.selected == "1" ? "checked=\"checked\""
											: "")
									+ " onclick=\"newChecked(this)\""
									+ ">"
									+ almacen.nombre + "</label></div>";
							if (countCheckbox++ >= 10
									|| i == (data.almacenes.length - 1)) {
								salida += "</div></div>";
								countCheckbox = 1;
								if (countPannel++ >= 3
										|| i == (data.almacenes.length - 1)) {
									salida += "</div>";
									countPannel = 1;
								}
							}
						}
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
				var salida = "<option value=''>Selecciona...</option>\n";
				for (i = 0; i < data.usuarios.length; i++) {
					var usuario = JSON.parse(data.usuarios[i]);
					salida += "<option value='" + usuario.username + "'> "
							+ usuario.name + " (" + usuario.username
							+ ")</option>\n";
				}
				$("#listaUsuarios").html(salida);
			}
		},
		error : function(data) {
			alert('Se encontro un Error al cargar los Datos');
		}
	});
}

function newChecked(element) {
	var username = $("select option:selected").val();
	var value = element.value;
	var isChecked = element.checked;
	var textSelected = $("select option:selected").text();
	var almacenName = element.name;

	if (username != "") {
		$.ajax({
			type : "GET",
			url : "../../UserAdmin",
			data : "action=updateAlmacenFor&value=" + value + "&usuario=" + username + "&checked=" + (isChecked ? "1" : "0"),
			success : function(data) {
				if (data.status == 'error') {
				} else {
					if (isChecked == 1 ) {
						alert("El usuario con username \"" + username.toLowerCase() + "\" ha sido asociado al almacen \"" + almacenName.charAt(0) + almacenName.substr(1).toLowerCase()+"\"");
						getAlmacenesOfUser(username);
					} else {
						alert("El usuario con username \"" + username.toLowerCase() + "\" ha sido desasociado del almacen \"" + almacenName.charAt(0) + almacenName.substr(1).toLowerCase()+"\"");
						getAlmacenesOfUser(username);
					}
				}
			},
			error : function(data) {
				alert('Se encontro un Error al cargar los Datos');
			}
		});
	} else {
		alert("Debe seleccionar un usuario");
		element.checked = false;
	}
}

function agregarAlmacen(nombrealmacen) {
	var salida = "";
	$.ajax({
		type : "GET",
		url : "../../UserAdmin",
		data : "action=agregarAlmacen&nombrealmacen=" + nombrealmacen,
		success : function(data) {
			if (data.status == 'error') {
			} else {
			}
		},
		error : function(data) {
			alert('Se encontro un Error al cargar los Datos');
		}
	});
}

function ultimaActualizacion() {
	var salida = "";
	$.ajax({
		type : "GET",
		url : "../../UserAdmin",
		data : "action=ultimaActualizacion",
		success : function(data) {
			if (data == 'NA') {
			} else {
				$("#ultimaact").html(data.dato);
			}
		},
		error : function(data) {
			alert('Se encontro un Error al cargar los Datos');
		}
	});
}

function laterUpdateUsersFile() {
	$.ajax({
		type : "GET",
		url : "../../UpdateDateUsersServlet",
		data : "action=laterUpdate",
		success : function(data) {
			if (data == 'NA') {
			} else {
				$("#laterUpdateUsersFile").html(data.dato);
			}
		},
		error : function(data) {
			alert('Se encontro un Error al cargar los Datos');
		}
	});
}

function UpdaterUsersFile() {
	$.ajax({
		type : "POST",
		url : "../../UpdateDateUsersServlet",
		success : function(data) {

		},
		error : function(data) {
			alert('Se encontro un Error al cargar los Datos');
		}
	});
}

$(document).ready(function() {
	getListaUsuarios();
	getUsuariosasesores();
	ultimaActualizacion();
	laterUpdateUsersFile();

	$('#fileName').val("");
	$('#btnUploadFile').attr('disabled', true);

	$('#fileName').change(function() {
		if ($(this).val()) {
			$('#btnUploadFile').attr('disabled', false);
		}
	});

	$('#imgHelpUploadFile').mouseover(function() {
		$("#imgExampleUploadFile").fadeIn(800);
	});

	$('#imgHelpUploadFile').mouseout(function() {
		$("#imgExampleUploadFile").fadeOut(400);
	});

	$('#btnUploadFile').click(function(event) {
		event.preventDefault();
		var formData = new FormData($("#formUploadFile")[0]);
		$("#fountainPA").css('display', 'block');
		$('#btnUploadFile').attr('disabled', true);
		
		$.ajax({
			type : "POST",
			url : 'UploadFileServlet',
			async : false,
			data : formData,
			cache : false,
			contentType : false,
			processData : false,
			success : function(response) {
				UpdaterUsersFile();
				$("#fountainPA").css('display', 'none');
				alert(response);
			},
			error: function() {
				$("#fountainPA").css('display', 'none');
			}
		}); /* ajax() */
//		window.location.reload();
	}); /* click() */
}); /* document.ready() */