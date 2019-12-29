<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="GUI.DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <title>DIVISIMA | Đăng Nhập</title>
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
    <link rel="shortcut icon" href="../assets/images/favicon.png" />
</head>
    
<body>
    <div class="container-scroller">
        <div class="container-fluid page-body-wrapper full-page-wrapper">
            <div class="content-wrapper d-flex align-items-center auth auth-bg-1 theme-one">
                <div class="row w-100">
                    <div class="col-lg-4 mx-auto">
                        <div class="auto-form-wrapper">
                            <form runat="server">
                                <div class="form-group">
                                    <label class="label">Username</label>
                                    <div class="input-group">
                                        <asp:TextBox ID="txb_user" runat="server" type="text" class="form-control" placeholder="Username" />

                                        <div class="input-group-append">

                                            <span class="input-group-text">
                                                <i class="mdi mdi-check-circle-outline"></i>
                                            </span>

                                        </div>
                                    </div>
                                </div>
                                <asp:RequiredFieldValidator ID="rvf_username" runat="server" ControlToValidate="txb_user" ErrorMessage="Bạn chưa nhập tên tài khoản" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="rgv_username" runat="server" ControlToValidate="txb_user" ErrorMessage="Tên tài khoản sai định dạng" ValidationExpression="\w{5,15}"></asp:RegularExpressionValidator>
                                <%-- 
                      
                      
                                --%>
                                <div class="form-group">
                                    <label class="label">Password</label>
                                    <div class="input-group">
                                        <asp:TextBox ID="txb_pass" runat="server" type="password" class="form-control" placeholder="*********" />

                                        <div class="input-group-append">
                                            <span class="input-group-text">
                                                <i class="mdi mdi-check-circle-outline"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <asp:RequiredFieldValidator ID="rvf_password" runat="server" ControlToValidate="txb_pass" ErrorMessage="Bạn chưa nhập mat khau"></asp:RequiredFieldValidator>

                                <div class="form-group">
                                    <asp:Button runat="server" ID="btn_login1" Text="Login" class="btn btn-primary submit-btn btn-block" OnClick="btn_login_Click" />
                                </div>
                                <div class="form-group d-flex justify-content-between">
                                    <div class="form-check form-check-flat mt-0">
                                        <label class="form-check-label">
                                            <asp:TextBox ID="chk_keep" runat="server" type="checkbox" class="form-check-input" />
                                            Keep me signed in
                                        </label>
                                    </div>
                                    <a href="#" class="text-small forgot-password text-black">Forgot Password</a>
                                </div>
                                <div class="form-group">
                                    <asp:LinkButton runat="server" href="http://account.google.com" class="btn btn-block g-login" target="_blank">
                                        <img   class="mr-3" src="../assets/images/file-icons/icon-google.svg" alt="" />Log in with Google </asp:LinkButton>
                                </div>
                                <div class="text-block text-center my-3">
                                    <span class="text-small font-weight-semibold">Not a member ?</span>
                                    <a href="DangKi.aspx" class="text-black text-small">Create new account</a>
                                </div>
                            </form>
                        </div>


                        <ul class="auth-footer">
                            <li>
                                <a href="#">Conditions</a>
                            </li>
                            <li>
                                <a href="#">Help</a>
                            </li>
                            <li>
                                <a href="#">Terms</a>
                            </li>
                        </ul>
                        <p class="footer-text text-center">copyright © 2019 YoungBuffalo. All rights reserved.</p>
                    </div>
                </div>
            </div>
            <!-- content-wrapper ends -->
        </div>
        <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="../assets/vendors/js/vendor.bundle.base.js"></script>
    <script src="../assets/vendors/js/vendor.bundle.addons.js"></script>
    <!-- endinject -->
    <!-- inject:js -->
    <script src="../assets/js/shared/off-canvas.js"></script>
    <script src="../assets/js/shared/misc.js"></script>
    <!-- endinject -->

</body>
</html>
