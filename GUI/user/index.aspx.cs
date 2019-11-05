using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

namespace GUI
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //rptSanPham.DataSource = BUS_Sanpham.LayDSsp();
                //rptSanPham.DataBind();

                //ddlLoaiSanPham.DataSource = BUS_Loaisanpham.LayDSLoaiSanPham();
                //ddlLoaiSanPham.DataTextField = "TenLoaiSP";
                //ddlLoaiSanPham.DataValueField = "MaLoaiSP";
                //ddlLoaiSanPham.AutoPostBack = true;
                //ddlLoaiSanPham.DataBind();

                //Response.Write("xin chao" + Session["username"]);
            }

            //protected void ddlLoaiSanPham_SelectedIndexChanged(object sender, EventArgs e)
            //{
            //    string maLoaiSP = ddlLoaiSanPham.SelectedValue;
            //    rptSanPham.DataSource = SanPhamBUS.LayDSSanPham(maLoaiSP);
            //    rptSanPham.DataBind();
            //}
        }
    }
}