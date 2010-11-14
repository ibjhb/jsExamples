<!DOCTYPE HTML>
<html>
<head>
	<title>Simple Client Templates Example</title>
	<style type="text/css">
		#myBills div {
			background-color: navy;
			color: white;
			margin: 10px;
			padding: 10px;
			width: 300px;
		}
	</style>

	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
	<script type="text/javascript" src="http://ajax.microsoft.com/ajax/jquery.templates/beta1/jquery.tmpl.min.js"></script>
	
	<script type='text/javascript'>
	$(function(){
		
	
	$.getJSON('remote.cfc?method=getArtist'
		,{returnFormat: 'json'}
		,function(data){
			console.log(data);
			//$('#billTemplate').tmpl(data).appendTo('#myBills');
			
		});

		
		
		
	});
	</script>
</head>
<body>
	<div id="content">
		
		<div id="myBills"></div>
		
		<script id="billTemplate" type="text/x-jquery-tmpl">
			<div>
				Name:  ${ FirstName } ${ LastName }
			</div>
		</script>
		
	</div>
</body>
</html>

