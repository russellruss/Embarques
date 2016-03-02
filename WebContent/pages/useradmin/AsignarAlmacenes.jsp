<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- <script type="text/javascript" src="requisicionesNew.js"></script> -->
<%@include file="../../Headers/headerIncludesRoot.jsp"%>
<script type="text/javascript" src="useradmin.js"></script>
</head>
<body>
	<p>Seleccione el usuario a asignar almacen</p>
	<form>
		<select id="listaUsuarios" name="listaUsuarios">
		</select>
		<input type="button" id="btnAsignar" name="btnAsignar" value="Asignar" />
	</form>
</body>
</html>