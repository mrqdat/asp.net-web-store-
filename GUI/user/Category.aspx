<%@ Page Language="C#" MasterPageFile="index.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="GUI.user.Category" %>

<asp:Content ID="categoty_content1" ContentPlaceHolderID="head" runat="server">
    <title>Divisima | Thể loại</title>
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


<asp:Content ID="category_content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page info -->
    <div class="page-top-info">
        <div class="container">
            <h4>Thể loại</h4>
            <div class="site-pagination">
                <a href="index.aspx">Trang chủ</a> /
				<a href="#">thể loại</a>
            </div>
        </div>
    </div>
    <!-- Page info end -->


    <!-- Category section -->
    <section class="category-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 order-2 order-lg-1">
                    <div class="filter-widget">
                        <h2 class="fw-title">Categories</h2>
                        <ul class="category-menu">
                            <li><a href="#">Brand</a>
                                <ul class="sub-menu">
                                    <li><a href="#">Nikon </a></li>
                                    <li><a href="#">Canon </a></li>
                                    <li><a href="#">Sony </a></li>
                                    <li><a href="#">Fujifilm </a></li>
                                    <li><a href="#">Panasonic </a></li>
                                </ul>
                            </li>
                            <li><a href="#">Lens</a>
                                <ul class="sub-menu">
                                    <li><a href="#">Nikon </a></li>
                                    <li><a href="#">Canon</a></li>
                                    <li><a href="#">Sony</a></li>
                                    <li><a href="#">Ziess</a></li>
                                    <li><a href="#">Tamron</a></li>
                                    <li><a href="#">Fujifilm</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Acessories</a>
                                <ul class="sub-menu">
                                    <li><a href="#">Tripod </a></li>
                                    <li><a href="#">Flash light</a></li>                                  
                                </ul>
                            </li>
                           
                        </ul>
                    </div>
                    <div class="filter-widget mb-0">
                        <h2 class="fw-title">refine by</h2>
                        <div class="price-range-wrap">
                            <h4>Price</h4>
                            <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content" data-min="10" data-max="270">
                                <div class="ui-slider-range ui-corner-all ui-widget-header" style="left: 0%; width: 100%;"></div>
                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default" style="left: 0%;"></span>
                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default" style="left: 100%;"></span>
                            </div>
                            <div class="range-slider">
                                <div class="price-input">
                                    <input type="text" id="minamount">
                                    <input type="text" id="maxamount">
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>

                <div class="col-lg-10  order-1 order-lg-2 mb-5 mb-lg-0">
                    <h4>Chọn loại sản phẩm:</h4>
                    <asp:DropDownList ID="ddl_sanpham" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddl_sanpham_SelectedIndexChanged" Width="30%"></asp:DropDownList>
                    <div class="row" style="padding-top:25px;padding-left:10px;">
                        <asp:Repeater id="dtl_sanpham" runat="server"  OnItemCommand="rpt_slider_ItemCommand"  >
                            <ItemTemplate>
                                <div class="col-lg-3 col-sm-6">
                                    <div class="product-item">
                                        <div class="pi-pic">
                                            <asp:Image ID="imgAnhMinhHoa" runat="server" ImageUrl='<%# "img/product/" + Eval("AnhMinhHoa") %>' />   
                                            <div class="pi-links">
        <%--                                        <%--<i class=""></i><asp:LinkButton ID="btnThemGH" runat="server" Cssclass="add-card  flaticon-bag"  Text="ADD TO CART" CommandName="ADD TO CART" CommandArgument='<%# Eval("MaSP") %>' />--%>
                                                <asp:LinkButton id="btn_addtocart" runat="server"  Cssclass="add-card"  CommandName="ThemGH" CommandArgument='<%# Eval("MaSP") %>'><i class="flaticon-bag"></i><span>ADD TO CART</span></asp:LinkButton>
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
                        
                        <%--<div class="text-center w-100 pt-3">
                            <button class="site-btn sb-line sb-dark">LOAD MORE</button>
                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Category section end -->

</asp:Content>
