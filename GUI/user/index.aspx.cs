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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                dtl_sanpham.DataSource = BUS_Sanpham.LayDSsp();
                dtl_sanpham.DataBind();


                rpt_slider.DataSource = BUS_Sanpham.LayDSsp();
                rpt_slider.DataBind();
                //Response.Write("xin chao" + Session["username"]);
            }

            //protected void ddlLoaiSanPham_SelectedIndexChanged(object sender, EventArgs e)
            //{
            //    string maLoaiSP = ddlLoaiSanPham.SelectedValue;
            //    rptSanPham.DataSource = SanPhamBUS.LayDSSanPham(maLoaiSP);
            //    rptSanPham.DataBind();
            ////}
        }

        protected void rpt_slider_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "ThemGH")
            {
                HttpCookie cookie = Request.Cookies["tenTK"];
                if(cookie != null)
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
        protected void lb_topword_Click(object sender, EventArgs e)
        {
            Response.Redirect("searchResult.aspx?keyword=" + lb_topword.Text);
        }
        protected void lb_topword1_Click(object sender, EventArgs e)
        {
            Response.Redirect("searchResult.aspx?keyword=" + lb_topword1.Text);
        }
        protected void lb_topword2_Click(object sender, EventArgs e)
        {
            Response.Redirect("searchResult.aspx?keyword=" + lb_topword2.Text);
        }
        protected void lb_topword3_Click(object sender, EventArgs e)
        {
            Response.Redirect("searchResult.aspx?keyword=" + lb_topword3.Text);
        }
        protected void lb_topword4_Click(object sender, EventArgs e)
        {
            Response.Redirect("searchResult.aspx?keyword=" + lb_topword4.Text);
        }
        protected void lb_topword5_Click(object sender, EventArgs e)
        {
            Response.Redirect("searchResult.aspx?keyword=" + lb_topword5.Text);
        }
        protected void lb_topword6_Click(object sender, EventArgs e)
        {
            Response.Redirect("searchResult.aspx?keyword=" + lb_topword6.Text);
        }

        protected void imgAnhMinhHoa_Click(object sender, ImageClickEventArgs e)
        {
           
            Response.Redirect("Product.aspx?id=" + "SP01");
        }
        
    }
}