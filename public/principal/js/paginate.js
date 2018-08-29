(function ($) {
    

        $(document).ready(function () {

            $(".pagination").addClass('flex-m flex-w p-t-26');
            $(".pagination").find("li").addClass("item-pagination flex-c-m trans-0-4");
            $(".pagination").find(".active").removeClass('active').addClass("active-pagination");

        });

})(jQuery);