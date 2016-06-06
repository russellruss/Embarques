$(document).ready(function(){ 
    $("#myTab a").click(function(e){
    	e.preventDefault();
    	$(this).tab('show');
 });
    var validator = new FormValidator('editUser', [{
        name: 'nombre',
        display: 'required',
        rules: 'required'
    }, {
        name: 'alphanumeric',
        rules: 'alpha_numeric'
    }, {
        name: 'password',
        rules: 'required'
    }, {
        name: 'repitePassword',
        display: 'password confirmation',
        rules: 'required|matches[password]'
    },  {
        name: 'primerApellido',
        display: 'required',
        rules: 'required'
    }, {
        name: 'minlength',
        display: 'min length',
        rules: 'min_length[8]'
    }], function(errors, event) {
        if (errors.length > 0) {
        	 var errorString = '';
             for (var i = 0, errorLength = errors.length; i < errorLength; i++) {
                 errorString += errors[i].message + '<br />';
             }
             $("#error_box").show();
             document.getElementById("error_box").innerHTML = errorString;
        }
    });
});

function getPassword(username, name, lastName){
	$("#usernameP").html("Usuario: "+name);
	$("#usernamePI").val(username);
	$("#name").val(name);
	$("#lastName").val(lastName);
}

function resetPassword(){
	$.ajax({
		type: "GET",
		data:$("#editPass").serialize(),
		url: "UsuariosAltaServlet",
		success: function(data){
			alert('Cambio de Contraseña exitoso');
		},error:function(){
			alert('Se encontro un Error al guardar la contraseña');
		}
		});
}

$(function(){
	var appendthis =  ("<div class='modal-overlay js-modal-close'></div>");
	  $('a[data-modal-id]').click(function(e) {
	    e.preventDefault();
	    $("body").append(appendthis);
	    $(".modal-overlay").fadeTo(500, 0.7);
	    //$(".js-modalbox").fadeIn(500);
	    var modalBox = $(this).attr('data-modal-id');
	    $('#'+modalBox).fadeIn($(this).data());
	  });  
	$(".js-modal-close, .modal-overlay").click(function() {
	  $(".modal-box, .modal-overlay").fadeOut(500, function() {
	    $(".modal-overlay").remove();
	  });
	});
	$(window).resize(function() {
	  $(".modal-box").css({
	    top: ($(window).height() - $(".modal-box").outerHeight()) / 2,
	    left: ($(window).width() - $(".modal-box").outerWidth()) / 2
	  });
	});
	$(window).resize();
	});

function getDetails(user,name,ap,am){
	var usuario =[user, name, ap, am];
	usuario = validatenull(usuario);
	
	document.getElementById("ILusername").innerHTML = "Usuario: "+usuario[0];
	$("#Iusername").val(usuario[0]);
	$("#Inombre").val(usuario[1]);
	$("#Iprimer").val(usuario[2]);
	$("#Isegundo").val(usuario[3]);
	$("#error_box").hide();
	
};

function validatenull(array){
	for	(i = 0; i < array.length; i++) {
	    if (array[i]=="null")
	    	array[i]="";
	} 
	return array;
};


