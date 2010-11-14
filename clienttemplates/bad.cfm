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
				
				$.each(data, function(i,item){
					console.log(item);
					
					var theData = '<div>';
					theData += 'Name: ' + item.FIRSTNAME + ' ' + item.LASTNAME + '<br />';
					theData += 'EMail: ' + item.EMAIL + '<br />';
					theData += 'Address:<br />';
					theData += item.ADDRESS + '<br />';
					theData += item.CITY + ', ' + item.STATE + ' ' + item.POSTALCODE + '<br />';
					if (item.PHONE){
						theData += 'Phone: ' + item.PHONE + '<br />';
					}
					if (item.FAX){
						theData += 'Fax: ' + item.FAX;
					}
					
					$('#theContacts')
						.append(theData);
				});
			});
	});
	</script>
</head>
<body>
	<div id="content">
		<div id="theContacts"></div>		
	</div>
</body>
</html>