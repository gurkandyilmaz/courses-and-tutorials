$("form").submit(function(evt){
	evt.preventDefault();
	var formData = new FormData($(this)[0]);
	$.ajax({
		url: '/predict/',
		type: 'POST',
		data: formData,
		dataType: 'json',
		async: false,
		cache: false,
		contentType: false,
		enctype: 'multipart/form-data',
		processData: false,
		success: function (response) {
			console.log('Here inside success')
			$('#result').empty().append(response);
		},
		error: function(error){
			console.log(error)
		}
	});
	return false;
});
