function getTraspasos(){
	$.ajax({
		type: "POST",
		url: "TraspasosServlet",
		success: function(data){
			drawTraspasos(data);
//			console.debug(data)
		},error:function(data){
			alert('Se encontro un Error al cargar los Datos');
    }});	
}


function drawTraspasos(data){
	var tbodyTras="";
	var tdStatus="";	
	var types  = ["even","odd"];
	var flagType = 0;
	for (var i in data) {
		switch (data[i].Status) {
		case "Surtido":
			tdStatus='<td style="color:blue">'+data[i].Status+'</td>'
			break;
		case "Empaque":
			tdStatus='<td style="color:brown">'+data[i].Status+'</td>'
			break;
		case "Enviado":
			tdStatus='<td style="color:green">'+data[i].Status+'</td>'
			break;
		case "Activo":
			tdStatus='<td style="color:#0099FF">'+data[i].Status+'</td>'//azul claro
			break;
		case "Cancelado":
			tdStatus='<td style="color:red">'+data[i].Status+'</td>'
			break;
		case "Embarcado":
			tdStatus='<td style="color:orange">'+data[i].Status+'</td>'
			break;
		default:
			tdStatus='<td>'+data[i].Status+'</td>'
			break;
		}
		var oc = "";
		if(data[i].Status == "Enviado"){
			oc = 'onclick="details('+data[i].f+',\''+data[i].s+'\','+data[i].foltra+',\''+data[i].sertra+'\')"';
		}else{
			oc = "";
		}
		var classtype = types[flagType];
		flagType = flagType == 1 ? 0 : 1;
		tbodyTras += '<tr class="'+classtype+' gradeA" ' + oc + ' style="cursor:pointer">'+
		'<td>'+data[i].AlmacenOrigen+'</td>'+
		'<td>'+data[i].AlmacenDestino+'</td>'+
		'<td>'+data[i].Traspaso+'</td>'+
  			'<td>'+data[i].FechaTraspaso+'</td>'+
			'<td>'+data[i].Requisicion+'</td>'+
			'<td>'+data[i].FechaRequisicion+'</td>'+//aquí va la fecha de de la requisicion no traspaso 
  			'<td>'+data[i].Embarque+'</td>'+
  			'<td>'+data[i].FechaEmbarque+'</td>'+
  			tdStatus+
  			'</tr>'
			
	}
	$('#tbodyReq').html(tbodyTras);

//	$.getScript( "../../Components/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js" );
//	$.getScript( "../../Components/bower_components/datatables/media/js/jquery.dataTables.min.js" );
	
	setTimeout(tableIni, 1700);
}

function tableIni(){
	$('#dataTables-example').DataTable({
	    responsive: true,
	    paging: true,
	    "order": [[ 5, "desc" ]],
	    "oLanguage": {
	    	 "oAria": {
	    		 	"sSortAscending": " - click/return para orden ascendiente",
	    	        "sSortDescending": " - click/return para orden descendiente"
	    	  },
	    	 "oPaginate": {
	          "sNext": "Siguiente",
	          "sFirst": "Primero",
	          "sLast": "&Uacute;ltimo",  
	          "sPrevious": "Previo",
	          "sFirst": "Primera p&aacute;gina"
	    	  },
	    	  "sLengthMenu": "Mostrar _MENU_ registros por p&aacute;gina",
	    	  "sEmptyTable": "No existen datos en la tabla",
	          "sLoadingRecords": "Espere, cargando registros...",
	          "sProcessing": "DataTables esta ocupado...",
			  "sInfo": "Se consigui&oacute; un total de  _TOTAL_ entradas que mostrar (_START_ a _END_)",
			  "sInfoFiltered": " - filtrando de _MAX_ registros",
//			  "sInfoPostFix": "Todos los registros mostrados son entregados con informaci&oacute;n real.",
			  "sInfoPostFix": "",
			  "sInfoThousands": ",",
			  "sSearch": "Filtrar registros",
			  "sZeroRecords": "No hay registros que mostrar"
	    }
	});
	$("#fountainT").css('display', 'none');
}

function details(folio, serie, foltra, sertra){
//	console.log(sertra);console.log(foltra);
	$.ajax({
		type: "GET",
		url: "../traspasos/TraspasosServlet",
		data:"&folio="+folio+"&serie="+serie+"&action=drawDetails",
		success: function(data){
			drawDetails(data);
		},error:function(data){
			alert('Se encontro un Error al cargar los Datos');
    }});
	$(".tablePage").css("display", "none");
	$(".detail").css("display", "block");
	$.ajax({
		type: "GET",
		url: "../traspasos/TraspasosServlet",
		data:"&folio="+foltra+"&serie="+sertra+"&action=drawContenido",
		success: function(data){
			drawContenido(data);
		},error:function(data){
			alert('Se encontro un Error al cargar los Datos');
    }});
	$(".tablePage").css("display", "none");
	$(".detail").css("display", "block");
}

function drawContenido(data){
	var objetos = data.objetos;
	var s = "";
	for(d in objetos){
		var elemento = objetos[d];
//		console.log(elemento.esurt);
		s += '<tr><td>'+elemento.id.linea+'</td><td>'+elemento.id.codbar+'</td><td>'+elemento.ed+'</td><td>'+elemento.autit+'</td><td>'+elemento.esurt+'</td><td>'+elemento.pnet+'</td></tr>';
		
	}
	$("#tablaContenido").html(s);
}

function drawDetails(data){
	if(data !="NA"){
		$("#idorden2").html("<i class=\"fa fa-arrow-circle-left\" style=\"color: #337ab7;margin-right: 2%;cursor:pointer\" onclick=\"backPedidos()\"></i>Embarque " + data.serie + data.folio);
		$("#idorden").html("Detalles del embarque "+data.serie+data.folio);
		$("#trasporte").html(data.ClaveT+" "+data.NombreT);
		$("#guia").html(data.NoGuia);
		$("#fechaT").html(data.FechaE);
		$("#cajas").html(data.NoCajas);
		$("#paquetes").html(data.NoPaq);
		$("#placas").html(data.Placas);
		$("#nombreT").html(data.NomRec);
		$("#razonS").html(data.RazonS);
		$("#calle").html(data.Calle);
		$("#colonia").html(data.Colonia);
		$("#estado").html(data.Estado);
		$("#paisCP").html(data.Pais+" "+data.CP);
	}else{
		alert("Este Traspaso no esta Embarcado")
		$("#trasporte").html("-");
		$("#guia").html("-");
		$("#fechaT").html("-");
		$("#cajas").html("-");
		$("#paquetes").html("-");
		$("#placas").html("-");
		$("#nombreT").html("-");
		$("#razonS").html("-");
		$("#calle").html("-");
		$("#colonia").html("-");
		$("#estado").html("-");
		$("#paisCP").html("-");
	}
}

function backPedidos(){
	$(".tablePage").css("display", "block");
	$(".detail").css("display", "none");
}

$(document).ready(function() {
	getTraspasos();
});