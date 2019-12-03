<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QLSanPham.aspx.cs" Inherits="GUI.QLSanPham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Mã Sản Phẩm</td>
                    <td>
                        <asp:TextBox ID="txt_masp" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Tên Sản Phẩm:</td>
                    <td>
                        <asp:TextBox ID="txt_tensp" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Thông Tin:</td>
                    <td>
                        <asp:TextBox ID="txt_thongtinsp" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Giá Tiền:</td>
                    <td>
                        <asp:TextBox ID="txt_giatien" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Số Lượng Tồn:</td>
                    <td>
                        <asp:TextBox ID="txt_slton" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Mã Loại Sản Phẩm:</td>
                    <td>
                        <asp:TextBox ID="txt_maloaisp" runat="server"></asp:TextBox></td>
                </tr>
               
                <tr>
                    <td>Ảnh Minh Họa</td>
                    <td>
                        <asp:TextBox ID="img_anhminhhoa" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Trạng thái:</td>
                    <td>
                        <asp:CheckBox ID="chkTrangThai" runat="server" Checked="true" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnThem" runat="server" Text="Thêm" OnClick="btnThem_Click" />
                        <asp:Button ID="btnSua" runat="server" Text="Sửa" Enabled="false" OnClick="btnSua_Click" />
                        <asp:Button ID="btnHuy" runat="server" Text="Hủy bỏ" OnClick="btnHuy_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="grv_sp" runat="server" AutoGenerateColumns="False" OnRowCommand="grv_sp_RowCommand">
            <Columns>
                <asp:BoundField DataField="MaSP" HeaderText="MaSP" />
                <asp:BoundField DataField="TenSP" HeaderText="TenSP" />
                <asp:BoundField DataField="ThongTin" HeaderText="THông Tin" />
                <asp:BoundField DataField="GiaTien" HeaderText="Giá Tiền" />
                <asp:BoundField DataField="SoLuongTonKho" HeaderText="Tồn Kho" />
                <asp:BoundField DataField="MaLoaiSP" HeaderText="Mã Loại SP" />
                <asp:BoundField DataField="AnhMinhHoa" HeaderText="Anh Minh Họa" />
                <asp:BoundField DataField="TrangThai" HeaderText="Trạng Thái" />
                <asp:TemplateField HeaderText="tùy chọn">
                    
                <ItemTemplate>
                    <asp:Button ID="btnChon" runat="server" CausesValidation="False" CommandName="Chonsp" CommandArgument='<%# Eval("TenSP") %>' Text="Chọn" />
                    <asp:Button ID="btnXoa" runat="server" CausesValidation="False" CommandName="Xoasp" CommandArgument='<%# Eval("TenSP") %>' Text="Xóa" OnClientClick="return confirm('Bạn có chắc chắn muốn xóa?');" />
                </ItemTemplate>
                    
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
