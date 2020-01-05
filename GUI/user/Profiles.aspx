<%@ Page Title="" Language="C#" MasterPageFile="~/user/index.Master" AutoEventWireup="true" CodeBehind="Profiles.aspx.cs" Inherits="GUI.user.pf" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Divisima | Profile</title>
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

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="page-top-info">
        <div class="container">

            <div class="site-pagination">
                <a href="index.aspx">Trang chủ</a> /
				<a href="#">Thông tin tài khoản của bạn</a>
            </div>
        </div>
    </div>
    <section class="category-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 order-2 order-lg-1">
                    <nav class="sidebar sidebar-offcanvas" id="sidebar">
                        <ul class="nav">

                            <li class="nav-item">
                                <asp:LinkButton ID="btn_tk" runat="server" CommandName="tttk">
                                    <i class="menu-icon typcn typcn-document-text"></i>
                                    <span class="menu-title">Thông tin tài khoản</span>
                                </asp:LinkButton>
                            </li>
                            <li class="nav-item">
                                <asp:LinkButton ID="btn_qldh" runat="server" OnClick="btn_qldh_Click" CommandName="qkdh">
                                <i class="menu-icon typcn typcn-document-text"></i>
                                    <span class="menu-title">Quản lí đơn hàng</span>
                                </asp:LinkButton>
                            </li>
                            <li class="nav-item">
                                <asp:LinkButton ID="btn_dchi" runat="server" CommandName="dchi">
                                <i class="menu-icon typcn typcn-document-text"></i>
                                    <span class="menu-title">Sổ địa chỉ</span>
                                </asp:LinkButton>
                            </li>
                            <li class="nav-item">
                                <asp:LinkButton ID="btn_nx" runat="server" CommandName="nx">
                                <i class="menu-icon typcn typcn-document-text"></i>
                                    <span class="menu-title">Nhận xét của tui</span>
                                </asp:LinkButton>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-10  order-1 order-lg-2 mb-5 mb-lg-0">
                    <asp:GridView ID="gv_donhang" runat="server" CssClass="table table-striped table-hover" GridLines="None" AutoGenerateColumns="false" Visible="true">
                        <Columns>
                            <asp:BoundField DataField="MaHD" HeaderText="Mã đon hàng" />
                            <asp:BoundField DataField="NgayMua" HeaderText="Ngày mua" />

                            <asp:BoundField DataField="ThanhTien" HeaderText="Tổng tiền" />
                            <asp:BoundField DataField="TrangThai" HeaderText="Trạng thái" />

                        </Columns>

                    </asp:GridView>

                    <div id="tttk" runat="server">
                        <div class="form-group">
                            <label for="email">Họ và tên:</label>
                            <asp:TextBox runat="server" class="form-control" ID="txb_hoten" Text=""></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="pwd">Số điện thoại:</label>
                            <asp:TextBox runat="server" class="form-control" ID="txb_sdt" Text=""></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="pwd">Email:</label>
                            <asp:TextBox runat="server" class="form-control" ID="txb_mail" Text=""></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="pwd">Địa chỉ:</label>
                            <asp:TextBox runat="server" class="form-control" ID="txb_diachi" Text=""></asp:TextBox>
                        </div>

                    </div>

                </div>


            </div>
        </div>
    </section>
</asp:Content>
