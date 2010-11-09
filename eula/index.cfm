<!DOCTYPE HTML>
<html>
<head>
	<title>EULA Example</title>
	<style type="text/css">
		.disabledObject {
			opacity: 0.5;
		}
	</style>

	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
	
	<script type='text/javascript'>
	$(function(){
		// Disabled the buttons if the eula isn't checked
		$('#eula').click(function(){
			if ($(this).is(':checked')) {
				$('#content button').removeAttr('disabled').removeClass('disabledObject');
			}
			else {
				$('#content button').attr('disabled', 'disabled').addClass('disabledObject');
			}
		})
	});
	</script>
</head>
<body>
	<div id="content">
		<p>
		Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut placerat ornare orci ut vestibulum. Nam placerat nisi sit amet velit volutpat suscipit. In hac habitasse platea dictumst. Praesent at diam est, sed fringilla urna. Donec pellentesque aliquet mi, in commodo mauris egestas at. Aliquam arcu metus, imperdiet sit amet varius non, consequat id tellus. 
		</p>
		<input type="checkbox" value="1" id="eula" name="eula"> I agree to the EULA
		<p>
			<button id="downloadNow" class="disabledObject" name="downloadNow" type="button" disabled="disabled">Download Now</button>
		</p>
	</div>
</body>
</html>

