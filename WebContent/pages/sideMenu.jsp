    <%
    	TipousuarioDAODBImpl tipoUsuarioDAO = new TipousuarioDAODBImpl();
        Object userObj = request.getSession().getAttribute("user");
        String tipo = "";
        
        Tipousuario tipoUsuarioSession = null;

    	Usuario usuario = null;
        if(userObj!=null && userObj instanceof Usuario){
        	usuario = (Usuario)userObj;;
        	tipoUsuarioSession = usuario.getTipousuario();
        }/* else {
        	StringBuffer url = request.getRequestURL();
        	String uri = request.getRequestURI();
        	String ctx = request.getContextPath();
        	String base = url.substring(0, url.length() - uri.length() + ctx.length()) + "/pages/login/login.jsp";
        	System.out.println(base);
            response.sendRedirect(base);
    	}*/
    %>
 <%@page import="mx.trillas.seguimientoembarques.persitence.impl.TipousuarioDAODBImpl"%>
<%@page import="mx.trillas.seguimientoembarques.persitence.dao.TipousuarioDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mx.trillas.seguimientoembarques.persitence.pojos.Usuario" %>
<%@ page import="mx.trillas.seguimientoembarques.persitence.pojos.Tipousuario" %>
  
  			<div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>	
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
            <li><i class="fa fa-user fa-fw"></i><%=usuario.getName()%> (<%=usuario.getUsername()%>)</li>
            <li><a href="<%=request.getContextPath()%>/pages/login/LoginServlet"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
<!--                 <li class="dropdown"> -->
<!--                     <a class="dropdown-toggle" data-toggle="dropdown" href="#"> -->
<!--                         <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i> -->
<!--                     </a> -->
<!--                     <ul class="dropdown-menu dropdown-user"> -->
                        <!-- <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li> -->
<%--                         <li><a href="<%=request.getContextPath()%>/pages/login/LoginServlet"><i class="fa fa-sign-out fa-fw"></i> Logout</a> --%>
<!--                         </li> -->
<!--                     </ul> -->
                    <!-- /.dropdown-user -->
<!--                 </li> -->
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->
			<!--&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& -->
			<!--&&&&&&&&&&&&--MENU LATERAL--%%%%%%%% -->
			<!--&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& -->
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
                        <!-- <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>-->
                            <!-- /input-group -->
                        <!-- </li> -->
                        <li>
                            <a href="<%=request.getContextPath()%>/pages/traspasos/traspasos.jsp"><i class="fa fa-exchange fa-fw"></i> Traspasos</a>
                        </li>
						<li>
                            <a href="<%=request.getContextPath()%>/pages/requisiciones/requisiciones.jsp"><i class="fa fa-shopping-cart fa-fw"></i> Requisiciones </a>
                        </li>
                        <% 
                        Tipousuario tipoUsuarioAdmin = new Tipousuario();
						
                        if(tipoUsuarioSession != null && tipoUsuarioSession.getTipo().equals(tipoUsuarioDAO.getTipousuarioAdministrador().getTipo())) { %>
                        <li>
                            <a href="<%=request.getContextPath()%>/pages/panelAdmin/panelAdmin.jsp"><i class="fa fa-gears fa-fw"></i> Administrador </a>
                        </li>
                        <% } %>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!--&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& -->
			<!--&&&&&&&&&&&&--MENU LATERAL--%%%%%%%% -->
            <!--&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& -->