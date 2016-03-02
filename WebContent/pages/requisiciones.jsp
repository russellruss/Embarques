<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Requisiciones</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <script type="text/javascript" src="requisicionesNew.js"></script> -->
<%@include file="../Headers/headerIncludes.jsp" %>

<!-- <script type="text/javascript" src="../JS/jquery.autocomplete.min.js"></script> -->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation Cabezera y menu lateral -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
          <%@include file="sideMenu.jsp" %>
        </nav>

        <!-- Navigation -->
		
		<div id="page-wrapper" class="newRequisicion">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Nueva Requisici&oacute;n</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                	<div style="background-color: #59a0dd; margin-bottom: 10px;" class="panel-heading">
                       <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="Buscar Producto..." name="currency" id="autocomplete" onInput="check()">
                            <span class="input-group-btn">
                             <button class="btn btn-default" type="button">
                                 <i style="color: #7aa9d0;font-size: 20px;" class="fa fa-search"></i>
                             </button>
                        	</span>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        
                        <div class="panel-heading">
                            Nueva Pre-Orden
                        </div>
                        
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form">
                                    	
                                        <div class="form-group">
                                            <label>ISBN</label>
                                            <input class="form-control">
                                            <p class="help-block">Ejemplo: 123456789012 debe tener 13 digitos</p>
                                        </div>
                                        <div class="form-group">
                                            <label>Datos del Autor</label>
                                            <p class="help-block">Nombre</p>
                                            <input class="form-control" placeholder="Nombre">
                                            <p class="help-block">Apellido Paterno</p>
                                            <input class="form-control" placeholder="Apellido Paterno">
                                           	<p class="help-block">Apellido Materno</p>
                                            <input class="form-control" placeholder="Apellido Materno">
                                        </div>
                                        <div class="form-group">
                                            <label>Datos del Libro</label>
                                            <p class="help-block">Titulo</p>
                                            <input class="form-control" placeholder="Los Miserables">
                                            <p class="help-block">Editorial</p>
                                            <input class="form-control" placeholder="Trillas">
                                        </div>
                                        <div class="form-group">
                                            <label>Cantidad</label>
                                            <select class="form-control">
                                            <option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option><option value="32">32</option><option value="33">33</option><option value="34">34</option><option value="35">35</option><option value="36">36</option><option value="37">37</option><option value="38">38</option><option value="39">39</option><option value="40">40</option><option value="41">41</option><option value="42">42</option><option value="43">43</option><option value="44">44</option><option value="45">45</option><option value="46">46</option><option value="47">47</option><option value="48">48</option><option value="49">49</option>
                                            <option value="50">50</option>
                                            </select>
                                        </div>
                                        <button type="submit" class="btn btn-default">Submit Button</button>
                                        <button type="reset" class="btn btn-default">Reset Button</button>
                                    </form>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                <div class="col-lg-6">
	                               <h1>Productos</h1>
                                   <div class="panel panel-default">
	                                	 <table class="table table-striped table-bordered table-hover" id="dataTables-example">
		                                    <thead>
		                                        <tr>
		                                            <th>ISBN</th>
												    <th>Autor</th>
												    <th>Titulo</th>
												    <th>Cantidad</th>
		                                        </tr>
		                                    </thead>
		                                   <tbody id="nuevasObrasO">
		                                   	<tr><td>9876543211230</td><td>Ignacio</td><td>4 acuerdos</td><td>10</td><td><a onclick="getDetails(84);" href="#" data-modal-id="popup1">Editar</a></td></tr>
		                                   	<tr><td>9876543211230</td><td>Beltran</td><td>Dios No </td><td>20</td><td><a onclick="getDetails(85);" href="#" data-modal-id="popup1">Editar</a></td></tr>
		                                   	<tr><td>9876543211230</td><td>victor</td><td>jorobado</td><td>5</td><td><a onclick="getDetails(86);" href="#" data-modal-id="popup1">Editar</a></td></tr>
		                                   	<tr><td>9876543211230</td><td>David Herrera </td><td>Asesoria legal</td><td>3</td><td><a onclick="getDetails(87);" href="#" data-modal-id="popup1">Editar</a></td></tr>
		                                   </tbody>
		                                 </table>
	                                </div>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->
    </div>
</body>