<!DOCTYPE html>
<html lang="en">
<head>
  <title>Home</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <base href="{{asset('')}}" >
  <!--===============================================================================================-->
  <link rel="icon" type="image/png" href="principal/images/icons/favicon.png"/>
  <!--===============================================================================================-->
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
  <!-- <link rel="stylesheet" type="text/css" href="principal/vendor/bootstrap/css/bootstrap.min.css"> -->
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="principal/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="principal/fonts/themify/themify-icons.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="principal/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="principal/fonts/elegant-font/html-css/style.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="principal/vendor/animate/animate.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="principal/vendor/css-hamburgers/hamburgers.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="principal/vendor/animsition/css/animsition.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="principal/vendor/select2/select2.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="principal/vendor/daterangepicker/daterangepicker.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="principal/vendor/slick/slick.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="principal/vendor/lightbox2/css/lightbox.min.css">
  <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="principal/css/util.css">
  <link rel="stylesheet" type="text/css" href="principal/css/main.css">
  <!--===============================================================================================-->
</head>
<body class="animsition">

  <!-- Header -->
  <header class="header1">
    <!-- Header desktop -->
    <div class="container-menu-header">
      <div class="topbar">
        <div class="topbar-social">
          <a href="#" class="topbar-social-item fa fa-facebook"></a>
          <a href="#" class="topbar-social-item fa fa-instagram"></a>
          <a href="#" class="topbar-social-item fa fa-pinterest-p"></a>
          <a href="#" class="topbar-social-item fa fa-snapchat-ghost"></a>
          <a href="#" class="topbar-social-item fa fa-youtube-play"></a>
        </div>

        <span class="topbar-child1">

        </span>

        <div class="topbar-child2">
          <span class="topbar-email">
            Reverse
          </span>


        </div>
      </div>

      <div class="wrap_header">
        <!-- Logo -->
        <a href="" class="logo">
          <img src="principal/images/icons/logo.png" alt="IMG-LOGO">
        </a>

        <!-- Menu -->
        <div class="wrap_menu">
          <nav class="menu">
            <ul class="main_menu">
              <li>
                <a href="">Home</a>

              </li>

              <li>
                <a href="product">Shop</a>
                <ul class="sub_menu" style="max-width: 1000px; min-width: 1000px">
                  @foreach($categorie_return as $key=>$value)
                    <li  style="float:left;">
                      <a href="#" class="s-text13 active1">
                        <h4 >{{$key}}</h4>

                      </a>

                      <ul>
                        @foreach($value as $item)
                          <li style="margin-top: 0px;">
                            <a href="product/{{$item->name.'/'.$item->id_subcategorie}}">{{$item->name}}</a>
                          </li>
                        @endforeach
                      </ul>

                    </li>
                  @endforeach
                </ul>
              </li>

              <li class="sale-noti">
                <a href="product">Sale</a>
              </li>

              <li>
                <a href="cart">Features</a>
              </li>

              <li>
                <a href="blog.html">Blog</a>
              </li>

              <li>
                <a href="about.html">About</a>
              </li>

              <li>
                <a href="contact.html">Contact</a>
              </li>
            </ul>
          </nav>
        </div>

        <!-- Header Icon -->
        <div class="header-icons">
          <a href="#" class="header-wrapicon1 dis-block">

          </a>
          <div class="collapse navbar-collapse" id="app-navbar-collapse">
            <!-- Left Side Of Navbar -->
            <ul class="nav navbar-nav">
            </ul>

            <!-- Right Side Of Navbar -->
            <ul class="nav navbar-nav navbar-right">
              <!-- Authentication Links -->
              @if (Auth::guest())
              <li><a href="{{ url('/login') }}">Login</a></li>
              <li><a href="{{ url('/register') }}">Register</a></li>
              @else
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                  <img src="principal/images/icons/icon-header-01.png" class="header-icon1" alt="ICON">
                  {{ Auth::user()->name }} <span class="caret"></span>
                </a>

                <ul class="dropdown-menu" role="menu">
                  @if(Auth::user()->rule==10)
                  <li><a href="{{ url('/admin-data') }}"><i class="fa fa-btn fa-user-circle"></i>My Account</a></li>
                  @else 
                  <li><a href="{{ url('/MyAccount') }}"><i class="fa fa-btn fa-user-circle"></i>My Account</a></li>
                  @endif
                  <li><a href="{{ url('/logout') }}"><i class="fa fa-btn fa-sign-out"></i>Logout</a></li>
                </ul>
              </li>
              @endif
            </ul>
          </div>
        </div>
        <span class="linedivide1"></span>

        <div class="header-wrapicon2">
          <img src="principal/images/icons/icon-header-02.png" class="header-icon1 js-show-header-dropdown" alt="ICON">
          <span class="header-icons-noti">{{Cart::count()}}</span>

          <!-- Header cart noti -->
          <div class="header-cart header-dropdown">
            <ul class="header-cart-wrapitem">
              @foreach(Cart::content() as $item)
              <li class="header-cart-item">
                <div class="header-cart-item-img">
                  @if($item->options->image!='')
                  <img src="images/{{$item->options->image}}" alt="IMG">
                  @endif
                  @if($item->options->image_link!='')
                  <img src="{{$item->options->image_link}}" alt="IMG">
                  @endif
                </div>

                <div class="header-cart-item-txt">
                  <a href="#" class="header-cart-item-name">
                    {{$item->name}}
                  </a>

                  <span class="header-cart-item-info">
                    {{$item->qty}} x ${{$item->price}}
                  </span>
                </div>
              </li>

              @endforeach
            </ul>

            <div class="header-cart-total">
             Total: ${{Cart::subtotal()}}
           </div>

           <div class="header-cart-buttons">
            <div class="header-cart-wrapbtn">
              <!-- Button -->
              <a href="cart" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
                View Cart
              </a>
            </div>

            <div class="header-cart-wrapbtn">
              <!-- Button -->
              <a href="#" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
                Check Out
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Header Mobile -->
<div class="wrap_header_mobile">
  <!-- Logo moblie -->
  <a href="" class="logo-mobile">
    <img src="principal/images/icons/logo.png" alt="IMG-LOGO">
  </a>

        <ul class="nav navbar-nav navbar-right">
          <!-- Authentication Links -->
          @if (Auth::guest())
          <li><a href="{{ url('/login') }}">Login</a></li>
          <li><a href="{{ url('/register') }}">Register</a></li>
          @else
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
              <img src="principal/images/icons/icon-header-01.png" class="header-icon1" alt="ICON">
              {{ Auth::user()->name }} <span class="caret"></span>
            </a>

            <ul class="dropdown-menu" role="menu">
              @if(Auth::user()->rule==10)
              <li><a href="{{ url('/admin-data') }}"><i class="fa fa-btn fa-user-circle"></i>My Account</a></li>
              @else 
              <li><a href="{{ url('') }}"><i class="fa fa-btn fa-user-circle"></i>My Account</a></li>
              @endif
              <li><a href="{{ url('/logout') }}"><i class="fa fa-btn fa-sign-out"></i>Logout</a></li>
            </ul>
          </li>
          @endif
        </ul>
      
  <!-- Button show menu -->
  <div class="btn-show-menu">
    <!-- Header Icon mobile -->
    <div class="header-icons-mobile">



      <span class="linedivide2"></span>

      <div class="header-wrapicon2">
        <img src="principal/images/icons/icon-header-02.png" class="header-icon1 js-show-header-dropdown" alt="ICON">
        <span class="header-icons-noti">{{Cart::count()}}</span>

        <!-- Header cart noti -->
        <div class="header-cart header-dropdown">
          <ul class="header-cart-wrapitem">
            @foreach(Cart::content() as $item)
            <li class="header-cart-item">
              <div class="header-cart-item-img">
                <img src="images/{{$item->options->image}}" alt="IMG">
              </div>

              <div class="header-cart-item-txt">
                <a href="#" class="header-cart-item-name">
                  {{$item->name}}
                </a>

                <span class="header-cart-item-info">
                  {{$item->qty}} x ${{$item->price}}
                </span>
              </div>
            </li>

            @endforeach
          </ul>

          <div class="header-cart-total">
           Total: ${{Cart::subtotal()}}
         </div>

         <div class="header-cart-buttons">
          <div class="header-cart-wrapbtn">
            <!-- Button -->
            <a href="cart" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
              View Cart
            </a>
          </div>

          <div class="header-cart-wrapbtn">
            <!-- Button -->
            <a href="#" class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
              Check Out
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="btn-show-menu-mobile hamburger hamburger--squeeze">
    <span class="hamburger-box">
      <span class="hamburger-inner"></span>
    </span>
  </div>
</div>
</div>

<!-- Menu Mobile -->
<div class="wrap-side-menu" >
  <nav class="side-menu">
    <ul class="main-menu">
      <li class="item-topbar-mobile p-l-20 p-t-8 p-b-8">
        <span class="topbar-child1">
          Free shipping for standard order over $100
        </span>
      </li>

      <li class="item-topbar-mobile p-l-20 p-t-8 p-b-8">
        <div class="topbar-child2-mobile">
          <span class="topbar-email">
            fashe@example.com
          </span>

          <div class="topbar-language rs1-select2">
            <select class="selection-1" name="time">
              <option>USD</option>
              <option>EUR</option>
            </select>
          </div>
        </div>
      </li>

      <li class="item-topbar-mobile p-l-10">
        <div class="topbar-social-mobile">
          <a href="#" class="topbar-social-item fa fa-facebook"></a>
          <a href="#" class="topbar-social-item fa fa-instagram"></a>
          <a href="#" class="topbar-social-item fa fa-pinterest-p"></a>
          <a href="#" class="topbar-social-item fa fa-snapchat-ghost"></a>
          <a href="#" class="topbar-social-item fa fa-youtube-play"></a>
        </div>
      </li>

      <li class="item-menu-mobile">
        <a href="">Home</a>
        <ul class="sub-menu">

        </ul>
        <i class="arrow-main-menu fa fa-angle-right" aria-hidden="true"></i>
      </li>

      <li class="item-menu-mobile">
        <a href="product">Shop</a>

          <ul class="sub-menu">
            @foreach($categorie_return as $key=>$value)
            <li><a href="">{{$key}}</a></li>
            @endforeach
          </ul>
        <i class="arrow-main-menu fa fa-angle-right" aria-hidden="true"></i>
      </li>

      <li class="item-menu-mobile">
        <a href="product">Sale</a>
      </li>

      <li class="item-menu-mobile">
        <a href="cart">Features</a>
      </li>

      <li class="item-menu-mobile">
        <a href="blog.html">Blog</a>
      </li>

      <li class="item-menu-mobile">
        <a href="about.html">About</a>
      </li>

      <li class="item-menu-mobile">
        <a href="contact.html">Contact</a>
      </li>
    </ul>
  </nav>
</div>
</header>

@yield('content')


<footer class="bg6 p-t-45 p-b-43 p-l-45 p-r-45">
  <div class="flex-w p-b-90">
    <div class="w-size6 p-t-30 p-l-15 p-r-15 respon3">
      <h4 class="s-text12 p-b-30">
        GET IN TOUCH
      </h4>

      <div>
        <p class="s-text7 w-size27">
          Any questions? Let us know in store at 32 Gheorghe Casu, Chisinau
        </p>

        <div class="flex-m p-t-30">
          <a href="#" class="fs-18 color1 p-r-20 fa fa-facebook"></a>
          <a href="#" class="fs-18 color1 p-r-20 fa fa-instagram"></a>
          <a href="#" class="fs-18 color1 p-r-20 fa fa-pinterest-p"></a>
          <a href="#" class="fs-18 color1 p-r-20 fa fa-snapchat-ghost"></a>
          <a href="#" class="fs-18 color1 p-r-20 fa fa-youtube-play"></a>
        </div>
      </div>
    </div>

    <div class="w-size7 p-t-30 p-l-15 p-r-15 respon4">
      <h4 class="s-text12 p-b-30">
        Categories
      </h4>

      <ul>
        <li class="p-b-9">
          <a href="#" class="s-text7">
            Men
          </a>
        </li>

        <li class="p-b-9">
          <a href="#" class="s-text7">
            Women
          </a>
        </li>

        <li class="p-b-9">
          <a href="#" class="s-text7">
            Dresses
          </a>
        </li>

        <li class="p-b-9">
          <a href="#" class="s-text7">
            Sunglasses
          </a>
        </li>
      </ul>
    </div>

    <div class="w-size7 p-t-30 p-l-15 p-r-15 respon4">
      <h4 class="s-text12 p-b-30">
        Links
      </h4>

      <ul>
        <li class="p-b-9">
          <a href="#" class="s-text7">
            Search
          </a>
        </li>

        <li class="p-b-9">
          <a href="#" class="s-text7">
            About Us
          </a>
        </li>

        <li class="p-b-9">
          <a href="#" class="s-text7">
            Contact Us
          </a>
        </li>

        <li class="p-b-9">
          <a href="#" class="s-text7">
            Returns
          </a>
        </li>
      </ul>
    </div>

    <div class="w-size7 p-t-30 p-l-15 p-r-15 respon4">
      <h4 class="s-text12 p-b-30">
        Help
      </h4>

      <ul>
        <li class="p-b-9">
          <a href="#" class="s-text7">
            Track Order
          </a>
        </li>

        <li class="p-b-9">
          <a href="#" class="s-text7">
            Returns
          </a>
        </li>

        <li class="p-b-9">
          <a href="#" class="s-text7">
            Shipping
          </a>
        </li>

        <li class="p-b-9">
          <a href="#" class="s-text7">
            FAQs
          </a>
        </li>
      </ul>
    </div>

    <div class="w-size8 p-t-30 p-l-15 p-r-15 respon3">
      <h4 class="s-text12 p-b-30">
        Newsletter
      </h4>

      <form>
        <div class="effect1 w-size9">
          <input class="s-text7 bg6 w-full p-b-5" type="text" name="email" placeholder="email@example.com">
          <span class="effect1-line"></span>
        </div>

        <div class="w-size2 p-t-20">
          <!-- Button -->
          <button class="flex-c-m size2 bg4 bo-rad-23 hov1 m-text3 trans-0-4">
            Subscribe
          </button>
        </div>

      </form>
    </div>
  </div>

  <div class="t-center p-l-15 p-r-15">
    <a href="#">
      <img class="h-size2" src="principal/images/icons/paypal.png" alt="IMG-PAYPAL">
    </a>

    <a href="#">
      <img class="h-size2" src="principal/images/icons/visa.png" alt="IMG-VISA">
    </a>

    <a href="#">
      <img class="h-size2" src="principal/images/icons/mastercard.png" alt="IMG-MASTERCARD">
    </a>

    <a href="#">
      <img class="h-size2" src="principal/images/icons/express.png" alt="IMG-EXPRESS">
    </a>

    <a href="#">
      <img class="h-size2" src="principal/images/icons/discover.png" alt="IMG-DISCOVER">
    </a>

    <div class="t-center s-text8 p-t-20">
      Copyright © 2018 All rights reserved. IA1501
    </div>
  </div>
</footer>



<!-- Back to top -->
<div class="btn-back-to-top bg0-hov" id="myBtn">
  <span class="symbol-btn-back-to-top">
    <i class="fa fa-angle-double-up" aria-hidden="true"></i>
  </span>
</div>

<!-- Container Selection1 -->
<div id="dropDownSelect1"></div>
<div id="dropDownSelect2"></div>



<!--===============================================================================================-->
<script type="text/javascript" src="principal/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script type="text/javascript" src="principal/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script type="text/javascript" src="principal/vendor/bootstrap/js/popper.js"></script>
<script type="text/javascript" src="principal/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script type="text/javascript" src="principal/vendor/select2/select2.min.js"></script>
<script type="text/javascript">
  $(".selection-1").select2({
    minimumResultsForSearch: 20,
    dropdownParent: $('#dropDownSelect1')
  });
  $(".selection-2").select2({
    minimumResultsForSearch: 20,
    dropdownParent: $('#dropDownSelect1')
  });
</script>
<!--===============================================================================================-->
<script type="text/javascript" src="principal/vendor/slick/slick.min.js"></script>
<script type="text/javascript" src="principal/js/slick-custom.js"></script>
<!--===============================================================================================-->
<script type="text/javascript" src="principal/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<script type="text/javascript" src="principal/vendor/lightbox2/js/lightbox.min.js"></script>
<!--===============================================================================================-->
<script type="text/javascript" src="principal/vendor/sweetalert/sweetalert.min.js"></script>

<script type="text/javascript">
  $('.block2-btn-addcart').each(function(){
    var nameProduct = $(this).parents('.block2').find('.block2-name').html();
    $(this).on('click', function(){


      var id_product = $(this).parents('.block2').find('#idProduct').html();
      var name = $(this).parents('.block2').find('.block2-name').html();
      var price = $(this).parents('.block2').find('.block2-price').html();
      var url="{{URL::to('add_to_cart')}}"+"/"+id_product+"/"+name+"/1"+"/"+price;
      $.ajax({ 
        type: 'GET', 
        url: url, 
        data: { get_param: 'value' }, 
        success: function (data) {
          swal(nameProduct, "is added to cart !", "success")
          .then((value) => {
            location.reload();
          });

        }
      });
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
        url: url, 
        data: { get_param: 'value' }, 
        success: function (data) {

          location.reload();


        }
      });
    });
  });


</script>

<!--===============================================================================================-->
<script src="principal/js/main.js"></script>

</body>
</html>