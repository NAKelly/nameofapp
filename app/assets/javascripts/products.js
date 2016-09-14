

received: function() {
	// Called when there's incoming data on the websocket for this channel
	$(".alert.alert-info").show();
	console.log(data.comment.body);
},

listen_to_comments: function() {
	return this.perform('listen', {
		product_id: $("[data-product-id]").data("product-id")
	});
}

$(document).on('turbolinks:load', function() {
  App.product.listen_to_comments();
});