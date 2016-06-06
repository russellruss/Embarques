$(document).ready(function() {
	$("#continuarBtn").click(function() {
		var value = $('input[name=almacenes]:checked', '#continuarFrm').val();
//		alert(value);
		$.ajax({
			type : "POST",
			url : "ChoseCasaModal",
			data : "showalmacen=" + value,
			success : function(data) {
//				console.log(data);
				if (data.status == "ok") {
					window.location = "../requisiciones/requisiciones.jsp";
				} else {
					alert("Ocurrió un error en el procesamiento de los datos");
				}
			},
			error : function(data) {
				alert('Se encontro un Error al cargar los Datos');
				console.log(data);
			}
		});
	});
	$('#choseCasaModal').on('hidden.bs.modal', function () {
		window.location = "../requisiciones/requisiciones.jsp";
	})
});