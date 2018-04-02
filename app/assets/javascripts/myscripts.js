function test(arg) {
	$.get( "/payments/"+arg+"/show/", function( data ) {
  $( ".result" ).html( data );
});
}
	