using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;

namespace GUI
{
    public partial class Admin_Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadDSTaiKhoan();

                HttpCookie cookie = Request.Cookies["tenTK"];
                if(cookie == null)
                {
                    Response.Redirect("DangNhap.aspx");
                }
                else
                {
                    string tenTK = cookie.Value;

                    TaiKhoanDTO tk = TaiKhoanBUS.LayThongTinTaiKhoan(tenTK);
                    lb_username.Text = tk.HoTen;
                    lb_mail.Text = tk.Email;
                }
                
            }
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["tenTK"];


            cookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(cookie);
            Response.Redirect(Request.RawUrl);
            //Response.Redirect("DangNhap.aspx");
        }

        protected void btn_qlsp_Click(object sender, EventArgs e)
        {
            Response.Redirect("QLSP.aspx");
        }

        protected void btn_qlkh_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Dashboard.aspx");
        }

        protected void LoadDSTaiKhoan()
        {
            grvTaiKhoan.DataSource = TaiKhoanBUS.LayDSTaiKhoan();
            grvTaiKhoan.DataBind();
        }


        protected void grvDSTaiKhoan_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ChonTK")
            {
                string tenTK = e.CommandArgument.ToString();

                TaiKhoanDTO tk = TaiKhoanBUS.LayThongTinTaiKhoan(tenTK);
                if (tk != null)
                {
                    txb_tentk.Text = tk.TenTaiKhoan;
                    //txb_pass.Text = tk.MatKhau;
                    txb_mail.Text = tk.Email;
                    txb_sdt.Text = tk.SDT;
                    txb_diachi.Text = tk.DiaChi;
                    txb_hoten.Text = tk.HoTen;
                    //rd_admin.Checked= tk.LaAdmin;
                    //txtanhdaidien.text = tk.anhdaidien;
                    //rd_trangthai.Checked = tk.TrangThai;
                    //giaodienthem(false);
                    }
            }

            if (e.CommandName == "XoaTK")
            {
                string tenTK = e.CommandArgument.ToString();

                if (TaiKhoanBUS.XoaTK(tenTK))
                {
                    //XoaForm();
                    LoadDSTaiKhoan();
                }
                else
                {
                    Response.Write("<script>alert('Xóa tài khoản thất bại');</script>");
                }
            }
        }
    }
}