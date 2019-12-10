<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKi.aspx.cs" Inherits="GUI.DangKi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
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
    <link rel="shortcut icon" href="../assets/images/favicon.png" />
</head>
<body>
    <%--<form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Tên tài khoản:</td>
                    <td>
                        <asp:TextBox ID="txtTenTK" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Mật khẩu:</td>
                    <td>
                        <asp:TextBox ID="txtMK" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>SDT:</td>
                    <td>
                        <asp:TextBox ID="txtSDT" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Địa chỉ:</td>
                    <td>
                        <asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Họ tên:</td>
                    <td>
                        <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnDangKi" runat="server" Text="Đăng kí" OnClick="btnDangKi_Click" />
                        <input type="reset" value="Hủy bỏ" />
                    </td>
                </tr>
            </table>
        </div>
    </form>--%>
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth register-bg-1 theme-one">
          <div class="row w-100">
            <div class="col-lg-4 mx-auto">
              <h2 class="text-center mb-4">Register</h2>
              <div class="auto-form-wrapper">
                <form action="#" runat="server">
                    <asp:RequiredFieldValidator ID="rfv_name" runat="server" controlToValidate="username" ErrorMessage="Tài khoản không được để trống!" ForeColor="Red" Display="Dynamic" Font-Size="10px" Height="15px"></asp:RequiredFieldValidator>
                  <div class="form-group">
                    <div class="input-group">
                      <asp:TextBox runat="server" ID="username" type="text" class="form-control" placeholder="Username"/>
                        
                      <div class="input-group-append">
                        <span class="input-group-text">
                          <i class="mdi mdi-check-circle-outline"></i>
                        </span>
                      </div>
                    </div>
                  </div>
                    <asp:RequiredFieldValidator ID="rfv_pass" runat="server"   ControlToValidate="pass" ErrorMessage="Mật khẩu không được để trống !" ForeColor="Red" Display="Dynamic" Font-Size="10px" Height="15px"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rev_pass" runat="server" ControlToValidate="pass" ErrorMessage="MẬt khẩu phải từ 6 - 15 kí tự !" ForeColor="Red" ValidationExpression="\w{6,15}" Display="Dynamic"  Font-Size="10px" Height="15px"></asp:RegularExpressionValidator>
                  <div class="form-group">
                    <div class="input-group">
                      <asp:TextBox ID="pass" runat="server" type="password" class="form-control" placeholder="Password"/>
                        
                      <div class="input-group-append">
                        <span class="input-group-text">
                          <i class="mdi mdi-check-circle-outline"></i>
                        </span>
                      </div>
                    </div>
                  </div>
                    <asp:RequiredFieldValidator ID="rfv_conpass" runat="server" ControlToValidate="confirm_pass" ErrorMessage="Bạn phải nhập mật khẩu trước !" ForeColor="Red" Display="Dynamic"   Font-Size="10px" Height="15px"></asp:RequiredFieldValidator>
                      <asp:CompareValidator ID="cv_conpass" runat="server" ControlToCompare="pass" ControlToValidate="confirm_pass" ErrorMessage="Mật khẩu không trùng khớp!" ForeColor="Red"   Font-Size="10px" Height="15px"></asp:CompareValidator>
                  <div class="form-group">
                    <div class="input-group">
                      <asp:TextBox ID="confirm_pass" runat="server" type="password" class="form-control" placeholder="Confirm Password"/>
                      
                        <div class="input-group-append">
                        <span class="input-group-text">
                          <i class="mdi mdi-check-circle-outline"></i>
                        </span>
                      </div>
                    </div>
                  </div>
                    <asp:RequiredFieldValidator ID="rfv_mail" runat="server" ControlToValidate="txb_Email" ValidateExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" ErrorMessage="Email không hợp lệ!" ForeColor="Red" Display="Dynamic" Font-Size="10px" Height="15px"></asp:RequiredFieldValidator>
                  <div class="form-group">
                    <div class="input-group">
                      <asp:TextBox ID="txb_Email" runat="server" type="text" class="form-control" placeholder="Email"/>
                        
                      <div class="input-group-append">
                        <span class="input-group-text">
                          <i class="mdi mdi-check-circle-outline"></i>
                        </span>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="input-group">
                      <asp:TextBox ID="txb_SDT" runat="server" type="text" class="form-control" placeholder="Số điện thoại"/>
                           <%--<asp:RegularExpressionValidator ID="rev_sdt" runat="server" ControlToValidate="txb_SDT"  ValidateExpression="0\d{9}" ErrorMessage="SDT phải có 10 chữ số" Display="Dynamic" Font-Size="Smaller"></asp:RegularExpressionValidator>--%>
                      <div class="input-group-append">
                        <span class="input-group-text">
                          <i class="mdi mdi-check-circle-outline"></i>
                        </span>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="input-group">
                      <asp:TextBox ID="txb_DiaChi" runat="server" type="text" class="form-control" placeholder="Địa chỉ"/>
                    
                      <div class="input-group-append">
                        <span class="input-group-text">
                          <i class="mdi mdi-check-circle-outline"></i>
                        </span>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="input-group">
                      <asp:TextBox ID="txb_HoTen" runat="server" type="text" class="form-control" placeholder="Họ và tên"/>
                      <div class="input-group-append">
                        <span class="input-group-text">
                          <i class="mdi mdi-check-circle-outline"></i>
                        </span>
                      </div>
                    </div>
                  </div>

                  <div class="form-group d-flex justify-content-center">
                    <div class="form-check form-check-flat mt-0">
                      <label class="form-check-label">
                        <asp:TextBox ID="chk" runat="server" type="checkbox" class="form-check-input" checked ="true" /> I agree to the terms </label>
                    </div>
                  </div>
                  <div class="form-group">
                    <asp:LinkButton id="btn_dangki" runat="server" class="btn btn-primary submit-btn btn-block" OnClick="btnDangKi_Click">Register</asp:LinkButton>
                  </div>
                  <div class="text-block text-center my-3">
                    <span class="text-small font-weight-semibold">Already have and account ?</span>
                    <asp:HyperLink ID="btn_backtologin" runat="server" href="DangNhap.aspx" class="text-black text-small">Login</asp:HyperLink>
                  </div>
                </form>
              </div>
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
