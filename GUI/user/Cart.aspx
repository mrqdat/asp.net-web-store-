<%@ Page Language="C#" MasterPageFile="index.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="GUI.user.Cart" %>

<asp:Content ID="cart_content1" ContentPlaceHolderID="head" runat="server">
    <title>Divisima | Product</title>
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
    <script type="text/html">
        function cal_total(){
            var sp = document.getElementById("lb_price");
            var sp1 = document.getElementById("lb_price1");
            var sp2 = document.getElementById("lb_price2");
            var sp1 = document.getElementById("lb_price");
            var sp1 = document.getElementById("lb_price");
            var total = document.getElementById("lb_total");

            total = sp + sp1 + sp2;
        }
    </script>
</asp:Content>

<asp:Content ID="cart_content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page info -->
    <div class="page-top-info">
        <div class="container">
            <h4>Your cart</h4>
            <div class="site-pagination">
                <a href="#">Home</a> /
				<a href="#">Your cart</a>
            </div>
        </div>
    </div>
    <!-- Page info end -->


    <!-- cart section end -->
    <section class="cart-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="cart-table">
                        <h3>Your Cart</h3>
                        <div class="cart-table-warp">
                            <table>
                                <thead>
                                    <tr>
                                        <th class="product-th">Product</th>
                                        <th class="quy-th">Quantity</th>                                        
                                        <th class="total-th">Price</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="product-col">
                                            <img src="img/cart/1.png" alt="">
                                            <div class="pc-title">
                                                <h4>Canon EOS RP </h4>
                                                <p>$1335,00</p>
                                            </div>
                                        </td>
                                        <td class="quy-col">
                                            <div class="quantity">
                                                <div class="pro-qty">
                                                    <asp:Textbox Id="qty_sp" runat="server" type="text" value="1"/>
                                                </div>
                                            </div>
                                        </td>
                                      
                                        <td class="total-col">
                                            <asp:Label ID="lb_price" runat="server" Text="$1335,00"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="product-col">
                                            <img src="img/cart/2.png" alt="">
                                            <div class="pc-title">
                                                <h4>Canon EOS R</h4>
                                                <p>$1699,00</p>
                                            </div>
                                        </td>
                                        <td class="quy-col">
                                            <div class="quantity">
                                                <div class="pro-qty">
                                                    <asp:Textbox Id="qty_sp1" runat="server" type="text" value="1"/>
                                                </div>
                                            </div>
                                        </td>
                                        
                                        <td class="total-col">
                                            <asp:Label ID="lb_price1" runat="server" Text="$1699,00"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="product-col">
                                            <img src="img/cart/3.png" alt="">
                                            <div class="pc-title">
                                                <h4>Canon EOS 3000D </h4>
                                                <p>$399,00</p>
                                            </div>
                                        </td>
                                        <td class="quy-col">
                                            <div class="quantity">
                                                <div class="pro-qty">
                                                    <asp:Textbox Id="qty_sp2" runat="server" type="text" value="1"/>
                                                </div>
                                            </div>
                                        </td>
                                        
                                        <td class="total-col">
                                            <asp:Label ID="lb_price2" runat="server" Text="$399,00"/>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="total-cost">
                            <h6>Total <asp:Label ID="lb_total" runat="server" value=""/></h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 card-right">
                    <div class="promo-code-form">
                        <input type="text" placeholder="Enter promo code">
                        <button>Submit</button>
                    </div>
                    <a href="#" class="site-btn">Proceed to checkout</a>
                    <a href="#" class="site-btn sb-dark">Continue shopping</a>
                </div>
            </div>
        </div>
    </section>
    <!-- cart section end -->

    <!-- Related product section -->
    <section class="related-product-section">
        <div class="container">
            <div class="section-title text-uppercase">
                <h2>Continue Shopping</h2>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <div class="tag-new">New</div>
                            <img src="./img/product/2.png" alt="">
                            <div class="pi-links">
                                <a href="#" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></a>
                                <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                            </div>
                        </div>
                        <div class="pi-text">
                            <h6>$1699,00</h6>
                            <p>Canon EOS R</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="./img/product/5.png" alt="">
                            <div class="pi-links">
                                <a href="#" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></a>
                                <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                            </div>
                        </div>
                        <div class="pi-text">
                            <h6>$1699,00</h6>
                            <p>Canon EOS 90D  </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="./img/product/9.png" alt="">
                            <div class="pi-links">
                                <a href="#" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></a>
                                <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                            </div>
                        </div>
                        <div class="pi-text">
                            <h6>$1099,00</h6>
                            <p>Canon EOS 6D Mark II </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="./img/product/1.png" alt="">
                            <div class="pi-links">
                                <a href="#" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></a>
                                <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                            </div>
                        </div>
                        <div class="pi-text">
                            <h6>$1335,00</h6>
                            <p>Canon EOS RP </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Related product section end -->


</asp:Content>
