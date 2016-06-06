/**
 * 
 */

function forwardHistory() {
     	history.forward();
    	return false;
} 
  
function login() {
	$("#usuario").val($("#usuario").val().toUpperCase());
	$("#password").val($("#password").val().toUpperCase());
	$.ajax({
		type : "POST",
		url : "LoginServlet",
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

$(document).ready(function() {

	$("#loginform").keypress(function(e) {
		if ((e.which && e.which == 13) || (e.keyCode && e.keyCode == 13)) {
			login();
			return false;
		} else {
			return true;
		}
	});
})