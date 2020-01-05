<%@ Page Language="C#" MasterPageFile="index.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="GUI.user.Checkout" %>

<asp:Content ID="checkout_content1" ContentPlaceHolderID="head" runat="server">
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

</asp:Content>

<asp:Content ID="checkout_content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- checkout section  -->
    <section class="checkout-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 order-2 order-lg-1">
                    <div class="checkout-form">
                        <div class="cf-title">Địa chỉ thanh toán</div>
                        <div class="row">
                            <div class="col-md-7">
                                <p>*Thông tin thanh toán</p>
                            </div>
                            <div class="col-md-5">
                                <div class=" address-rb">
                                    <div class="cfr-item">

                                        <asp:RadioButton ID="rd_dc1" type="radio" runat="server" AutoPostBack="true" GroupName="diachi" Checked="true" OnCheckedChanged="rd_dc1_CheckedChanged" />
                                        <label for="one">Sử dụng địa chỉ đã đăng kí</label>
                                    </div>
                                    <div class="cfr-item">

                                        <asp:RadioButton ID="rd_dc2" type="radio" runat="server" AutoPostBack="true" GroupName="diachi" Checked="false" OnCheckedChanged="rd_dc2_CheckedChanged" />
                                        <label for="two">Sử dụng địa chỉ khác</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <asp:RequiredFieldValidator ID="rfv_dc" runat="server" ControlToValidate="txb_diachi" Display="Dynamic" ErrorMessage="Vui lòng nhập địa chỉ" ForeColor="Red" Font-Size="10px" Height="15px"></asp:RequiredFieldValidator>
                        <div class="row address-inputs">
                            <div class="col-md-12">
                                <asp:TextBox ID="txb_diachi" runat="server" type="text" placeholder="Địa chỉ nhận hàng"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rvf_hoten" runat="server" ControlToValidate="txb_hoten" ErrorMessage="Vui lòng nhập họ tên ngườ nhận" ForeColor="Red" Display="Dynamic" Font-Size="10px" Height="15px"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txb_hoten" runat="server" type="text" placeholder="Tên người nhận"></asp:TextBox>

                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="txb_zopcode" runat="server" type="text" placeholder="mã bưu cục"></asp:TextBox>
                            </div>

                            <div class="col-md-6">
                                <asp:RequiredFieldValidator ID="rfv_sdt" runat="server" ControlToValidate="txb_sdt" ErrorMessage="Vui lòng nhập số điện thoại liên lạc" ForeColor="Red" Display="Dynamic" Font-Size="10px" Height="15px"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="rev_sdt" runat="server" ControlToValidate="txb_sdt" ErrorMessage="Số điện thoại không hợp lệ" ValidationExpression="0\d{9}" ForeColor="Red" Display="Dynamic" Font-Size="10px" Height="15px"></asp:RegularExpressionValidator>
                                <asp:TextBox ID="txb_sdt" runat="server" type="text" placeholder="Số điện thoại liên lạc"></asp:TextBox>
                            </div>
                            <div class="col-md-12">
                                <asp:TextBox ID="txb_note" runat="server" placeholder="Ghi chú"></asp:TextBox>
                            </div>
                        </div>
                        <div class="cf-title">Delievery Info</div>
                        <div class="row shipping-btns">
                            <div class="col-6">
                                <h4>Giao hàng tiêu chuẩn</h4>
                            </div>
                            <div class="col-6">

                                <div class="cfr-item">
                                    <asp:RadioButton runat="server" type="radio" name="shipping" ID="ship1" Checked="true" AutoPostBack="true" GroupName="fee" OnCheckedChanged="ship1_CheckedChanged" />
                                    <label for="ship-1">Free</label>
                                </div>

                            </div>
                            <div class="col-6">
                                <h4>Giao hàng vào này tiếp theo </h4>
                            </div>
                            <div class="col-6">

                                <div class="cfr-item">
                                    <asp:RadioButton runat="server" type="radio" name="shipping" ID="ship2" Checked="false" AutoPostBack="true" GroupName="fee" OnCheckedChanged="ship2_CheckedChanged" />
                                    <label for="ship-2">$3.00</label>
                                </div>

                            </div>
                        </div>
                        <div class="cf-title">Hình thức thanh toán</div>
                        <ul class="payment-list">
                            <li>Paypal<a href="#"><img src="img/paypal.png" alt=""></a></li>
                            <li>Credit / Debit card<a href="#"><img src="img/mastercart.png" alt=""></a></li>
                            <li>Trả tiền sau khi nhận hàng</li>
                        </ul>
                        <asp:LinkButton ID="btnorder" runat="server" class="site-btn submit-order-btn" OnClick="btnorder_Click1" data-toggle="modal" data-target="#modal_thongbao" Text="Place Order"></asp:LinkButton>
                        <div class="modal fade" id="modal_thongbao" role="dialog" style="top: 30%;">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">

                                        <h4 class="modal-title">Thông báo</h4>
                                    </div>
                                    <div class="modal-body">
                                        <p>Đặt hàng thành công</p>
                                    </div>
                                    <div class="modal-footer">

                                        <button type="button" class="btn btn-success" data-dismiss="modal">OK</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 order-1 order-lg-2">
                    <div class="checkout-cart">
                        <h3>Giỏ hàng của bạn</h3>

                        <ul class="product-list">
                            <asp:Repeater ID="rpt_prdlist" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <div class="pl-thumb">
                                            <asp:ImageButton ID="imgAnhMinhHoa" runat="server" ImageUrl='<%# "img/product/" + Eval("AnhMinhHoa") %>' Width="90px" />
                                        </div>
                                        <asp:Label ID="lblTenSP" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label><br />
                                        <asp:Label ID="lblGiaTien" runat="server" Text='<%# Eval("GiaTien") %>'> </asp:Label>

                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                        <ul class="price-list">
                            <li>Tổng cộng<asp:Label ID="lblTongTien" runat="server" Text="0"></asp:Label></li>
                            <li>Phí vận chuyển<asp:Label ID="lbfee" runat="server"></asp:Label></li>
                            <li class="total">Thành tiền<asp:Label ID="lbltong" runat="server" Text="0" Width="71"></asp:Label></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- checkout section end -->
</asp:Content>
