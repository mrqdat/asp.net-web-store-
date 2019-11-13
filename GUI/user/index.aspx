<%@ Page Title="" Language="C#" MasterPageFile="index.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="GUI.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Divisima | eCommerce Template</title>
    <meta charset="UTF-8">
    <meta name="description" content=" Divisima | eCommerce Template">
    <meta name="keywords" content="divisima, eCommerce, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon -->
    <link href="img/favicon.ico" rel="shortcut icon" />

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,300i,400,400i,700,700i" rel="stylesheet">


    <!-- Stylesheets -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/flaticon.css" />
    <link rel="stylesheet" href="css/slicknav.min.css" />
    <link rel="stylesheet" href="css/jquery-ui.min.css" />
    <link rel="stylesheet" href="css/owl.carousel.min.css" />
    <link rel="stylesheet" href="css/animate.css" />
    <link rel="stylesheet" href="css/style.css" />


    <!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Hero section -->
    <section class="hero-section">
        <div class="hero-slider owl-carousel">
            <div class="hs-item set-bg" data-setbg="img/bg-1.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-6 col-lg-7 text-white">
                            <%--<span>New Arrivals</span>
                            <h2>Nikon </h2>--%>
                            <%--<a href="#" class="site-btn sb-line">DISCOVER</a>
                            <a href="#" class="site-btn sb-white">ADD TO CART</a>--%>
                        </div>
                    </div>
                    <%--<div class="offer-card text-white">
                        <span>from</span>
                        <h2>$1999</h2>
                        <p>SHOP NOW</p>
                    </div>--%>
                </div>
            </div>
            <div class="hs-item set-bg" data-setbg="img/bg2.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-6 col-lg-7 text-white">
                            <%--<span>New Arrivals</span>
                            <h2>Canon</h2>--%>
                            <%--<a href="#" class="site-btn sb-line">DISCOVER</a>
                            <a href="#" class="site-btn sb-white">ADD TO CART</a>--%>
                        </div>
                    </div>
                    <%--<div class="offer-card text-white">
                        <span>from</span>
                        <h2>$1299</h2>
                        <p>SHOP NOW</p>
                    </div>--%>
                </div>
            </div>
            <div class="hs-item set-bg" data-setbg="img/bg-3.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-6 col-lg-7 text-white">
                           <%-- <span>New Arrivals</span>
                            <h2>Sony</h2>
                            <a href="#" class="site-btn sb-line">DISCOVER</a>
                            <a href="#" class="site-btn sb-white">ADD TO CART</a>--%>
                        </div>
                    </div>
                    <%--<div class="offer-card text-white">
                        <span>from</span>
                        <h2>$999</h2>
                        <p>SHOP NOW</p>
                    </div>--%>
                </div>
            </div>
            <div class="hs-item set-bg" data-setbg="img/bg-4.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-6 col-lg-7 text-white">
                            <%--<a href="#" class="site-btn sb-line">DISCOVER</a>
                            <a href="#" class="site-btn sb-white">ADD TO CART</a>--%>
                        </div>
                    </div>
                   <%-- <div class="offer-card text-white">
                        <span>from</span>
                        <h2>$799</h2>
                        <p>SHOP NOW</p>
                    </div>--%>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="slide-num-holder" id="snh-1"></div>
        </div>
    </section>
    <!-- Hero section end -->

    <!-- Features section -->
    <section class="features-section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4 p-0 feature">
                    <div class="feature-inner">
                        <div class="feature-icon">
                            <asp:Image runat="server" ID="icon1" src="img/icons/1.png" alt="#"/>
                        </div>
                        <h2>Fast Secure Payments</h2>
                    </div>
                </div>
                <div class="col-md-4 p-0 feature">
                    <div class="feature-inner">
                        <div class="feature-icon">
                            <asp:Image runat="server" ID="icon2" src="img/icons/2.png" alt="#"/>
                        </div>
                        <h2>Premium Products</h2>
                    </div>
                </div>
                <div class="col-md-4 p-0 feature">
                    <div class="feature-inner">
                        <div class="feature-icon">
                            <asp:Image runat="server" ID="icon3" src="img/icons/3.png" alt="#"/>
                        </div>
                        <h2>Free & fast Delivery</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Features section end -->
    <!-- letest product section -->
    <section class="top-letest-product-section">
        <div class="container">
            <div class="section-title">
                <h2>LATEST PRODUCTS</h2>
            </div>
            <div class="product-slider owl-carousel">
                <div class="product-item">
                    <div class="pi-pic">
                        <asp:Image runat="server" ID="product1" src="./img/product/1.png" alt=""/>
                        <div class="pi-links">
                            <a href="cart.aspx" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></a>
                            <a href=" #" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                        </div>
                    </div>
                    <div class="pi-text">
                        <h6>$1335,00</h6>
                        <p>Canon EOS RP </p>
                    </div>
                </div>
                <div class="product-item">
                    <div class="pi-pic">
                        <div class="tag-new">New</div>
                            <asp:Image runat="server" ID="product2" src="./img/product/2.png" alt=""/>
                        <div class="pi-links">
                            <a href="cart.aspx" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></a>
                            <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                        </div>
                    </div>
                    <div class="pi-text">
                        <h6>$1699,00</h6>
                        <p>Canon EOS R</p>
                    </div>
                </div>
                <div class="product-item">
                    <div class="pi-pic">
                        <asp:Image runat="server" ID="product3" src="./img/product/3.png" alt=""/>
                        <div class="pi-links">
                            <a href="cart.aspx" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></a>
                            <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                        </div>
                    </div>
                    <div class="pi-text">
                        <h6>$399,00</h6>
                        <p>Canon EOS 3000D </p>
                    </div>
                </div>
                <div class="product-item">
                    <div class="pi-pic">
                        <asp:Image runat="server" ID="product4" src="./img/product/4.png" alt=""/>
                        <div class="pi-links">
                            <a href="cart.aspx" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></a>
                            <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                        </div>
                    </div>
                    <div class="pi-text">
                        <h6>$999,00</h6>
                        <p>Canon EOS M6 </p>
                    </div>
                </div>
                <div class="product-item">
                    <div class="pi-pic">
                        <asp:Image runat="server" ID="product6" src="./img/product/6.png" alt=""/>
                        <div class="pi-links">
                            <a href="cart.aspx" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></a>
                            <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                        </div>
                    </div>
                    <div class="pi-text">
                        <h6>$799,00</h6>
                        <p>Canon EOS M5 </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- letest product section end -->
    <section class="product-filter-section">
        <div class="container">
            <div class="section-title">
                <h2>BROWSE TOP SELLING PRODUCTS</h2>
            </div>
            <ul class="product-filter-menu">
                
                <li><a href="#">Canon</a></li>
                <li><a href="#">Nikon</a></li>
                <li><a href="#">Nikkor</a></li>
                <li><a href="#">85mm 1,8 USM</a></li>
                <li><a href="#">XT-30</a></li>
                <li><a href="#">Sony a7iv</a></li>
                <li><a href="#">Ziess Batis</a></li>
            </ul>
            <div class="row">

                <asp:Repeater id="dtl_sanpham" runat="server"  >
                    <ItemTemplate>
                        <div class="col-lg-3 col-sm-6">
                            <div class="product-item">
                                <div class="pi-pic">
                                    <asp:Image ID="imgAnhMinhHoa" runat="server" ImageUrl='<%# "img/product/" + Eval("AnhMinhHoa") %>' />   
                                    <div class="pi-links">
<%--                                        <%--<i class=""></i><asp:LinkButton ID="btnThemGH" runat="server" Cssclass="add-card  flaticon-bag"  Text="ADD TO CART" CommandName="ADD TO CART" CommandArgument='<%# Eval("MaSP") %>' />--%>
                                        <asp:LinkButton id="btn_addtocart" runat="server" href="cart.aspx" Cssclass="add-card"  CommandArgument='<%# Eval("MaSP") %>'><i class="flaticon-bag"></i><span>ADD TO CART</span></asp:LinkButton>
                                        <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                                    </div>
                                </div>
                                <div class="pi-text">
                                    <asp:Label ID="lblGiaTien" runat="server" Text='<%# Eval("GiaTien") %>'> </asp:Label> <br />
                                    <asp:Label ID="lblTenSP" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>            
                </asp:Repeater>
             </div>
              <%-- 
                  
                            
                  
                  
                  --%>
               <%-- <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="./img/product/5.png" alt="">
                            <div class="pi-links">
                                <a href="cart.aspx" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></a>
                                <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                            </div>
                        </div>
                        <div class="pi-text">
                            <h6>$1499,00</h6> 
                            <p>Canon EOS 90D </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <div class="tag-sale">ON SALE</div>
                            <img src="./img/product/6.png" alt="">
                            <div class="pi-links">
                                <a href="cart.aspx" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></a>
                                <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                            </div>
                        </div>
                        <div class="pi-text">
                            <h6>$599,00</h6>
                            <p>Canon EOS M50</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="./img/product/7.png" alt="">
                            <div class="pi-links">
                                <a href="cart.aspx" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></a>
                                <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                            </div>
                        </div>
                        <div class="pi-text">
                            <h6>$749,00</h6>
                            <p>Canon EOS M50 + kit 15-45mm </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="./img/product/8.png" alt="">
                            <div class="pi-links">
                                <a href="cart.aspx" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></a>
                                <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                            </div>
                        </div>
                        <div class="pi-text">
                            <h6>$899,00</h6>
                            <p>Canon EOS M50 + 55-200mm zoom lens </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="./img/product/9.png" alt="">
                            <div class="pi-links">
                                <a href="cart.aspx" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></a>
                                <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                            </div>
                        </div>
                        <div class="pi-text">
                            <h6>$1099,00</h6>
                            <p>Canon EOS 6D Mark II (Body only)</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="./img/product/10.png" alt="">
                            <div class="pi-links">
                                <a href="cart.aspx" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></a>
                                <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                            </div>
                        </div>
                        <div class="pi-text">
                            <h6>$1399,00</h6>
                            <p>Canon EOS 6D Mark II + kit lens</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="./img/product/11.png" alt="">
                            <div class="pi-links">
                                <a href="cart.aspx" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></a>
                                <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                            </div>
                        </div>
                        <div class="pi-text">
                            <h6>$839,00</h6>
                            <p>Canon EOS 77D + 18-135mm lens </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="./img/product/12.png" alt="">
                            <div class="pi-links">
                                <a href="cart.aspx" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></a>
                                <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                            </div>
                        </div>
                        <div class="pi-text">
                            <h6>$499,00</h6>
                            <p>Canon EOS 2000D + 18-55mm kit lens </p>
                        </div>
                    </div>
                </div>--%>
            
            <div class="text-center pt-5">
                <button class="site-btn sb-line sb-dark">LOAD MORE</button>
            </div>
        </div>
    </section>

    <!-- Banner section -->
    <section class="banner-section">
        <div class="container">
            <div class="banner set-bg" data-setbg="img/banner-bg.jpg">
                <div class="tag-new">NEW</div>
                <span>New Arrivals</span>
                <h2>STRIPED SHIRTS</h2>
                <a href="#" class="site-btn">SHOP NOW</a>
            </div>
        </div>
    </section>
    <!-- Banner section end  -->
</asp:Content>
