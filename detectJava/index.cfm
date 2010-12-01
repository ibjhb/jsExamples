<!DOCTYPE HTML>
<html>
<head>
	<title>Detect Java</title>
	<style type="text/css">
		
	</style>

	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
	<script type="text/javascript" src="jquery.jqplugin.1.0.2.min.js"></script>
	
	<script type='text/javascript'>
	$(function(){
		var browserData = '';
		$.each($.browser, function(index, value){
			browserData += index + ': ' + value + '<br />';
		});
		
		$('#content').append(browserData);		
	});
	</script>
</head>
<body>
	<div id="content">
		
	</div>
</body>
</html>

