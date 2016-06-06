<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="mx.trillas.seguimientoembarques.persitence.pojos.Almacen"%>
<%@page import="mx.trillas.seguimientoembarques.persitence.pojos.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%
	Object almacenesObj = request.getSession()
			.getAttribute("almacenes");
	List<Almacen> listAlmacen = null;
	if (almacenesObj != null && almacenesObj instanceof List<?>) {
		List<?> almacenesListObjs = (List<?>) almacenesObj;
		listAlmacen = new ArrayList<>();
		for (Object almacenObj : almacenesListObjs) {
			Almacen almacen = (Almacen) almacenObj;
			listAlmacen.add(almacen);
		}
	}
	Object usuarioObj = request.getSession()
			.getAttribute("user");
	Usuario usuario = null;
	if(usuarioObj !=null && usuarioObj instanceof Usuario){
		usuario = (Usuario)usuarioObj;
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<link rel="shortcut icon" href="../../img/Clipboard-icon.png" />
<title>Requisiciones</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <!-- Bootstrap Core CSS -->
    <link href="../../Components/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../../Components/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">
    
    <!-- Custom CSS -->
    <link href="../../Components/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../../Components/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- jQuery -->
    <script src="../../Components/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <script type="text/javascript" src="choseCasaModal.js"></script>
</head>

<body>

    <div id="wrapper">

                            <!-- Modal -->
                            <div class="modal fade" id="choseCasaModal" tabindex="-1" role="dialog" aria-labelledby="choseCasaModal" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title" id="myModalLabel">Seleccione almacen</h4>
                                        </div>
                                        <form id="continuarFrm">
                                        <div class="modal-body">
                                            Seleccione algun almacen para mostrar con el usuario "<% out.print(usuario.getUsername()); %>" en este equipo.
                                            
                                        
                                        <div class="form-group">
<!--                                             <label>Radio Buttons</label> -->
                                            <% for(Almacen almacen: listAlmacen) { %>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="almacenes" id="almacenes" value="<% out.print(almacen.getClave()); %>"><% out.print(almacen.getNombre()); %>
                                                </label>
                                            </div>
                                            <% } %>
                                        </div>                                        
                                        </div>
                                        </form>
                                        <div class="modal-footer">
<!--                                             <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
                                            <button type="button" class="btn btn-primary" id="continuarBtn">Continuar</button>
                                        </div>
                                    </div>
                                    <!-- /.modal-content -->
                                </div>
                                <!-- /.modal-dialog -->
                            </div>
                            <!-- /.modal -->

    </div>

    <!-- Bootstrap Core JavaScript -->
    <script src="../../Components/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    
    <script type="text/javascript">
    $(window).load(function(){
        $('#choseCasaModal').modal('show');
    });
 	</script>
</body>
</html>