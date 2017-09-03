$('document').ready(function(){
	$('form.form').submit(function(e){
		e.preventDefault();
		if($($('form.form')[0].childNodes[3]).val() != ""){
			$('#myModal').modal('show');
		}
		$(this).submit();
	});
});