function getTraspasos(){
	$.ajax({
		type: "POST",
		url: "../../traspasos",
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
		var classtype = types[flagType];
		flagType = flagType == 1 ? 0 : 1;
		tbodyTras += '<tr class="'+classtype+' gradeA" onclick="details('+data[i].folio+',\''+data[i].ser+'\')" style="cursor:pointer">'+
		'<td>'+data[i].almaceno+'-'+data[i].almacend+'</td>'+	
		'<td>'+data[i].Traspaso+'</td>'+
  			'<td>'+data[i].FechaT+'</td>'+
			'<td>'+data[i].Requisicion+'</td>'+
			'<td>'+data[i].FechaT+'</td>'+//aquí va la fecha de de la requisicion no traspaso 
  			'<td>'+data[i].Embarque+'</td>'+
  			'<td>'+data[i].FechaE+'</td>'+
  			tdStatus+
  			'</tr>'
			
	}
	$('#tbodyReq').html(tbodyTras);

	$.getScript( "../../Components/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js" );
	$.getScript( "../../Components/bower_components/datatables/media/js/jquery.dataTables.min.js" );
	
	setTimeout(tableIni, 1700);
}

function tableIni(){
	$('#dataTables-example').DataTable({
	    responsive: true,
	    paging: true,
	    "order": [[ 1, "asc" ]],
	    "oLanguage": {
	    	 "oPaginate": {
	          "sNext": "Pr&oacute;ximo",
	          "sFirst": "Primero",
	          "sLast": "&Uacute;ltimo",  
	          "sPrevious": "Previo",
	    	 },
	    	 "sLengthMenu": "Mostrar _MENU_ registros por p&aacute;gina",
	    	 "sEmptyTable": "No existen datos en la tabla",
	          "sLoadingRecords": "Espere, cargando registros...",
	          "sProcessing": "DataTables esta ocupado...",
	          "sZeroRecords": "No hay registros que mostrar",
			  "sInfo": "Se consigui&oacute; un total de  _TOTAL_ entradas que mostrar (_START_ a _END_)",
			  "sSearch": "Filtrar registros"
	    }
	});
	$("#fountainT").css('display', 'none');
}

function details(folio, serie){
	console.log(serie);console.log(folio);
	$.ajax({
		type: "GET",
		url: "../../traspasos",
		data:"&folio="+folio+"&serie="+serie,
		success: function(data){
			drawDetails(data)
		},error:function(data){
			alert('Se encontro un Error al cargar los Datos');
    }});	
	$(".tablePage").css("display", "none");
	$(".detail").css("display", "block");
	
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
	getTraspasos()
	
});