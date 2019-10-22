using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BUS;

namespace GUI
{
    public partial class QLSanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                loadsp();
            }
        }

        protected void GiaoDienThem(bool gd)
        {
            txt_masp.Enabled = gd;
            btnThem.Enabled = gd;
            btnSua.Enabled = !gd;
        }

        protected void loadsp()
        {
            grv_sp.DataSource = BUS_Sanpham.LayDSsp();
            grv_sp.DataBind();
        }

        protected void XoaForm()
        {
            foreach (Control c in form1.Controls)
            {
                if (c is TextBox)
                {
                    (c as TextBox).Text = string.Empty;
                }
            }
           
            chkTrangThai.Checked = true;
        }


        protected void grv_sp_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Chonsp")
            {
                string tensp = e.CommandArgument.ToString();

                DTO_Sanpham sp = BUS_Sanpham.LayThongTinsp(tensp);
                if (sp != null)
                {
                    txt_masp.Text = sp.Masp;
                    txt_tensp.Text = sp.Tensp;
                    txt_giatien.Text = sp.Giatien;
                    txt_slton.Text = sp.Soluongtonkho;
                    txt_thongtinsp.Text = sp.Thongtin;
                    txt_maloaisp.Text = sp.Maloaisp;
                    img_anhminhhoa.Text = sp.Anhminhhoa;
                    chkTrangThai.Checked = sp.TrangThai;
                    GiaoDienThem(false);
                }
            }

            if (e.CommandName == "Xoasp")
            {
                string tensp = e.CommandArgument.ToString();

                if (BUS_Sanpham.XoaSP(tensp))
                {
                    XoaForm();
                    loadsp();
                }
                else
                {
                    Response.Write("<script>alert('Xóa tài sản phẩm thất bại');</script>");
                }
            }
        }


        protected void btnThem_Click(object sender, EventArgs e)
        {
            DTO_Sanpham sp = new DTO_Sanpham();
            sp.Masp = txt_masp.Text;
            sp.Tensp = txt_tensp.Text;
            sp.Thongtin = txt_thongtinsp.Text;
            sp.Giatien = txt_giatien.Text;
            sp.Soluongtonkho = txt_slton.Text;
            sp.Maloaisp = txt_maloaisp.Text;
            sp.TrangThai = chkTrangThai.Checked;

            if (BUS_Sanpham.Themsp(sp))
            {
                XoaForm();
                loadsp();
                GiaoDienThem(true);
            }
            else
            {
                Response.Write("<script>alert('Thêm sản kphẩm thất bại');</script>");
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            DTO_Sanpham sp = BUS_Sanpham.LayThongTinsp(txt_tensp.Text);
            sp.Tensp = txt_tensp.Text;
            
            sp.Thongtin= txt_thongtinsp.Text;
            sp.Maloaisp = txt_maloaisp.Text;
            sp.Giatien = txt_giatien.Text;
            sp.TrangThai = chkTrangThai.Checked;

            if (BUS_Sanpham.Suasp(sp))
            {
                XoaForm();
                loadsp();
                GiaoDienThem(true);
            }
            else
            {
                Response.Write("<script>alert('Sửa san pham thất bại');</script>");
            }
        }
        protected void btnHuy_Click(object sender, EventArgs e)
        {
            XoaForm();
            GiaoDienThem(true);
        }
    }
}