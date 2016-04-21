<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

 <%@page import="mx.trillas.seguimientoembarques.persitence.impl.TipousuarioDAODBImpl"%>
<%@page import="mx.trillas.seguimientoembarques.persitence.dao.TipousuarioDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mx.trillas.seguimientoembarques.persitence.pojos.Usuario" %>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Embarques - Login</title>

    <!-- Bootstrap Core CSS -->
    <link href="<%=request.getContextPath()%>/Components/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="<%=request.getContextPath()%>/Components/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<%=request.getContextPath()%>/Components/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<%=request.getContextPath()%>/Components/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- jQuery -->
    <script src="<%=request.getContextPath()%>/Components/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<%=request.getContextPath()%>/Components/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="<%=request.getContextPath()%>/Components/bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="<%=request.getContextPath()%>/Components/dist/js/sb-admin-2.js"></script>

<script type="text/javascript" src="login.js"></script>

<script type="text/javascript">

	forwardHistory();
	
</script>

</head>

<%
	Usuario usuario = null;
	boolean isUserLogged = false;
    Object userObj = request.getSession().getAttribute("user");
    Object usuarioObj = request.getSession().getAttribute("user");
    
    if (usuarioObj != null && usuarioObj instanceof Usuario) {
    	usuario = (Usuario) usuarioObj;
    	isUserLogged = true;
    }
    
    if (isUserLogged == true) {
    	String redirectUrl = request.getContextPath();
    	response.sendRedirect(redirectUrl);
    	return;
    }
%>

<body>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Ingrese su usuario y su password</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" id="loginform">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Usuario" id="usuario" name="email" type="email" autofocus>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" id="password" name="password" type="password" value="">
                                </div>
<!--                                 <a href="#" class="btn btn-lg btn-success btn-block" onclick="login();">Login</a> -->
                                <button id="btnLoginForm"type="button" href="#" class="btn btn-lg btn-success btn-block" onclick="login();">Login</button>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
