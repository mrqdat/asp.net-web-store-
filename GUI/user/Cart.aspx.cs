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
            if (!Page.IsPostBack)
            {


                rpt_slider.DataSource = BUS_Sanpham.LayDSsp();
                rpt_slider.DataBind();


                HttpCookie cookie = Request.Cookies["tenTK"];
                if (cookie != null)
                {
                    string tenTK = cookie.Value;
                    if (!Page.IsPostBack)
                    {
                        DataTable dtb_giohang = BUS_giohang.loadgiohang(tenTK);
                        TaiKhoanDTO tk = TaiKhoanBUS.LayThongTinTaiKhoan(tenTK);

                        grvGioHang.DataSource = dtb_giohang;
                        grvGioHang.DataBind();
                        lblTongTien.Text = BUS_giohang.tinhtien(tenTK) + " USD";

                        //lb_tongtien.Text = BUS_giohang.tinhtien(tenTK) + " USD";
                        //txb_tenTK.Text = tk.TenTaiKhoan;
                        //txb_sdt.Text = tk.SDT;
                        //txb_diachi.Text = tk.DiaChi;
                        //txb_ngaymua.Text = DateTime.Now.ToString();
                    }
                }
                else
                {
                    Response.Redirect("../DangNhap.aspx");
                }

            }
        }

        //protected void btn_thanhtoan_Click(object sender, EventArgs e) {

        //    HttpCookie cookie = Request.Cookies["tenTK"];
        //    if(cookie != null)
        //    {
        //        string tenTK = cookie.Value;
        //        if (!Page.IsPostBack)
        //        {
        //            DTO_hoadon hd = new DTO_hoadon();
        //            TaiKhoanDTO tk = TaiKhoanBUS.LayThongTinTaiKhoan(tenTK);
        //            //hd.Tentaikhoan = tk.TenTaiKhoan;
        //            //hd.Diachi = tk.DiaChi;
        //            //hd.Ngaymua = DateTime.Now;
        //            //hd.Tongtien = Convert.ToInt32(lblTongTien.Text);
        //            //hd.Sdt = tk.SDT;


        //            //txb_mahd.Text = "###";
        //            lb_tongtien.Text = BUS_giohang.tinhtien(tenTK) + " USD";

        //            txb_tenTK.Text = tk.TenTaiKhoan;
        //            txb_sdt.Text = tk.SDT;
        //            txb_diachi.Text = tk.DiaChi;
        //            txb_ngaymua.Text = DateTime.Now.ToString();

        //        }

        //    }
        //}


        //protected void btnThanhToan_Click(object sender, EventArgs e)
        //{
        //    //string tenTK = Session["username"].ToString();
        //   
        //    //Response.Redirect("");
        //}



        protected void btn_ttmuahang_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
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

        //protected void btn_cnthanhtoan_Click1(object sender, EventArgs e)
        //{
        //    HttpCookie cookie = Request.Cookies["tenTK"];
        //    if (cookie != null)
        //    {
        //        string tentk = cookie.Value;
        //        TaiKhoanDTO tk = TaiKhoanBUS.LayThongTinTaiKhoan(tentk);
        //        DTO_hoadon hd = new DTO_hoadon();
        //        hd.Tentaikhoan = tentk;
        //        hd.Ngaymua = DateTime.Now;
        //        hd.Diachi = tk.DiaChi;
        //        hd.Sdt = tk.SDT;
        //        hd.Tongtien = BUS_giohang.tinhtien(tentk);
        //        hd.Mahd = BUS_hoadon.themhoadon(hd);

        //        DataTable dtbketqua = BUS_giohang.loadgiohang(tentk);
        //        foreach (DataRow dr in dtbketqua.Rows)
        //        {
        //            DTO_cthoadon cthd = new DTO_cthoadon();
        //            cthd.Mahd = hd.Mahd;
        //            cthd.Masp = dr["masp"].ToString();
        //            cthd.Soluong = Convert.ToInt32(dr["soluong"]);
        //            cthd.Dongia = Convert.ToInt32(dr["giatien"]);
        //            BUS_cthoadon.themcthd(cthd);
        //        }


        //        Response.Write("<script>alert('Đơn hàng xử ý thành công!')</script>");
        //        BUS_giohang.xoagh(tentk);
        //    }


        //    //response.redirect("");
        //}


        protected void grvGioHang_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "xoasp")
            {
                HttpCookie cookie = Request.Cookies["TenTk"];
                string tentk = cookie.Value;

                string masp = e.CommandArgument.ToString();

                if (BUS_giohang.xoaSP(tentk, masp))
                {
                    Response.Write("<script>alert('tc')</script>");
                    Response.Redirect("cart.aspx");
                }

            }
            else
            {
                Response.Write("<script>alert('failed')</script>");
            }
        }

        protected void btn_ttoan_Click(object sender, EventArgs e)
        {
            Response.Redirect("Checkout.aspx");
        }
    }
}