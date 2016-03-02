<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Administrador</title>

   <%@include file="../Headers/headerIncludes.jsp" %>

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
          <%@include file="sideMenu.jsp" %>
        </nav>
		<!-- Navigation -->
		
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
                                <li class="active"><a href="#home" data-toggle="tab">Principal</a>
                                </li>
                                <li><a href="#users" data-toggle="tab">Usuarios</a>
                                </li>
<!--                                 <li><a href="#messages" data-toggle="tab">Messages</a> -->
<!--                                 </li> -->
<!--                                 <li><a href="#settings" data-toggle="tab">Settings</a> -->
<!--                                 </li> -->
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="home">
                                    <h4>Última Actualización</h4>
                                    <div class="row">
		                                <div class="col-md-6"><code> 5 de Octubre 2015 12:06:01</code></div>
		                                <div class="col-md-6">
		                                	<button onclick="actualizar()" class="btn btn-primary" type="button">Actualizar</button>
		                                </div>
		                            </div>
                                </div>
                                <div class="tab-pane fade" id="users">
                                    <h4>Profile Tab</h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
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
</body>

</html>
