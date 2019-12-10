<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QLSP.aspx.cs" Inherits="GUI.QLSP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <title>Star Admin Premium Bootstrap Admin Dashboard Template</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../assets/vendors/iconfonts/mdi/css/materialdesignicons.min.css"/>
    <link rel="stylesheet" href="../assets/vendors/iconfonts/ionicons/css/ionicons.css"/>
    <link rel="stylesheet" href="../assets/vendors/iconfonts/typicons/src/font/typicons.css"/>
    <link rel="stylesheet" href="../assets/vendors/iconfonts/flag-icon-css/css/flag-icon.min.css"/>
    <link rel="stylesheet" href="../assets/vendors/css/vendor.bundle.base.css"/>
    <link rel="stylesheet" href="../assets/vendors/css/vendor.bundle.addons.css"/>
    <!-- endinject -->
    <!-- plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="../assets/css/shared/style.css"/>
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="../assets/css/demo_1/style.css"/>
    <!-- End Layout styles -->
    <link rel="shortcut icon" href="../assets/images/favicon.png" />
    <script>
        $(document).ready(function () {
            $('#grvSP').DataTable({
                select: true
            });
        });
    </script>
</head>
<body>
 <form id="form1" runat="server">
        <div class="container-scroller">
        <!-- partial:partials/_navbar.html -->
        <nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
            <div class="text-center navbar-brand-wrapper d-flex align-items-top justify-content-center">
                <a class="navbar-brand brand-logo" href="index.html">
                    <img src="../assets/images/logo.svg" alt="logo" />
                </a>
                <a class="navbar-brand brand-logo-mini" href="index.html">
                    <img src="../assets/images/logo-mini.svg" alt="logo" />
                </a>
            </div>
            <div class="navbar-menu-wrapper d-flex align-items-center">
                <ul class="navbar-nav">
                    <li class="nav-item font-weight-semibold d-none d-lg-block">Help : +050 2992 709</li>
                    <li class="nav-item dropdown language-dropdown">
                        <a class="nav-link dropdown-toggle px-2 d-flex align-items-center" id="LanguageDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                            <div class="d-inline-flex mr-0 mr-md-3">
                                <div class="flag-icon-holder">
                                    <i class="flag-icon flag-icon-us"></i>
                                </div>
                            </div>
                            <span class="profile-text font-weight-medium d-none d-md-block">English</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-left navbar-dropdown py-2" aria-labelledby="LanguageDropdown">
                            <a class="dropdown-item">
                                <div class="flag-icon-holder">
                                    <i class="flag-icon flag-icon-us"></i>
                                </div>English
                            </a>
                            <a class="dropdown-item">
                                <div class="flag-icon-holder">
                                    <i class="flag-icon flag-icon-fr"></i>
                                </div>French
                            </a>
                            <a class="dropdown-item">
                                <div class="flag-icon-holder">
                                    <i class="flag-icon flag-icon-ae"></i>
                                </div>Arabic
                            </a>
                            <a class="dropdown-item">
                                <div class="flag-icon-holder">
                                    <i class="flag-icon flag-icon-ru"></i>
                                </div>Russian
                            </a>
                        </div>
                    </li>
                </ul>
                 
                    <div runat="server" class="form-group ml-auto search-form d-none d-md-block" action="#" >
                            <asp:Textbox ID="btn_search" runat="server" type="search" class="form-control" placeholder="Search Here"/>
                    </div>
                 
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link count-indicator" id="messageDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                            <i class="mdi mdi-bell-outline"></i>
                            <span class="count">7</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list pb-0" aria-labelledby="messageDropdown">
                            <a class="dropdown-item py-3">
                                <p class="mb-0 font-weight-medium float-left">You have 7 unread mails </p>
                                <span class="badge badge-pill badge-primary float-right">View all</span>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item preview-item">
                                <div class="preview-thumbnail">
                                    <img src="../assets/images/faces/face10.jpg" alt="image" class="img-sm profile-pic"/>
                                </div>
                                <div class="preview-item-content flex-grow py-2">
                                    <p class="preview-subject ellipsis font-weight-medium text-dark">Marian Garner </p>
                                    <p class="font-weight-light small-text"> The meeting is cancelled </p>
                                </div>
                            </a>
                            <a class="dropdown-item preview-item">
                                <div class="preview-thumbnail">
                                    <img src="../assets/images/faces/face12.jpg" alt="image" class="img-sm profile-pic"/>
                                </div>
                                <div class="preview-item-content flex-grow py-2">
                                    <p class="preview-subject ellipsis font-weight-medium text-dark">David Grey </p>
                                    <p class="font-weight-light small-text"> The meeting is cancelled </p>
                                </div>
                            </a>
                            <a class="dropdown-item preview-item">
                                <div class="preview-thumbnail">
                                    <img src="../assets/images/faces/face1.jpg" alt="image" class="img-sm profile-pic"/>
                                </div>
                                <div class="preview-item-content flex-grow py-2">
                                    <p class="preview-subject ellipsis font-weight-medium text-dark">Travis Jenkins </p>
                                    <p class="font-weight-light small-text"> The meeting is cancelled </p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li  class="nav-item dropdown">
                        <a class="nav-link count-indicator" id="notificationDropdown" href="#" data-toggle="dropdown">
                            <i class="mdi mdi-email-outline"></i>
                            <span class="count bg-success">3</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list pb-0" aria-labelledby="notificationDropdown">
                            <a class="dropdown-item py-3 border-bottom">
                                <p class="mb-0 font-weight-medium float-left">You have 4 new notifications </p>
                                <span class="badge badge-pill badge-primary float-right">View all</span>
                            </a>
                            <a class="dropdown-item preview-item py-3">
                                <div class="preview-thumbnail">
                                    <i class="mdi mdi-alert m-auto text-primary"></i>
                                </div>
                                <div class="preview-item-content">
                                    <h6 class="preview-subject font-weight-normal text-dark mb-1">Application Error</h6>
                                    <p class="font-weight-light small-text mb-0"> Just now </p>
                                </div>
                            </a>
                            <a class="dropdown-item preview-item py-3">
                                <div class="preview-thumbnail">
                                    <i class="mdi mdi-settings m-auto text-primary"></i>
                                </div>
                                <div class="preview-item-content">
                                    <h6 class="preview-subject font-weight-normal text-dark mb-1">Settings</h6>
                                    <p class="font-weight-light small-text mb-0"> Private message </p>
                                </div>
                            </a>
                            <a class="dropdown-item preview-item py-3">
                                <div class="preview-thumbnail">
                                    <i class="mdi mdi-airballoon m-auto text-primary"></i>
                                </div>
                                <div class="preview-item-content">
                                    <h6 class="preview-subject font-weight-normal text-dark mb-1">New user registration</h6>
                                    <p class="font-weight-light small-text mb-0"> 2 days ago </p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li  class="nav-item dropdown d-none d-xl-inline-block user-dropdown">
                        <a class="nav-link dropdown-toggle" id="UserDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                            <img class="img-xs rounded-circle" src="../assets/images/faces/face8.jpg" alt="Profile image"/>
                        </a>
                        <div  class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">
                            <div class="dropdown-header text-center">
                                <img class="img-md rounded-circle" src="../assets/images/faces/face8.jpg" alt="Profile image"/>
                                <p class="mb-1 mt-3 font-weight-semibold">Allen Moreno</p>
                                <p class="font-weight-light text-muted mb-0">allenmoreno@gmail.com</p>
                            </div>
                            
                                <a class="dropdown-item">My Profile <span class="badge badge-pill badge-danger">1</span><i class="dropdown-item-icon ti-dashboard"></i></a>
                                <a class="dropdown-item">Messages<i class="dropdown-item-icon ti-comment-alt"></i></a>
                                <a class="dropdown-item">Activity<i class="dropdown-item-icon ti-location-arrow"></i></a>
                                <a class="dropdown-item">FAQ<i class="dropdown-item-icon ti-help-alt"></i></a>
                                <asp:LinkButton ID="btn_logout" runat="server" class="dropdown-item" OnClick="btn_logout_Click">Sign Out<i class="dropdown-item-icon ti-power-off"></i></asp:LinkButton>
                            
                           
                        </div>
                    </li>
                </ul>
                <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                    <span class="mdi mdi-menu"></span>
                </button>
            </div>
        </nav>
        <!-- partial -->
        <div class="container-fluid page-body-wrapper">
            <!-- partial:partials/_sidebar.html -->
            <nav class="sidebar sidebar-offcanvas" id="sidebar">
                <ul class="nav">
                    <li class="nav-item nav-profile">
                        <a href="#" class="nav-link">
                            <div class="profile-image">
                                <img class="img-xs rounded-circle" src="../assets/images/faces/face8.jpg" alt="profile image"/>
                                <div class="dot-indicator bg-success"></div>
                            </div>
                            <div class="text-wrapper">
                                <p class="profile-name">Allen Moreno</p>
                                <p class="designation">Premium user</p>
                            </div>
                        </a>
                    </li>
                    <li class="nav-item nav-category">Main Menu</li>
                    <li class="nav-item">
                        <asp:LinkButton ID="btn_qlkh" runat="server" CssClass="nav-link" href="Admin_Dashboard.aspx"  data-toggle="collapse " aria-expanded="false" OnClick="btn_qlkh_Click">
                            <i class="menu-icon typcn typcn-document-text"></i>
                            <span class="menu-title">Quản lí tài khoản</span>
                        </asp:LinkButton>
                    </li>
                    <li class="nav-item">
                        <asp:LinkButton ID="btn_qlsp" runat="server" CssClass="nav-link" href="QLSP.aspx"  data-toggle="collapse " aria-expanded="false" OnClick="btn_qlsp_Click">
                            <i class="menu-icon typcn typcn-document-text"></i>
                            <span class="menu-title">Quản lí sản phẩm</span>
                        </asp:LinkButton>
                    </li>
                     
                </ul>
            </nav>
            <%--  --%>
            
            <!-- partial -->
            <div class="main-panel">
                <div class="container" >
                
                <div class="col-12 grid-margin">
                <div class="card">
                  <div class="card-body">
                     
                     
                      <p class="card-description"> Thông tin sản phẩm </p>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Mã sản phẩm</label>
                            <div class="col-sm-9">
                              <asp:TextBox ID="txb_masp" runat="server" type="text" Cssclass="form-control" placeholder="ID"/>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Tên sản phẩm</label>
                            <div class="col-sm-9">
                              <asp:TextBox ID="txb_tensp" runat="server" type="text" Cssclass="form-control" placeholder="Tên sản phẩm" />
                            </div>
                          </div>
                        </div>
                      </div>
                      
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Thông tin</label>
                            <div class="col-sm-9">
                              <asp:TextBox ID="txb_thongtin" runat="server" CssClass="form-control" placeholder="Thông tin sản phẩm" />
                            </div>
                          </div>
                        </div>
                      
                       
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Giá tiền</label>
                            <div class="col-sm-9">
                              <asp:TextBox ID="txb_giatien" runat="server"  CssClass="form-control" placeholder="Giá tiền" />
                            </div>
                          </div>
                        </div>
                       </div>

                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Số lượng tồn kho</label>
                            <div class="col-sm-9">
                              <asp:TextBox ID="txb_sltonkho" runat="server" CssClass="form-control" placeholder="Số lượng tồn kho" />
                            </div>
                          </div>
                        </div>
                      
                       
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Mã Loại Sản Phẩm</label>
                            <div class="col-sm-9">
                              <asp:TextBox ID="txb_maloaisp" runat="server"  CssClass="form-control" placeholder="Mã loại sản phẩm" />
                            </div>
                          </div>
                        </div>
                       </div>             
                   </div>
                 
                </div>
              </div>
   
         
                <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                      <div class="row" style="margin-bottom:15px;">
                          <h4 class="col-lg-6 card-title">Danh sách sản phẩm</h4>
                          <input id="txb_search" class="  form-control" type="text" placeholder="tìm kiếm..." style="width: 200px; align-content: flex-start; padding-right: 10px; position: relative; left: 312px; top: 0px;" />
                      </div>
                    
                     
                      <asp:GridView ID="grv_sp" runat="server" AutoGenerateColumns="False" OnRowCommand="grv_sp_RowCommand" CssClass="table table-hover table-striped" GridLines="None">
                            <Columns>
                                <asp:BoundField DataField="MaSP" HeaderText="ID" />
                                <asp:BoundField DataField="TenSP" HeaderText="Tên SP" />
                                <asp:BoundField DataField="ThongTin" HeaderText="THông Tin" />
                                <asp:BoundField DataField="GiaTien" HeaderText="Giá Tiền" />
                                <asp:BoundField DataField="SoLuongTonKho" HeaderText="Số lượng tồn" />
                                <asp:BoundField DataField="MaLoaiSP" HeaderText="Mã loại SP" />                                 
                                <asp:BoundField DataField="TrangThai" HeaderText="Trạng Thái" />
                                <asp:TemplateField HeaderText="tùy chọn">
                    
                                <ItemTemplate>
                                    <asp:ImageButton ID="btnChon" runat="server" CausesValidation="False"  ImageUrl="user/img/cart/reset.png"  width="20px"  CommandName="Chonsp" CommandArgument='<%# Eval("TenSP") %>' Text="Chọn" />
                                    <asp:ImageButton ID="btnXoa" runat="server" CausesValidation="False" ImageUrl="user/img/cart/Delete-icon.png" Width="20px" CommandName="Xoasp" CommandArgument='<%# Eval("TenSP") %>' Text="Xóa" OnClientClick="return confirm('Bạn có chắc chắn muốn xóa?');" />
                                </ItemTemplate>
                    
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                     
                     
                         
                  </div>
                </div>
              </div>
              </div>
               
                <!-- content-wrapper ends -->
                <!-- partial:partials/_footer.html -->
                <footer class="footer">
                    <div class="container-fluid clearfix">
                        <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © 2019 <a href="http://www.bootstrapdash.com/" target="_blank">Bootstrapdash</a>. All rights reserved.</span>
                        <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">
                            Hand-crafted & made with <i class="mdi mdi-heart text-danger"></i>
                        </span>
                    </div>
                </footer>
                <!-- partial -->
            </div>
            <!-- main-panel ends -->
        </div>
            
        <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="../assets/vendors/js/vendor.bundle.base.js"></script>
    <script src="../assets/vendors/js/vendor.bundle.addons.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page-->
    <!-- End plugin js for this page-->
    <!-- inject:js -->
    <script src="../assets/js/shared/off-canvas.js"></script>
    <script src="../assets/js/shared/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page-->
    <script src="../assets/js/demo_1/dashboard.js"></script>
    <!-- End custom js for this page-->
    </form>
</body>
</html>

