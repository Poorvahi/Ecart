<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Blog</title>
    <meta charset="UTF-8" />
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
      rel="stylesheet"
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
      href="vendor/perfect-scrollbar/perfect-scrollbar.css"
    />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/util.css" />
    <link rel="stylesheet" type="text/css" href="css/main.css" />
    <!--===============================================================================================-->
  </head>
  <style>
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
    <header class="header-v4">
      <!-- Header desktop -->
      <div class="container-menu-desktop">
        <!-- Topbar -->
        <div class="top-bar">
          <div class="content-topbar flex-sb-m h-full container">
            <div class="left-top-bar">
              Free shipping for standard order over Rs. 15,000
            </div>
			<% String newemail= (String) session.getAttribute("email");
            %>
            <div class="right-top-bar flex-w h-full">
              <a href="#" class="flex-c-m trans-04 p-lr-25"> Help & FAQs </a>

              <a href="Myaccount.jsp" class="flex-c-m trans-04 p-lr-25"> My Account </a>

              <a href="#" class="flex-c-m trans-04 p-lr-25"> <%=newemail%> </a>

              <a href="Logout.jsp" class="flex-c-m trans-04 p-lr-25"> Logout </a>
            </div>
          </div>
        </div>

        <div class="wrap-menu-desktop how-shadow1">
          <nav class="limiter-menu-desktop container">
            <!-- Logo desktop -->
            <a href="#" class="logo">
              <h2 style="color: #717fe0">Style Savvy</h2>
            </a>

            <!-- Menu desktop -->
            <div class="menu-desktop">
              <ul class="main-menu">
                <li>
                  <a href="index.jsp">Home</a>
                  
                </li>

                <li class="active-menu">
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

           <!-- Icon header -->
            <div class="wrap-icon-header flex-w flex-r-m">
              <div
                class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search"
              >
                <i class="zmdi zmdi-search"></i>
              </div>

              <div
                class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11"
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
            ><img src="images/icons/logo-01.png" alt="IMG-LOGO"
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
            class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10"
          >
            <a href="ShowCart.jsp"><i class="zmdi zmdi-shopping-cart"></i></a>
          </div>

          <a
            href="#"
            class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti"
            data-notify="0"
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
              Free shipping for standard order over Rs.30,000
            </div>
          </li>

          <li>
            <div class="right-top-bar flex-w h-full">
              <a href="#" class="flex-c-m p-lr-10 trans-04"> Help & FAQs </a>

              <a href="#" class="flex-c-m p-lr-10 trans-04"> My Account </a>

              <a href="#" class="flex-c-m p-lr-10 trans-04"> EN </a>

              <a href="#" class="flex-c-m p-lr-10 trans-04"> USD </a>
            </div>
          </li>
        </ul>

        <ul class="main-menu-m">
          <li>
            <a href="index.jsp">Home</a>
            <ul class="sub-menu-m">
              <li><a href="index.jsp">Homepage 1</a></li>
            </ul>
            <span class="arrow-main-menu-m">
              <i class="fa fa-angle-right" aria-hidden="true"></i>
            </span>
          </li>

          <li>
            <a href="shoping-cart.html" class="label1 rs1" data-label1="hot"
              >Features</a
            >
          </li>

          <li>
            <a href="Blog.jsp">Blog</a>
          </li>

          <li>
            <a href="about.html">About</a>
          </li>

          <li>
            <a href="contact.html">Contact</a>
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
                  Home Decor
                </a>

                <span class="header-cart-item-info"> 1 x $19.00 </span>
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
                  Converse All Star
                </a>

                <span class="header-cart-item-info"> 1 x $39.00 </span>
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
                  Nixon Porter Leather
                </a>

                <span class="header-cart-item-info"> 1 x $17.00 </span>
              </div>
            </li>
          </ul>

          <div class="w-full">
            <div class="header-cart-total w-full p-tb-40">Total: $75.00</div>

            <div class="header-cart-buttons flex-w w-full">
              <a
                href="shoping-cart.html"
                class="flex-c-m stext-101 cl0 size-107 bg3 bor2 hov-btn3 p-lr-15 trans-04 m-r-8 m-b-10"
              >
                View Cart
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

    <!-- Title page -->
    <section
      class="bg-img1 txt-center p-lr-15 p-tb-92"
      style="background-image: url('images/bg-02.jpg')"
    >
      <h2 class="ltext-105 cl0 txt-center">Blog</h2>
    </section>

    <!-- Content page -->
    <section class="bg0 p-t-62 p-b-60">
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-lg-9 p-b-80">
            <div class="p-r-45 p-r-0-lg">
              <!-- item blog -->
              <div class="p-b-63">
                <a href="blog-detail.html" class="hov-img0 how-pos5-parent">
                  <img src="img/ip14-s.png" alt="IMG-BLOG" />

                  <div class="flex-col-c-m size-123 bg9 how-pos5">
                    <span class="ltext-107 cl2 txt-center"> 22 </span>

                    <span class="stext-109 cl3 txt-center"> June 2025 </span>
                  </div>
                </a>

                <div class="p-t-32">
                  <h4 class="p-b-15">
                    <a
                      href="blog-detail.html"
                      class="ltext-108 cl2 hov-cl1 trans-04"
                    >
                      Smart choices, smarter electronics
                    </a>
                  </h4>

                  <p class="stext-117 cl6">
                    Bringing technology closer to you
                    Upgrade your life with smarter tech
                    From wires to wireless, we’ve got it all.
                  </p>

                  <div class="flex-w flex-sb-m p-t-18">
                    <span class="flex-w flex-m stext-111 cl2 p-r-30 m-tb-10">
                      <span>
                        <span class="cl4">By</span> Admin
                        <span class="cl12 m-l-4 m-r-6">|</span>
                      </span>

                      <span>
                        Style, Decor, Technology
                        <span class="cl12 m-l-4 m-r-6">|</span>
                      </span>
                    </span>

                    <a
                      href="blog-detail.html"
                      class="stext-101 cl2 hov-cl1 trans-04 m-tb-10"
                    >
                      Continue Reading

                      <i class="fa fa-long-arrow-right m-l-9"></i>
                    </a>
                  </div>
                </div>
              </div>

              <!-- item blog -->
              <div class="p-b-63">
                <a href="blog-detail.html" class="hov-img0 how-pos5-parent">
                  <img src="img/daniel-norris-ZN_86cZrSN0-unsplash.jpg" alt="IMG-BLOG" />

                  <div class="flex-col-c-m size-123 bg9 how-pos5">
                    <span class="ltext-107 cl2 txt-center"> 11 </span>

                    <span class="stext-109 cl3 txt-center"> July 2025 </span>
                  </div>
                </a>

                <div class="p-t-32">
                  <h4 class="p-b-15">
                    <a
                      href="blog-detail.html"
                      class="ltext-108 cl2 hov-cl1 trans-04"
                    >
                      “Your one-stop shop for everything electronic.”
                    </a>
                  </h4>

                  <p class="stext-117 cl6">
                    Why Buy Electronics Online?
                    Shopping for electronics online is convenient, fast, and affordable. 
                    From smartphones to smart home devices, you can explore the latest technology at your fingertips. 
                    At Style Savyy Shops, we bring you trusted brands, great deals, 
                    and gadgets that make life smarter.
                  </p>

                  <div class="flex-w flex-sb-m p-t-18">
                    <span class="flex-w flex-m stext-111 cl2 p-r-30 m-tb-10">
                      <span>
                        <span class="cl4">By</span> Admin
                        <span class="cl12 m-l-4 m-r-6">|</span>
                      </span>

                      <span>
                       Lifestyle, Techy, Decor
                        <span class="cl12 m-l-4 m-r-6">|</span>
                      </span>

                      <span> 8 Comments </span>
                    </span>

                    <a
                      href="blog-detail.html"
                      class="stext-101 cl2 hov-cl1 trans-04 m-tb-10"
                    >
                      Continue Reading

                      <i class="fa fa-long-arrow-right m-l-9"></i>
                    </a>
                  </div>
                </div>
              </div>

              <!-- item blog -->
              <div class="p-b-63">
                <a href="blog-detail.html" class="hov-img0 how-pos5-parent">
                  <img src="img/ady-teenagerinro-V8MNPJe8Nt8-unsplash.jpg" alt="IMG-BLOG" />

                  <div class="flex-col-c-m size-123 bg9 how-pos5">
                    <span class="ltext-107 cl2 txt-center"> 16 </span>

                    <span class="stext-109 cl3 txt-center"> Aug 2025 </span>
                  </div>
                </a>

                <div class="p-t-32">
                  <h4 class="p-b-15">
                    <a
                      href="blog-detail.html"
                      class="ltext-108 cl2 hov-cl1 trans-04"
                    >
                     Power Up Your Life with Next-Gen Electronics
                    </a>
                  </h4>

                  <p class="stext-117 cl6">
                    <h5>Why shop with us?</h5>
                  <pre><p>
                    1. Latest tech trends updated regularly
                    2. Affordable prices without compromising quality
                    3. Trusted brands & authentic products
                    4. Fast, reliable delivery
                    Electronics are no longer luxuries—they’re investments in productivity, entertainment, and comfort. 
                    Stay ahead with the right devices and experience how technology can transform your lifestyle.
                  </p></pre>
                  </p>

                  <div class="flex-w flex-sb-m p-t-18">
                    <span class="flex-w flex-m stext-111 cl2 p-r-30 m-tb-10">
                      <span>
                        <span class="cl4">By</span> Admin
                        <span class="cl12 m-l-4 m-r-6">|</span>
                      </span>

                      <span>
                        StreetStyle, Fashion, Couple
                        <span class="cl12 m-l-4 m-r-6">|</span>
                      </span>

                      <span> 8 Comments </span>
                    </span>

                    <a
                      href="blog-detail.html"
                      class="stext-101 cl2 hov-cl1 trans-04 m-tb-10"
                    >
                      Continue Reading

                      <i class="fa fa-long-arrow-right m-l-9"></i>
                    </a>
                  </div>
                </div>
              </div>

              <!-- Pagination -->
              <div class="flex-l-m flex-w w-full p-t-10 m-lr--7">
                <a
                  href="#"
                  class="flex-c-m how-pagination1 trans-04 m-all-7 active-pagination1"
                >
                  1
                </a>

                <a href="#" class="flex-c-m how-pagination1 trans-04 m-all-7">
                  2
                </a>
              </div>
            </div>
          </div>

          <div class="col-md-4 col-lg-3 p-b-80">
            <div class="side-menu">
              <div class="bor17 of-hidden pos-relative">
                <input
                  class="stext-103 cl2 plh4 size-116 p-l-28 p-r-55"
                  type="text"
                  name="search"
                  placeholder="Search"
                />

                <button
                  class="flex-c-m size-122 ab-t-r fs-18 cl4 hov-cl1 trans-04"
                >
                  <i class="zmdi zmdi-search"></i>
                </button>
              </div>

              <div class="p-t-55">
                <h4 class="mtext-112 cl2 p-b-33">Categories</h4>

                <ul>
                  <li class="bor18">
                    <a
                      href="#"
                      class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4"
                    >
                      Home Decor
                    </a>
                  </li>

                  <li class="bor18">
                    <a
                      href="#"
                      class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4"
                    >
                      Appliances
                    </a>
                  </li>

                  <li class="bor18">
                    <a
                      href="#"
                      class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4"
                    >
                      Electronic Gadgets
                    </a>
                  </li>

                  <li class="bor18">
                    <a
                      href="#"
                      class="dis-block stext-115 cl6 hov-cl1 trans-04 p-tb-8 p-lr-4"
                    >
                      Entertainment
                    </a>
                  </li>
                  </li>
                </ul>
              </div>

              <div class="p-t-65">
                <h4 class="mtext-112 cl2 p-b-33">Featured Products</h4>

                <ul>
                  <li class="flex-w flex-t p-b-30">
                    <a href="#" class="wrao-pic-w size-214 hov-ovelay1 m-r-20">
                      <img src="D:\Coaching\Theme HTMLCSS\ProjectTemplet_Universal\img\ip14-1.png" alt="PRODUCT" />
                    </a>

                    <div class="size-215 flex-col-t p-t-8">
                      <a href="#" class="stext-116 cl8 hov-cl1 trans-04">
                      </a>
                    </div>
                  </li>

                  <li class="flex-w flex-t p-b-30">

                    <div class="size-215 flex-col-t p-t-8">
                      <a href="#" class="stext-116 cl8 hov-cl1 trans-04">
                        
                      </a>
                    </div>
                  </li>
                    <div class="size-215 flex-col-t p-t-8">
                      <a href="#" class="stext-116 cl8 hov-cl1 trans-04">
                      </a>
                    </div>
                  </li>
                </ul>
              </div>
              <div class="p-t-50">
                <h4 class="mtext-112 cl2 p-b-27">Tags</h4>

                <div class="flex-w m-r--5">
                  <a
                    href="#"
                    class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5"
                  >
                    Home Decor
                  </a>

                  <a
                    href="#"
                    class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5"
                  >
                    Lifestyle
                  </a>

                  <a
                    href="#"
                    class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5"
                  >
                    Entertainment
                  </a>

                  <a
                    href="#"
                    class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5"
                  >
                    Gadgets
                  </a>

                  <a
                    href="#"
                    class="flex-c-m stext-107 cl6 size-301 bor7 p-lr-15 hov-tag1 trans-04 m-r-5 m-b-5"
                  >
                    Trendy Appliances
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
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


        
    <!-- Back to top -->
    <div class="btn-back-to-top" id="myBtn">
      <span class="symbol-btn-back-to-top">
        <i class="zmdi zmdi-chevron-up"></i>
      </span>
    </div>

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
    <script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
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
