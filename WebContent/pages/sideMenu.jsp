 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="mx.trillas.seguimientoembarques.persitence.pojos.Usuario" %>
    <%
    Object userObj = request.getSession().getAttribute("user");
    String tipo = "";
    if(userObj!=null && userObj instanceof Usuario){
    	Usuario usuario = (Usuario)userObj;
    	tipo = usuario.getTipousuario().getTipo();
    }
    
    %>
  
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
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <!-- <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li> -->
                        <li><a href="../../login"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
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
                            <a onclick="" href="../traspasos/traspasos.jsp"><i class="fa fa-exchange fa-fw"></i> Traspasos</a>
                        </li>
						<li>
                            <a href="../requisiciones/requisiciones.jsp"><i class="fa fa-shopping-cart fa-fw"></i> Requisiciones </a>
                        </li>
                        <% if(tipo != null && tipo.equals("administrador")) { %>
                        <li>
                            <a href="../panelAdmin/panelAdmin.jsp"><i class="fa fa-gears fa-fw"></i> Administrador </a>
                        </li>
                        <% } %>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!--&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& -->
			<!--&&&&&&&&&&&&--MENU LATERAL--%%%%%%%% -->
            <!--&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& -->