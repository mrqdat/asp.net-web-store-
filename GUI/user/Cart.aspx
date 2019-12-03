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
    <%--<script type="text/javascript">
        function cal_total(){
            var sp = document.getElementById("lb_price");
            var sp1 = document.getElementById("lb_price1");
            var sp2 = document.getElementById("lb_price2");
            var sp3 = document.getElementById("lb_price3");
            var sp4 = document.getElementById("lb_price4");
            var total = 0;

            total = sp + sp1 + sp2;
            return total;
        }
    </script>--%>
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
    <section class="cart-section spad" >
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="cart-table">
                        <h3>Your Cart</h3>
                           
                        <div class="cart-table-warp">
                            <div class="container">
                                <asp:GridView ID="grvGioHang" runat="server" CssClass="table table-striped table-hover" AutoGenerateColumns="False" GridLines="None">
                                    <Columns  >
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:Image ID="imgAnhMinhHoa" runat="server" ImageUrl='<%# "img/product/" + Eval("AnhMinhHoa") %>' width="100"/>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="TenSP" HeaderText="Product" />
                                        <asp:BoundField DataField="GiaTien" HeaderText="Price" />
                                        <asp:TemplateField HeaderText="Quantity">
                                            <ItemTemplate>                                               
                                                    <div class="quantity">
                                                        <div class="pro-qty">
                                                            <asp:Textbox Id="qty_sp" runat="server" type="text" value="1"/>
                                                        </div>
                                                    </div>                                             
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <%--<asp:BoundField DataField="SoLuong" HeaderText="Quantity" />--%>
                                        <asp:BoundField DataField="ThanhTien" HeaderText="Total" />
                                    </Columns>
                                </asp:GridView>
                                <%--Tổng tiền: <asp:Label ID="lblTongTien" runat="server" Text="0"></asp:Label> VNĐ--%>
                            </div>
                            <%--<table>
                                <thead>
                                    <tr>
                                        <th class="product-th">Product</th>
                                        <th class="quy-th">Quantity</th>                                        
                                        <th class="total-th">Price</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater id="rpt_slider" runat="server"  onItemCommand="rpt_slider_ItemCommand">
                                         <ItemTemplate>
                                             <tr>
                                                <td class="product-col">
                                                    <asp:Image ID="anhSP" runat="server" ImageUrl='<%# "img/cart/" + Eval("AnhMinhHoa") %>'/>
                                                    <div class="pc-title">
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("GiaTien") %>'> </asp:Label> <br />
                                                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
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
                                                    <asp:Label ID="lb_price" runat="server" Text="1335"></asp:Label>
                                                </td>
                                            </tr>
                                            <div class="product-item">
                                                <div class="pi-pic">
                                                    <asp:Image ID="imgAnhMinhHoa" runat="server" ImageUrl='<%# "img/product/" + Eval("AnhMinhHoa") %>' />   
                                                        <div class="pi-links">
<%--                                        <%--<i class=""></i><asp:LinkButton ID="btnThemGH" runat="server" Cssclass="add-card  flaticon-bag"  Text="ADD TO CART" CommandName="ADD TO CART" CommandArgument='<%# Eval("MaSP") %>' />
                                                            <asp:LinkButton id="btn_addtocart" runat="server" Cssclass="add-card" CommandName="ThemGH" CommandArgument='<%# Eval("MaSP") %>'><i class="flaticon-bag"></i><span>ADD TO CART</span></asp:LinkButton>
                                                            <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                                                        </div>
                                                </div>
                                                <div class="pi-text">
                                                    <asp:Label ID="lblGiaTien" runat="server" Text='<%# Eval("GiaTien") %>'> </asp:Label> <br />
                                                    <asp:Label ID="lblTenSP" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                                                </div>
                                            </div>
                                        </ItemTemplate>            
                                    </asp:Repeater>
                                    <%--<tr>
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
                                            <asp:Label ID="lb_price" runat="server" Text="1335"></asp:Label>
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
                                            <asp:Label ID="lb_price1" runat="server" Text="1699"/>
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
                                            <asp:Label ID="lb_price2" runat="server" Text="399"/>
                                        </td>
                                    </tr> 
                                </tbody>

                            </table>--%>
                        </div>
                        <div class="total-cost"  ">
                            <h6>Total <asp:Label ID="lblTongTien" runat="server" Text="0"></asp:Label></h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 card-right">
                    <div class="promo-code-form">
                        <input type="text" placeholder="Enter promo code">
                        <button>Submit</button>
                    </div>
                    <asp:Button ID="btnThanhToan" runat="server" CssClass="site-btn" Text="Proceed to checkout" OnClick="btnThanhToan_Click"/>
                    
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
