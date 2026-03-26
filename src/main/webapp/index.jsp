<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.dto.*" %>
<%@page import="com.dbs.*" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  		.con2{
  			display: inline-block;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: space-between;
            margin-left:40px;
  		}

        

        .product-card img:hover {
            transform: scale(1.03);
        }

        .product-name {
            margin: 10px 0px 5px;
            font-size: 18px;
            font-weight: bold;
        }

        .product-price {
            color: #27ae60;
            font-size: 16px;
        }
         /* Suggestions box */
    .suggestions-box {
      position: flex;
      top: 60px;
      left: 20px;
      width: 150%;
      max-width: 900px;
      background: white;
      border: 1px solid #ddd;
      border-top: none;
      box-shadow: 0 2px 6px rgba(0,0,0,0.1);
      max-height: 200px;
      overflow-y: auto;
      z-index: 1000;
      padding: 1%;
    }

    .suggestion-item {
      padding: 12px 20px;
      cursor: pointer;
    }

    .suggestion-item:hover {
      background-color: #f0f0f0;
    }
        
    </style>

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="images/icons/favicon.png" />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="vendor/bootstrap/css/bootstrap.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="fonts/font-awesome-4.7.0/css/font-awesome.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="fonts/iconic/css/material-design-iconic-font.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="fonts/linearicons-v1.0.0/icon-font.min.css"
    />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css" />
    <!--===============================================================================================-->
    <link
-      rel="stylesheet"
      type="text/css"
      href="vendor/css-hamburgers/hamburgers.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="vendor/animsition/css/animsition.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="vendor/select2/select2.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="vendor/daterangepicker/daterangepicker.css"
    />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/slick/slick.css" />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="vendor/MagnificPopup/magnific-popup.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="vendor/perfect-scrollbar/perfect-scrollbar.css"
    />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/util.css" />
    <link rel="stylesheet" type="text/css" href="css/main.css" />
    <!--===============================================================================================-->
  </head>
  <script>
function showHint(str) {
  if (str.length == 0) {
    document.getElementById("suggestions").innerHTML = "";
    return;
  } else {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("suggestions").innerHTML = this.responseText;
      }
    };
    xmlhttp.open("GET", "searchbarservlet?q=" + encodeURIComponent(str), true);
    xmlhttp.send();
  }
}
</script>
  <body class="animsition">
    <!-- Header -->
    <header>
      <!-- Header desktop -->
      <div class="container-menu-desktop">
        <!-- Topbar -->
        <div class="top-bar">
          <div class="content-topbar flex-sb-m h-full container">
            <div class="left-top-bar">
              Free shipping for standard order over Rs.7,000
            </div>

            <div class="right-top-bar flex-w h-full">
              <a href="Help&faqwithoutlogin.jsp" class="flex-c-m trans-04 p-lr-25"> Help & FAQs </a>    
  			  <a href="login.jsp" class="flex-c-m trans-04 p-lr-25">Login </a>
              <a href="Emailverifyregistration.jsp" class="flex-c-m trans-04 p-lr-25"> Registration </a>
            </div>
          </div>
        </div>

        <div class="wrap-menu-desktop">
          <nav class="limiter-menu-desktop container">
            <!-- Logo desktop -->
            <a href="#" class="logo">
              <h2 style="color: #717fe0">E-cart</h2>
              <!-- <img src="images/icons/logo-01.png" alt="IMG-LOGO" /> -->
            </a>

            <!-- Menu desktop -->
            <div class="menu-desktop">
              <ul class="main-menu">
                <li class="active-menu">
                  <a href="index.jsp">Home</a>
    
                </li>
                <li>
                  <a href="Blogwithoutlogin.jsp">Blog</a>
                </li>

                <li>
                  <a href="aboutwithoutlogin.html">About</a>
                </li>

                <li>
                  <a href="Contactwithoutlogin.jsp">Contact</a>
                </li>
                 <li>
            	<a href="Categorieswithoutlogin.jsp">Categories</a>
          		</li>
              </ul>
            </div>

            <!-- Icon header -->
            <div class="wrap-icon-header flex-w flex-r-m">
              <div
                class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search"
              >
                <i class="zmdi zmdi-search"></i>
              </div>

               <div
                class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 "
              >
                 <a href="ShowCart.jsp"><i class="zmdi zmdi-shopping-cart"></i></a>
              </div>
              
              
               <div  class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11">
               <a
                href="FeedbackForm.jsp"
              >
               <i class="zmdi zmdi-comment-alt"></i>

              </a>
              </div>
              
            </div>
          </nav>
        </div>
      </div>

      <!-- Header Mobile -->
      <div class="wrap-header-mobile">
        <!-- Logo moblie -->
        <div class="logo-mobile">
          <a href="index.html"
            ><img src="images/icons/logo-01" alt="IMG-LOGO"
          /></a>
        </div>

        <!-- Icon header -->
        <div class="wrap-icon-header flex-w flex-r-m m-r-15">
          <div
            class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search"
          >
            <i class="zmdi zmdi-search"></i>
          </div>

          <div
            class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart"
          >
            <i class="zmdi zmdi-shopping-cart"></i>
          </div>

          <a
            href="#"
            class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti"
                      >
            <i class="zmdi zmdi-favorite-outline"></i>
          </a>
        </div>

        <!-- Button show menu -->
        <div class="btn-show-menu-mobile hamburger hamburger--squeeze">
          <span class="hamburger-box">
            <span class="hamburger-inner"></span>
          </span>
        </div>
      </div>

      <!-- Menu Mobile -->
      <div class="menu-mobile">
        <ul class="topbar-mobile">
          <li>
            <div class="left-top-bar">
              Free shipping for standard order over Rs.5,000.
            </div>
          </li>

          <li>
            <div class="right-top-bar flex-w h-full">
              <a href="#" class="flex-c-m p-lr-10 trans-04"> Help & FAQs </a>

              <a href="#" class="flex-c-m p-lr-10 trans-04"> My Account </a>

            </div>
          </li>
        </ul>

        <ul class="main-menu-m">
          <li>
            <a href="index.jsp">Home</a>
            <span class="arrow-main-menu-m">
              <i class="fa fa-angle-right" aria-hidden="true"></i>
            </span>
          </li>

          <li>
            <a href="shoping-cart.html" class="label1 rs1" data-label1="hot">Features</a
            >
          </li>

          <li>
            <a href="Blog.jsp">Blog</a>
          </li>

          <li>
            <a href="about.jsp">About</a>
          </li>

          <li>
            <a href="Contact.jsp">Contact</a>
          </li>
          
          <li>
            <a href="Categories.jsp">Categories</a>
          </li>
        </ul>
      </div>

     <!-- Modal Search -->
      <div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
        <div class="container-search-header">
          <button
            class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search"
          >
            <img src="images/icons/icon-close2.png" alt="CLOSE" />
          </button>

          <form class="wrap-search-header flex-w p-l-15">
            <button class="flex-c-m trans-04">
              <i class="zmdi zmdi-search"></i>
            </button>
            <input type="text" id="searchInput" class="search-input" placeholder="Search names..." onkeyup="showHint(this.value)">
    <div  class="suggestions-box"><a href="#" id="suggestions"></a></div><br>
          </form>
        </div>
      </div>
    </header>
    
    <!-- Cart -->
    <link rel="stylesheet" type="text/css" href="%PUBLIC_URL%/css/util.css" />

    <link rel="stylesheet" type="text/css" href="%PUBLIC_URL%/css/main.css" />
    <div class="wrap-header-cart js-panel-cart">
      <div class="s-full js-hide-cart"></div>

      <div class="header-cart flex-col-l p-l-65 p-r-25">
        <div class="header-cart-title flex-w flex-sb-m p-b-8">
          <span class="mtext-103 cl2"> Your Cart </span>

          <div
            class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-cart"
          >
            <i class="zmdi zmdi-close"></i>
          </div>
        </div>

        <div class="header-cart-content flex-w js-pscroll">
          <ul class="header-cart-wrapitem w-full">
            <li class="header-cart-item flex-w flex-t m-b-12">
              <div class="header-cart-item-img">
                <img src="images/item-cart-01.jpg" alt="IMG" />
              </div>

              <div class="header-cart-item-txt p-t-8">
                <a
                  href="#"
                  class="header-cart-item-name m-b-18 hov-cl1 trans-04"
                >
                  Androids & Iphones Collection.
                </a>

                <span class="header-cart-item-info"> 1 x 5,000 </span>
              </div>
            </li>

            <li class="header-cart-item flex-w flex-t m-b-12">
              <div class="header-cart-item-img">
                <img src="images/item-cart-02.jpg" alt="IMG" />
              </div>

              <div class="header-cart-item-txt p-t-8">
                <a
                  href="#"
                  class="header-cart-item-name m-b-18 hov-cl1 trans-04"
                >
                 Trendy Items.
                </a>

                <span class="header-cart-item-info"> 1 x 10,000 </span>
              </div>
            </li>

            <li class="header-cart-item flex-w flex-t m-b-12">
              <div class="header-cart-item-img">
                <img src="images/item-cart-03.jpg" alt="IMG" />
              </div>

              <div class="header-cart-item-txt p-t-8">
                <a
                  href="#"
                  class="header-cart-item-name m-b-18 hov-cl1 trans-04"
                >
                  Home Decor & Smart Gadgets 
                </a>

                <span class="header-cart-item-info"> 1 x 15000 </span>
              </div>
            </li>
          </ul>

          <div class="w-full">
            <div class="header-cart-total w-full p-tb-40">Total: Rs. 50,000</div>

            <div class="header-cart-buttons flex-w w-full">
              <a
                href="shoping-cart.html"
                class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10"
              >
                Entertainment 
              </a>

              <a
                href="shoping-cart.html"
                class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-b-10"
              >
                Check Out
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Slider -->
    <section class="section-slide">
      <div class="wrap-slick1">
        <div class="slick1">
          <div
            class="item-slick1"
            style="background-image: url(img/rachit-tank-2cFZ_FB08UM-unsplash.jpg)"
          >
            <div class="container h-full">
              <div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
                <div
                  class="layer-slick1 animated visible-false"
                  data-appear="fadeInDown"
                  data-delay="0"
                >
                  <span class="ltext-101 cl2 respon2">
                    TRENDY GADGETS 
                  </span>
                </div>

                <div
                  class="layer-slick1 animated visible-false"
                  data-appear="fadeInUp"
                  data-delay="800"
                >
                  <h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">
                    NEW SEASON
                  </h2>
                </div>

                <div
                  class="layer-slick1 animated visible-false"
                  data-appear="zoomIn"
                  data-delay="1600"
                >
                  <a
                    href="Homeproductdisplaywithoutlogin?cnm=watch"
                    class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04"
                  >
                    Shop Now
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div
            class="item-slick1"
            style="background-image: url(img/blocks-01voTCIdeWw-unsplash.jpg)"
          >
            <div class="container h-full">
              <div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
                <div
                  class="layer-slick1 animated visible-false"
                  data-appear="rollIn"
                  data-delay="0"
                >
                  <span class="ltext-101 cl2 respon2"> Home Decor </span>
                </div>

                <div
                  class="layer-slick1 animated visible-false"
                  data-appear="lightSpeedIn"
                  data-delay="800"
                >
                  <h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">
                    Latest Appliances
                  </h2>
                </div>

                <div
                  class="layer-slick1 animated visible-false"
                  data-appear="slideInUp"
                  data-delay="1600"
                >
                  <a
                    href="Homeproductdisplaywithoutlogin?cnm=mobile"
                    class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04"
                  >
                    Shop Now
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div
            class="item-slick1"
            style="background-image: url(img/suleman-serwar-L0NApha-j0w-unsplash.jpg)"
          >
            <div class="container h-full">
              <div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
                <div
                  class="layer-slick1 animated visible-false"
                  data-appear="rotateInDownLeft"
                  data-delay="0"
                >
                  <span class="ltext-101 cl2 respon2">
                    Divine music & technologies
                  </span>
                </div>

                <div
                  class="layer-slick1 animated visible-false"
                  data-appear="rotateInUpRight"
                  data-delay="800"
                >
                  <h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1">
                    New arrivals
                  </h2>
                </div>

                <div
                  class="layer-slick1 animated visible-false"
                  data-appear="rotateIn"
                  data-delay="1600"
                >
                  <a
                    href="Homeproductdisplaywithoutlogin?cnm=headphones"
                    class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04"
                  >
                    Shop Now
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Banner -->
    <div class="sec-banner bg0 p-t-80 p-b-50">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-xl-4 p-b-30 m-lr-auto">
            <!-- Block1 -->
            <div class="block1 wrap-pic-w">
              <img src="img/blocks-01voTCIdeWw-unsplash.jpg" alt="IMG-BANNER" />

              <a
                href="Homeproductdisplaywithoutlogin?cnm=mobile"
                class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3"
              >
                <div class="block1-txt-child1 flex-col-l">
                  <span class="block1-name ltext-102 trans-04 p-b-8">
                    Smart Phone
                  </span>

                  <span class="block1-info stext-102 trans-04">
                   New arrivals
                  </span>
                </div>

                <div class="block1-txt-child2 p-b-4 trans-05">
                  <div class="block1-link stext-101 cl0 trans-09">Shop Now</div>
                </div>
              </a>
            </div>
          </div>

          <div class="col-md-6 col-xl-4 p-b-30 m-lr-auto">
            <!-- Block1 -->
            <div class="block1 wrap-pic-w">
              <img src="img/rachit-tank-2cFZ_FB08UM-unsplash.jpg" alt="IMG-BANNER" />

              <a
                href="Homeproductdisplaywithoutlogin?cnm=watch"
                class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3"
              >
                <div class="block1-txt-child1 flex-col-l">
                  <span class="block1-name ltext-102 trans-04 p-b-8">
                    Smart watches
                  </span>

                  <span class="block1-info stext-102 trans-04">
                    New collection
                  </span>
                </div>

                <div class="block1-txt-child2 p-b-4 trans-05">
                  <div class="block1-link stext-101 cl0 trans-09">Shop Now</div>
                </div>
              </a>
            </div>
          </div>

          <div class="col-md-6 col-xl-4 p-b-30 m-lr-auto">
            <!-- Block1 -->
            <div class="block1 wrap-pic-w">
              <img src="img/suleman-serwar-L0NApha-j0w-unsplash.jpg" alt="IMG-BANNER" />

              <a
                 href="Homeproductdisplaywithoutlogin?cnm=headphones"
                class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3"
              >
                <div class="block1-txt-child1 flex-col-l">
                  <span class="block1-name ltext-102 trans-04 p-b-8">
                    Headphones
                  </span>

                  <span class="block1-info stext-102 trans-04">
                    New Trend
                  </span>
                </div>

                <div class="block1-txt-child2 p-b-4 trans-05">
                  <div class="block1-link stext-101 cl0 trans-09">Shop Now</div>
                </div>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Product -->
    <section class="bg0 p-t-23 p-b-140">
      <div class="container">
        <div class="p-b-10">
          <h3 class="ltext-103 cl5">Product Overview</h3>
        </div>

        <%
		DatabaseCon db1= new DatabaseCon();
		ArrayList productget=db1.showproducts();
		session.setAttribute("productget",productget);
		
	%>
	 <%
			ArrayList al1=(ArrayList)session.getAttribute("productget");
		if(al1 !=null)
		{
			for(int i=0; i<al1.size(); i++)
			{
				Productget gt =(Productget)al1.get(i);
		%>
		
		<div class="con2">
    <div class="product-grid">
	    <div class="product-card">
	    <div class="block2">
	              <div class="block2-pic hov-img0">
	        <a href="Productusersearch2?pid=<%= gt.getProductid() %>">
	            <img src="img/<%= gt.getImage() %>"  width="300" height="200" alt="Product 1">
	        </a>
	        </div>
	        <a href="Productusersearch2?pid=<%= gt.getProductid() %>" class="product-name"><br><%= gt.getProductname() %></a>
	        <div class="product-price">Price: <%= gt.getPrice() %></div>
	    </div>
	    </div>
	    </div>
	    </div>         
	     <% 
				    
			}
			
		}
		%>

      
      </div>
    </section>

    <!-- Footer -->
    <footer class="bg3 p-t-75 p-b-32">
      <div class="container">
        <div class="row">
          <div class="col-sm-6 col-lg-3 p-b-50">
            <h4 class="stext-301 cl0 p-b-30">Categories</h4>

            <ul>
              <li class="p-b-10">
                <a href="Homeproductdisplaywithoutlogin?cnm=mobile" class="stext-107 cl7 hov-cl1 trans-04"> Smartphones </a>
              </li>

              <li class="p-b-10">
                <a href="Homeproductdisplaywithoutlogin?cnm=watch" class="stext-107 cl7 hov-cl1 trans-04"> Smartwatches </a>
              </li>

              <li class="p-b-10">
                <a href="Homeproductdisplaywithoutlogin?cnm=laptop" class="stext-107 cl7 hov-cl1 trans-04"> Laptops </a>
              </li>

              <li class="p-b-10">
                <a href="Homeproductdisplaywithoutlogin?cnm=headphones" class="stext-107 cl7 hov-cl1 trans-04"> Headphones </a>
              </li>
            </ul>
          </div>

         

          <div class="col-sm-6 col-lg-3 p-b-50">
            <h4 class="stext-301 cl0 p-b-30">GET IN TOUCH</h4>

            <p class="stext-107 cl7 size-201">
              Any questions? Let us know at The E-Cart, Indore
              M.P,India 452022 or call us on (+91) 96 716 6879
            </p>

            <div class="p-t-27">
              <a href="https://www.facebook.com/" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                <i class="fa fa-facebook"></i>
              </a>

              <a href="https://www.instagram.com/accounts/login/?hl=en" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
                <i class="fa fa-instagram"></i>
              </a>
              
              <a href="https://www.linkedin.com/login" class="fs-18 cl7 hov-cl1 trans-04 m-r-16" target="_blank">
  				<i class="fa fa-linkedin"></i>
			</a>

            </div>
          </div>

        </div>


          <p class="stext-107 cl6 txt-center">
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;
            <script>
              document.write(new Date().getFullYear());
            </script>
            <h6 style="color: white;margin-left: 25%;">All rights reserved | This website is made By  <b><a href="#" target="_blank">Devansh Barod</a></b> And <b><a href="#" target="_blank">Poorvahi Kadwe</a></b></h6>
            
          </p>
        </div>
      </div>
    </footer>


    <!--===============================================================================================-->
    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/select2/select2.min.js"></script>
    <script>
      $(".js-select2").each(function () {
        $(this).select2({
          minimumResultsForSearch: 20,
          dropdownParent: $(this).next(".dropDownSelect2"),
        });
      });
    </script>
    <!--===============================================================================================-->
    <script src="vendor/daterangepicker/moment.min.js"></script>
    <script src="vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/slick/slick.min.js"></script>
    <script src="js/slick-custom.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/parallax100/parallax100.js"></script>
    <script>
      $(".parallax100").parallax100();
    </script>
    <!--===============================================================================================-->
    <script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
    <script>
      $(".gallery-lb").each(function () {
        // the containers for all your galleries
        $(this).magnificPopup({
          delegate: "a", // the selector for gallery item
          type: "image",
          gallery: {
            enabled: true,
          },
          mainClass: "mfp-fade",
        });
      });
    </script>
    <!--===============================================================================================-->
    <script src="vendor/isotope/isotope.pkgd.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/sweetalert/sweetalert.min.js"></script>
    <script>
      $(".js-addwish-b2").on("click", function (e) {
        e.preventDefault();
      });

      $(".js-addwish-b2").each(function () {
        var nameProduct = $(this).parent().parent().find(".js-name-b2").html();
        $(this).on("click", function () {
          swal(nameProduct, "is added to wishlist !", "success");

          $(this).addClass("js-addedwish-b2");
          $(this).off("click");
        });
      });

      $(".js-addwish-detail").each(function () {
        var nameProduct = $(this)
          .parent()
          .parent()
          .parent()
          .find(".js-name-detail")
          .html();

        $(this).on("click", function () {
          swal(nameProduct, "is added to wishlist !", "success");

          $(this).addClass("js-addedwish-detail");
          $(this).off("click");
        });
      });

      /*---------------------------------------------*/

      $(".js-addcart-detail").each(function () {
        var nameProduct = $(this)
          .parent()
          .parent()
          .parent()
          .parent()
          .find(".js-name-detail")
          .html();
        $(this).on("click", function () {
          swal(nameProduct, "is added to cart !", "success");
        });
      });
    </script>
    <!--===============================================================================================-->
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script>
      $(".js-pscroll").each(function () {
        $(this).css("position", "relative");
        $(this).css("overflow", "hidden");
        var ps = new PerfectScrollbar(this, {
          wheelSpeed: 1,
          scrollingThreshold: 1000,
          wheelPropagation: false,
        });

        $(window).on("resize", function () {
          ps.update();
        });
      });
    </script>
    <!--===============================================================================================-->
    <script src="js/main.js"></script>
  </body>
</html>