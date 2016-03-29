<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
<title>Administrador</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="../../Headers/headerIncludesRoot.jsp"%>
<link href="panelAdmin.css" rel="stylesheet">
<script src="panelAdmin.js"></script>
</head>

<body>
	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0"> <%@include file="../sideMenu.jsp"%>
		</nav>
		<!-- Navigation -->

		<div id="fountainPA">
			<div id="fountainPA_1" class="fountainPA"></div>
			<div id="fountainPA_2" class="fountainPA"></div>
			<div id="fountainPA_3" class="fountainPA"></div>
			<div id="fountainPA_4" class="fountainPA"></div>
			<div id="fountainPA_5" class="fountainPA"></div>
			<div id="fountainPA_6" class="fountainPA"></div>
			<div id="fountainPA_7" class="fountainPA"></div>
			<div id="fountainPA_8" class="fountainPA"></div>
		</div>
		
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Administrador</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<!--             <div class="row"> -->
			<!--                 <div class="col-lg-4"> -->
			<!--                     <div class="panel panel-blue"> -->
			<!--                         <div class="panel-heading"> -->
			<!--                             Green Panel -->
			<!--                         </div> -->
			<!--                         <div class="panel-body"> -->
			<!--                             <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare lacus adipiscing, posuere lectus et, fringilla augue.</p> -->
			<!--                         </div> -->
			<!--                         <div class="panel-footer"> -->
			<!--                             Panel Footer -->
			<!--                         </div> -->
			<!--                     </div> -->
			<!--                     /.col-lg-4 -->
			<!--                 </div> -->
			<!--                 <div class="col-lg-4"> -->
			<!--                     <div class="panel panel-yellow"> -->
			<!--                         <div class="panel-heading"> -->
			<!--                             Yellow Panel -->
			<!--                         </div> -->
			<!--                         <div class="panel-body"> -->
			<!--                             <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare lacus adipiscing, posuere lectus et, fringilla augue.</p> -->
			<!--                         </div> -->
			<!--                         <div class="panel-footer"> -->
			<!--                             Panel Footer -->
			<!--                         </div> -->
			<!--                     </div> -->
			<!--                     /.col-lg-4 -->
			<!--                 </div> -->
			<!--                 <div class="col-lg-4"> -->
			<!--                     <div class="panel panel-red"> -->
			<!--                         <div class="panel-heading"> -->
			<!--                             Red Panel -->
			<!--                         </div> -->
			<!--                         <div class="panel-body"> -->
			<!--                             <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare lacus adipiscing, posuere lectus et, fringilla augue.</p> -->
			<!--                         </div> -->
			<!--                         <div class="panel-footer"> -->
			<!--                             Panel Footer -->
			<!--                         </div> -->
			<!--                     </div> -->
			<!--                     /.col-lg-4 -->
			<!--                 </div> -->
			<!--             </div> -->
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<!--                         <div class="panel-heading"> -->
						<!--                             Basic Tabs -->
						<!--                         </div> -->
						<!-- /.panel-heading -->
						<div class="panel-body">
							<!-- Nav tabs -->
							<ul class="nav nav-tabs">
								<li class="active"><a href="#home" data-toggle="tab">Actualización
										de traspasos</a></li>
								<!--                                 <li><a href="#users" data-toggle="tab">Alta de Usuarios</a></li> -->
								<li><a href="#usralmacenes" data-toggle="tab">Usuarios
										- Almacenes</a></li>
								<li><a href="#uploadFile" data-toggle="tab">Subir
										Archivo de Usuarios</a></li>
							</ul>

							<!-- Tab panes -->
							<div class="tab-content">
								<div class="tab-pane fade in active" id="home">
									<h4>Última Actualización de traspasos y requisiciones</h4>
									<div class="row">
										<div class="col-md-6">
											<code id="ultimaact"></code>
										</div>
										<div class="col-md-6">
											<button onclick="actualizar()" class="btn btn-primary"
												type="button" id="btnActualizar">Actualizar</button>
										</div>
									</div>
								</div>
								<!--                                 <div class="tab-pane fade" id="users"> -->
								<!--                                     <h4>Alta de usuarios</h4> -->
								<!--                                     	<div class="row"> -->
								<!--                                     		<div class="col-lg-6"> -->
								<!--                                     			<form role="form" id="frmalta"> -->
								<!--                                     				<div class="form-group"> -->
								<!--                                     					<label>Username</label> -->
								<!--                                     					<input class="form-control" id="username" name="username"> -->
								<!--                                     					<label>Password</label> -->
								<!--                                     					<input class="form-control" id="password" name="password" type="password" value=""> -->
								<!--                                     					<label>Confirmar password</label> -->
								<!--                                     					<input class="form-control" id="password2" name="password2" type="password" value=""> -->
								<!--                                     				</div> -->
								<!--                                     				<button type="button" name="submit" id="submit" onclick="altaUsuario()" value="alta" class="btn btn-default">Submit Button</button> -->
								<!--                                     			</form> -->
								<!--                                     		</div> -->
								<!--                                     	</div> -->
								<!--                                     	<br /><p class="advice">Nota: Cualquier usuario ingresado aqui, debe ser ingresado en el <b>archivo de contenido de usuarios</b>, de lo contrario el usuario se borrará en la próxima actualización de la base de datos.</p> -->
								<!--                                     </div> -->
								<div class="tab-pane fade" id="usralmacenes">
									<h4>Asignar almacenes a usuarios</h4>
									<div class="row">
										<div class="col-lg-12">
											<form role="form">
												<div class="form-group">
													<label>Seleccione usuario <select
														id="listaUsuarios"></select>
													</label> <br /> <label>Seleccione los almacenes a asignar</label>
													<div id="cambioAlmacenes"></div>
												</div>
											</form>
										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="uploadFile">
									<h4>Subir archivo de contenido de usuarios</h4>
									<div class="row" id="uploadFileContainer">
										<div class="col-lg-5">
											<form id="formUploadFile" name="formUploadFile">
												Selecciona el archivo:<input type="file" id="fileName"
													name="fileName"> <br>

												<button id="btnUploadFile" class="btn btn-primary"
													type="button" value="Aceptar">Aceptar</button>
											</form>
										</div>
										<br>
										<br>
										<div class="col-lg-7">
											<img id="imgHelpUploadFile"
												src="<%=request.getContextPath()%>/img/ayuda.png" />
											<div id="imgExampleUploadFile"></div>
										</div>
									</div>
									<div class="row">
										<div id="updateUsersFile" class="col-md-12">
											<h4>Última Actualización de archivo de usuarios</h4>
											<code id="laterUpdateUsersFile"></code>
										</div>
									</div>
								</div>
								<!--                                 <div class="tab-pane fade" id="messages"> -->
								<!--                                     <h4>Messages Tab</h4> -->
								<!--                                     <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p> -->
								<!--                                 </div> -->
								<!--                                 <div class="tab-pane fade" id="settings"> -->
								<!--                                     <h4>Settings Tab</h4> -->
								<!--                                     <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p> -->
								<!--                                 </div> -->
							</div>
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-6 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->
	<script>
		$("#listaUsuarios").change(function() {
			var str = "";
			$("#listaUsuarios option:selected").each(function() {
				str += $(this).val() + " ";
			});
			getAlmacenesOfUser(str);
		}).change();
	</script>

</body>

</html>
