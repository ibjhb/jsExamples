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
		
		var bills = [
			{
				 description: 	'$1 1957 Silver Certificate' 
				,price: 		'10'
			}
			,{
				 description: 	'$2 1963 Federal Reserve' 
				,price: 		'50'
			}
			,{
				 description: 	'$100 1928 Gold Certificate' 
				,price: 		'50.65'
			}
		]
		
		$('#billTemplate').tmpl(bills).appendTo('#myBills');
		
	});
	</script>
</head>
<body>
	<div id="content">
		
		<div id="myBills"></div>
		
		<script id="billTemplate" type="text/x-jquery-tmpl">
			<div>
				Bill Description: ${ description } <br />
				Price: $${ price }
			</div>
		</script>
		
	</div>
</body>
</html>

