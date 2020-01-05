using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BUS;

namespace GUI.user
{
    public partial class pf : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                HttpCookie cookie = Request.Cookies["tentk"];
                if (cookie == null)
                {
                    Response.Redirect("Dangnhap.aspx");
                }
                else
                {
                    string tenTK = cookie.Value;
                    TaiKhoanDTO tk = TaiKhoanBUS.LayThongTinTaiKhoan(tenTK);
                    txb_hoten.Text = tk.HoTen;
                    txb_mail.Text = tk.Email;
                    txb_sdt.Text = tk.SDT;
                    txb_diachi.Text = tk.DiaChi;
                }
            }
        }

        protected void btn_qldh_Click(object sender, EventArgs e)
        {
            tttk.Visible = false;
            gv_donhang.Visible = true;
            HttpCookie cookie = Request.Cookies["tentk"];

            string tenTK = cookie.Value;

            gv_donhang.DataSource = BUS_hoadon.loadhoadon(tenTK);
            gv_donhang.DataBind();

        }
    }
}