$(function() {

	console.log("profile.js working");

	if($('#attending-second')[0]["checked"]===true){
		$('#car').hide();
		$('#car-extra-seats').hide();
	}
	if($('#car-second')[0]["checked"]===true){
		$('#car-extra-seats').hide();
	}

	$('#attending-first').on("click", function(){
		$('#car').show();
	});
	$('#attending-second').on("click", function(){
		$('#car').hide();
	});

	$('#car-first').on("click", function(){
		$('#car-extra-seats').show();
	});
	$('#car-second').on("click", function(){
		$('#car-extra-seats').hide();
	});

});