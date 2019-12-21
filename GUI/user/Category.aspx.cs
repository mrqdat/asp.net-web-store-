using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;

namespace GUI.user
{
    public partial class Category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                dtl_sanpham.DataSource = BUS_Sanpham.LayDSsp();
                dtl_sanpham.DataBind();
            }
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