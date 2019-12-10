<%@ Page Title="" Language="C#" MasterPageFile="~/user/index.Master" AutoEventWireup="true" CodeBehind="searchResult.aspx.cs" Inherits="GUI.user.searchResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Divisima | Search result</title>
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

    <!-- Page info -->
    <div class="page-top-info">
        <div class="container">
            <h4>YOUR RESULT</h4>                      
        </div>
    </div>
    <!-- Page info end -->

     <section class="product-filter-section">
        <div class="container">
            <div class="section-title">
                <h2></h2>
            </div>
          
            <div class="row">

                <asp:Repeater id="dtl_sanpham" runat="server"  OnItemCommand="rpt_slider_ItemCommand" >
                    <ItemTemplate>
                        <div class="col-lg-3 col-sm-6">
                            <div class="product-item">
                                <div class="pi-pic">
                                    <asp:Image ID="imgAnhMinhHoa" runat="server" ImageUrl='<%# "img/product/" + Eval("AnhMinhHoa") %>' />   
                                    <div class="pi-links">
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
             </div>
        
        </div>
    </section>
</asp:Content>
