<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="shortcut icon" href="../../img/Clipboard-icon.png" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <script type="text/javascript" src="requisicionesNew.js"></script> -->
<%@include file="../../Headers/headerIncludesRoot.jsp"%>
<script type="text/javascript" src="useradmin.js"></script>
</head>
<body>
	<div>
		<!-- Alta de usuarios -->
		<h1>Alta de usuarios</h1>
		<form name="frmalta" id="frmalta">
			<input type="text" id="username" name="username" /> <input
				type="password" id="password" name="password" /> <input
				type="password" id="password2" name="password2" /> <input
				name="submit" id="submit" type="button" onclick="altaUsuario()"
				value="alta" />
		</form>
	</div>
	<div>
		<!-- Asignar almacenes a usuarios -->
		<h1>Asignar almacenes a usuarios</h1>
		<div id="listaUsuariosDiv">
			<select id="listaUsuarios">
			</select>
		</div>
		<div id="abc"></div>
		<div id="listaAlmacenes">
			<form id="cambioAlmacenes"></form>
		</div>
	</div>
	<script>
		$("select").change(function() {
			var str = "";
			$("select option:selected").each(function() {
				str += $(this).text() + " ";
			});
			getAlmacenesOfUser(str);
		}).change();
	</script>
</body>
</html>