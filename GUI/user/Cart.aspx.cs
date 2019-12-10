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
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {


                rpt_slider.DataSource = BUS_Sanpham.LayDSsp();
                rpt_slider.DataBind();


                HttpCookie cookie = Request.Cookies["tenTK"];
                if (cookie != null)
                {
                    string tenTK = cookie.Value;
                    if (!Page.IsPostBack)
                    {
                        DataTable dtb_giohang = BUS_giohang.loadgiohang(tenTK);
                        grvGioHang.DataSource = dtb_giohang;
                        grvGioHang.DataBind();
                        lblTongTien.Text = BUS_giohang.tinhtien(tenTK) + " USD";
                    }
                }
                else
                {
                    Response.Redirect("../DangNhap.aspx");
                }
            }

        }
        protected void btnThanhToan_Click(object sender, EventArgs e)
        {
            //string tenTK = Session["username"].ToString();
            HttpCookie cookie = Request.Cookies["tenTK"];
            if (cookie != null)
            {
                string tenTK = cookie.Value;              
                DTO_hoadon hd = new DTO_hoadon();
                hd.Tentaikhoan = tenTK;
                hd.Ngaymua = DateTime.Now;
                hd.Diachi = "Tp.HCM";
                hd.Sdt = "0905939947";
                hd.Tongtien = BUS_giohang.tinhtien(tenTK);
                hd.Mahd = BUS_hoadon.themhoadon(hd);

                DataTable dtbKetQua = BUS_giohang.loadgiohang(tenTK);
                foreach (DataRow dr in dtbKetQua.Rows)
                {
                    DTO_cthoadon cthd = new DTO_cthoadon();
                    cthd.Mahd = hd.Mahd;
                    cthd.Masp = dr["MaSP"].ToString();
                    cthd.Soluong = Convert.ToInt32(dr["SoLuong"]);
                    cthd.Dongia = Convert.ToInt32(dr["GiaTien"]);
                    BUS_cthoadon.themcthd(cthd);
                }
            }
            //Response.Redirect("");
        }

        protected void btn_update_Click(object sender, ImageClickEventArgs e)
        {

        }
        protected void btn_delete_Click(object sender, ImageClickEventArgs e)
        {
            if (!Page.IsPostBack)
            {
                HttpCookie cookie = Request.Cookies["tenTK"];
                if (cookie != null)
                {
                    DTO_giohang gh = new DTO_giohang();
                    BUS_giohang.xoaSP(gh);
                    Response.Redirect(Request.RawUrl);
                }
            }
            
            
        }

        protected void grvGioHang_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void rpt_slider_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "ThemGH")
            {
                HttpCookie cookie = Request.Cookies["tenTK"];
                if (cookie != null)
                {
                    string tenTK = cookie.Value;
                    DTO_giohang gh = new DTO_giohang();
                    gh.Tentaikhoan = tenTK;
                    gh.Masp = e.CommandArgument.ToString();
                    gh.Soluong = 1;

                    if (BUS_giohang.themvaogiohang(gh))
                    {
                        Response.Write("<script>alert('thanh cong')</script>");
                        Response.Redirect("cart.aspx");

                    }
                    else
                    {
                        Response.Redirect("cart.aspx");

                    }
                }
                else
                {
                    Response.Write("<script>warning('ban can phai dang nhap truoc')</script>");
                    Response.Redirect("../DangNhap.aspx");

                }
            }
        }
    }
}