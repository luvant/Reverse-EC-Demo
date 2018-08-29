
(function ($) {
    

        $(document).ready(function () {

            
            $('.block2-btn-addcart').each(function(){
			var nameProduct = $(this).parents('.block2').find('.block2-name').html();
			$(this).on('click', function(){

				var baseUrl = document.location.origin;
				alert(baseUrl);
			});
		});

		$('.block2-btn-addwishlist').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");
			});
		});

		$('.num-product').each(function(){
			$(this).change(function(){
				var qty = parseInt($(this).val());
				var id_product = parseInt($(this).parents('.table-row').find('.idProduct').html());
				var url = "{{URL::to('updateCart')}}"+"/"+id_product+"/"+qty;
				$.ajax({ 
					type: 'GET', 
					async: true,
					url: url, 
					data: { get_param: 'value' }, 
					success: function (data) {

						location.reload();


					}
				});
			});
		});


		$('.btn-num-product-down').each(function(){
			$(this).click(function(){
				var qty = parseInt($(this).parents('.table-row').find('.num-product').val());
				--qty;
				var id_product = parseInt($(this).parents('.table-row').find('.idProduct').html());
				var url = "{{URL::to('updateCart')}}"+"/"+id_product+"/"+qty;
				$.ajax({ 
					type: 'GET', 
					async: true,
					url: url, 
					data: { get_param: 'value' }, 
					success: function (data) {

						location.reload();


					}
				});
			});
		});


		$('.btn-num-product-up').each(function(){
			$(this).click(function(){
				var qty = parseInt($(this).parents('.table-row').find('.num-product').val());
				++qty;
				var id_product = parseInt($(this).parents('.table-row').find('.idProduct').html());
				var url = "{{URL::to('updateCart')}}"+"/"+id_product+"/"+qty;
				$.ajax({ 
					type: 'GET', 
					async: true,
					url: url, 
					data: { get_param: 'value' }, 
					success: function (data) {

						location.reload();


					}
				});
			});
		});

        });

})(jQuery);