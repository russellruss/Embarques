/**
 * 
 */
function login() {
	$.ajax({
		type : "POST",
		url : "../../login",
		data : $('#loginform').serialize(),
		success : function(data) {
			if (data.status == "ok") {
				window.location = "../requisiciones/requisiciones.jsp";
			} else {
				alert("La contraseña es incorrecta o el usuario no existe.");
			}
		},
		error : function(data) {
			alert('Se encontro un Error al cargar los Datos');
			console.log(data);
		}
	});
}