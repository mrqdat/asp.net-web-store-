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
    public partial class QLSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadDSSP();
            }
        }
        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("DangNhap.aspx");
        }

        protected void btn_qlsp_Click(object sender, EventArgs e)
        {
            Response.Redirect("QLSP.aspx");
        }

        protected void btn_qlkh_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Dashboard.aspx");
        }

        protected void LoadDSSP()
        {
            grv_sp.DataSource = BUS_Sanpham.LayDSsp();
            grv_sp.DataBind();
        }
        protected void grv_sp_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Chonsp")
            {
                string tensp = e.CommandArgument.ToString();

                DTO_Sanpham sp = BUS_Sanpham.LayThongTinsp(tensp);
                if (sp != null)
                {
                    txb_masp.Text = sp.Masp;
                    txb_tensp.Text = sp.Tensp;
                    txb_giatien.Text = sp.Giatien;
                    txb_sltonkho.Text = sp.Soluongtonkho;
                    txb_thongtin.Text = sp.Thongtin;
                    txb_maloaisp.Text = sp.Maloaisp;
                }
            }

            if (e.CommandName == "Xoasp")
            {
                string tensp = e.CommandArgument.ToString();

                if (BUS_Sanpham.XoaSP(tensp))
                {
                    //XoaForm();
                    LoadDSSP();
                }
                else
                {
                    Response.Write("<script>alert('Xóa tài khoản thất bại');</script>");
                }
            }
        }
    }
}