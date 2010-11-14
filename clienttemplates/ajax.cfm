<!DOCTYPE HTML>
<html>
<head>
	<title>AJAX Client Templates Example</title>
	<style type="text/css">
		#theContacts div {
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
				$('#artistTemplate').tmpl(data).appendTo('#theContacts');
		});
	});
	</script>
</head>
<body>
	<div id="content">
		
		<div id="theContacts"></div>
		
		<script id="artistTemplate" type="text/x-jquery-tmpl">
			<div>
				Name:  ${ FIRSTNAME } ${ LASTNAME } <br />
				EMail: ${ EMAIL } <br />
				Address: <br />
				${ ADDRESS } <br />
				${ CITY }, ${ STATE } ${ POSTALCODE } <br />
				{{if PHONE}}
					Phone: ${ PHONE } <br />
				{{/if}}
				{{if FAX}}
					Fax: ${ FAX }
				{{/if}}
			</div>
		</script>
		
	</div>
</body>
</html>

