using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BUS;
using DTO;

namespace GUI.user
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                HttpCookie cookie = Request.Cookies["tenTK"];
                string tentk = cookie.Value;

                rpt_prdlist.DataSource = BUS_giohang.loadgiohang(tentk);
                rpt_prdlist.DataBind();
                lblTongTien.Text = BUS_giohang.tinhtien(tentk) + " USD";
                lbltong.Text = BUS_giohang.tinhtien(tentk) + " USD";
                if (rd_dc1.Checked == true)
                {

                    TaiKhoanDTO tk = TaiKhoanBUS.LayThongTinTaiKhoan(tentk);
                    txb_hoten.Text = tk.HoTen;
                    txb_diachi.Text = tk.DiaChi;
                    txb_sdt.Text = tk.SDT;
                    txb_zopcode.Text = "700000";
                    lbfee.Text = "Free";
                }

            }
        }

        protected void rd_dc2_CheckedChanged(object sender, EventArgs e)
        {
            if (rd_dc2.Checked == true)
            {
                txb_hoten.Text = "";
                txb_sdt.Text = "";
                txb_diachi.Text = "";
                txb_zopcode.Text = "";
                txb_diachi.Focus();
            }
        }

        protected void rd_dc1_CheckedChanged(object sender, EventArgs e)
        {
            if (rd_dc1.Checked == true)
            {
                HttpCookie cookie = Request.Cookies["tenTK"];
                string tentk = cookie.Value;

                TaiKhoanDTO tk = TaiKhoanBUS.LayThongTinTaiKhoan(tentk);
                txb_hoten.Text = tk.HoTen;
                txb_diachi.Text = tk.DiaChi;
                txb_sdt.Text = tk.SDT;
                txb_zopcode.Text = "700000";
            }
        }

        protected void ship2_CheckedChanged(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["tenTK"];
            string tentk = cookie.Value;
            lbfee.Text = "+ $3.00";

            int tong = BUS_giohang.tinhtien(tentk) + 3;

            lbltong.Text = tong.ToString();
        }

        protected void ship1_CheckedChanged(object sender, EventArgs e)
        {
            lbfee.Text = "Free";

        }
       

        protected void btnorder_Click1(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["tenTK"];
            string tentk = cookie.Value;
            if (cookie != null && string.IsNullOrEmpty(txb_hoten.Text) && string.IsNullOrEmpty(txb_diachi.Text) && string.IsNullOrEmpty(txb_sdt.Text))
            {
                string tenTK = cookie.Value;

                DTO_hoadon hd = new DTO_hoadon();
                DTO_cthoadon cthd = new DTO_cthoadon();

                TaiKhoanDTO tk = TaiKhoanBUS.LayThongTinTaiKhoan(tenTK);
                hd.Tentaikhoan = tk.TenTaiKhoan;
                hd.Diachi = tk.DiaChi;
                hd.Ngaymua = DateTime.Now;
                int tong = BUS_giohang.tinhtien(tentk) + 3;
                hd.Tongtien = tong;
                hd.Sdt = tk.SDT;
                BUS_hoadon.themhoadon(hd);


                cthd.Mahd = hd.Mahd;
                cthd.Dongia = hd.Tongtien;
                BUS_giohang.xoagh(tentk);
                Response.Redirect("index.aspx");
            }
            else
            {
                Response.Write("<script>alert('dat hang that bai')</script>")
            }
        }
    }
}