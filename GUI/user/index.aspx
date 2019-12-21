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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

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
                 <asp:Repeater id="rpt_slider" runat="server"  onItemCommand="rpt_slider_ItemCommand">
                    <ItemTemplate>
                         <div class="product-item">
                             
                                <div class="pi-pic">
                                    <asp:HyperLink id="hpl_sp" runat="server">
                                        <asp:ImageButton  ID="imgAnhMinhHoa" runat="server" CommandName="xemSP" CommandArgument='<%# Eval("MaSP") %>' ImageUrl='<%# "img/product/" + Eval("AnhMinhHoa") %>'   Width="250px"  OnClick="imgAnhMinhHoa_Click"/></asp:HyperLink>   
                                    <div class="pi-links">
<%--                                        <%--<i class=""></i><asp:LinkButton ID="btnThemGH" runat="server" Cssclass="add-card  flaticon-bag"  Text="ADD TO CART" CommandName="ADD TO CART" CommandArgument='<%# Eval("MaSP") %>' />--%>
                                        <asp:LinkButton id="btn_addtocart" runat="server" Cssclass="add-card" CommandName="ThemGH" CommandArgument='<%# Eval("MaSP") %>'><i class="flaticon-bag"></i><span>ADD TO CART</span></asp:LinkButton>
                                        <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                                    </div>
                                </div>
                           
                                <div class="pi-text">
                                    <asp:Label ID="lblGiaTien" runat="server" Text='<%# Eval("GiaTien") %>'> </asp:Label> <br />
                                    <asp:Label ID="lblTenSP" CommandName="xemSP" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                                </div>
                        </div>
                    </ItemTemplate>            
                </asp:Repeater>
                
                
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
                
                <li><asp:LinkButton id="lb_topword" runat="server" type="button"  Text="Canon" OnClick="lb_topword_Click">Canon</asp:LinkButton></li>
                <li><asp:LinkButton id="lb_topword1" runat="server" type="button"  Text="Nikon" OnClick="lb_topword1_Click">Nikon</asp:LinkButton></li>
                <li> <asp:LinkButton id="lb_topword2" runat="server" type="button"  Text="Nikkor" OnClick="lb_topword2_Click">Nikkor</asp:LinkButton></li>
                <li> <asp:LinkButton id="lb_topword3" runat="server" type="button"  Text="85mm 1,8 USM" OnClick="lb_topword3_Click">85mm 1,8 USM</asp:LinkButton></li>
                <li> <asp:LinkButton id="lb_topword4" runat="server" type="button"  Text="XT-30" OnClick="lb_topword4_Click">XT-30</asp:LinkButton></li>
                <li> <asp:LinkButton id="lb_topword5" runat="server" type="button"  Text="Sony a7iv" OnClick="lb_topword5_Click">Sony a7iv</asp:LinkButton></li>
                <li> <asp:LinkButton id="lb_topword6" runat="server" type="button"  Text="Zeiss Batis" OnClick="lb_topword6_Click">Zeiss Batis</asp:LinkButton></li>
            </ul>
            <div class="row">

                <asp:Repeater id="dtl_sanpham" runat="server"  OnItemCommand="rpt_slider_ItemCommand" >
                    <ItemTemplate>
                        <div class="col-lg-3 col-sm-6">
                            <div class="product-item">
                                <div class="pi-pic">
                                    <asp:ImageButton ID="imgAnhMinhHoa" runat="server" ImageUrl='<%# "img/product/" + Eval("AnhMinhHoa") %>'  CommandName="xemSP" Width="260px"/>   
                                    <div class="pi-links">
<%--                                        <%--<i class=""></i><asp:LinkButton ID="btnThemGH" runat="server" Cssclass="add-card  flaticon-bag"  Text="ADD TO CART" CommandName="ADD TO CART" CommandArgument='<%# Eval("MaSP") %>' />--%>
                                        <asp:LinkButton id="btn_addtocart" runat="server"  Cssclass="add-card"  CommandName="ThemGH" CommandArgument='<%# Eval("MaSP") %>'><i class="flaticon-bag"></i><span>ADD TO CART</span></asp:LinkButton>
                                        <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                                    </div>
                                </div>
                                <div class="pi-text">
                                    <asp:Label ID="lblGiaTien" runat="server" Text='<%# Eval("GiaTien") %>'> </asp:Label> <br />
                                    <asp:Label ID="lblTenSP"  runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>            
                </asp:Repeater>
             </div>
            
            <div class="text-center pt-5">
                <asp:Button type="button" ID="btn_loadmore" runat="server" CssClass="site-btn sb-line sb-dark" Text="LOAD MORE"   />
            </div>
        </div>
    </section>

    <!-- Banner section -->
    <section class="banner-section">
        <div class="container">
            <div class="banner set-bg" data-setbg="img/bg2.jpg">
                <div class="tag-new">NEW</div>
                <span style="color:white;">New Product</span>
                <h2 style="color:white;">R System </h2>
                <a href="#" class="site-btn">SHOP NOW</a>
            </div>
        </div>
    </section>
    <!-- Banner section end  -->
</asp:Content>
