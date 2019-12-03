using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using DTO;

namespace DAO
{
    public class DAO_Sanpham
    {
        public static List<DTO_Sanpham> LayDSTSanpham()
        {
            string query = "SELECT * FROM SanPham";
            SqlParameter[] param = new SqlParameter[0];
            DataTable dtbSanpham = DataProvider.ExecuteSelectQuery(query, param);
            List<DTO_Sanpham> lstSanpham = new List<DTO_Sanpham>();
            foreach (DataRow dr in dtbSanpham.Rows)
            {
                lstSanpham.Add(ConvertToDTO(dr));
            }
            return lstSanpham;
        }

        public static DTO_Sanpham laythongtinsanpham(string tensp)
        {
            string query = "SELECT * FROM SanPham WHERE TenSP = @tensp";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@tensp", tensp);
            return ConvertToDTO(DataProvider.ExecuteSelectQuery(query, param).Rows[0]);
        }

        
        public static bool KTspTonTai(string tensp)
        {
            string query = "SELECT COUNT(*) FROM SanPham WHERE TenSP = @tensp";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@tensp", tensp);
            return Convert.ToInt32(DataProvider.ExecuteSelectQuery(query, param).Rows[0][0]) == 1;
        }

        public static bool Themsp(DTO_Sanpham sp)
        {
            string query = "INSERT INTO SanPham (MaSP, TenSP, GiaTien, SoLuongTonKho, MaLoaiSP, AnhMinhHoa, TrangThai) VALUES (@masp, @tensp, @giatien,@thongtin,@soluongton,@maloaisp,0,1)";
            SqlParameter[] param = new SqlParameter[6];
            param[0] = new SqlParameter("@masp", sp.Masp);
            param[1] = new SqlParameter("@tensp", sp.Tensp);
            param[2] = new SqlParameter("@giatien", sp.Giatien);
            param[3] = new SqlParameter("@thongtin", sp.Thongtin);
            param[4] = new SqlParameter("@soluongton", sp.Soluongtonkho);
            param[5] = new SqlParameter("@maloaisp", sp.Maloaisp);
            param[6] = new SqlParameter("@anhminhhoa", sp.Anhminhhoa);
            param[7] = new SqlParameter("@trangthai", sp.TrangThai);

            return DataProvider.ExecuteInsertQuery(query, param) == 1;
        }

        public static bool update_soluong(DTO_Sanpham tensp)
        {
            string query = "update SanPham set SoLuongTonKho += 1 where TenSP = @tensp;";
            SqlParameter[] param = new SqlParameter[1];
           
            param[0] = new SqlParameter("@tensp", tensp);
            
            return DataProvider.ExecuteUpdateQuery(query, param) == 1;
        }


        public static bool Suasp(DTO_Sanpham sp)
        {
            string query = "UPDATE SanPham SET MaSP = @Masp, TenSP = @Tensp, GiaTien = @Giatien, SoLuongTonKho = @SoLuongTonKho, MaLoaiSP = @MaLoaisp, AnhMinhHoa = @AnhMinhHoa, TrangThai = @TrangThai ";
            SqlParameter[] param = new SqlParameter[9];
            param[0] = new SqlParameter("@MaSP", sp.Masp);
            param[1] = new SqlParameter("@TenSP", sp.Tensp);
            param[2] = new SqlParameter("@GiaTien", sp.Giatien);
            param[3] = new SqlParameter("@SoLuongTonKho", sp.Soluongtonkho);
            param[4] = new SqlParameter("@MaLoaiSP", sp.Maloaisp);
            param[5] = new SqlParameter("@AnhMinhHoa", sp.Anhminhhoa);
            param[8] = new SqlParameter("@TrangThai", sp.TrangThai);
            return DataProvider.ExecuteUpdateQuery(query, param) == 1;
        }

        public static bool Xoasp(string tensp)
        {
            string query = "UPDATE SanPham SET TrangThai = 0 WHERE TenSP = @tensp";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@tensp", tensp);
            return DataProvider.ExecuteUpdateQuery(query, param) == 1;
        }

        public static DTO_Sanpham ConvertToDTO(DataRow dr)
        {
            DTO_Sanpham sp = new DTO_Sanpham();
            sp.Masp= dr["MaSP"].ToString();
            sp.Tensp = dr["TenSP"].ToString();
            sp.Thongtin = dr["ThongTin"].ToString();
            sp.Giatien = dr["GiaTien"].ToString();
            sp.Soluongtonkho = dr["SoLuongTonKho"].ToString();
            sp.Maloaisp = dr["MaLoaiSP"].ToString();
            sp.Anhminhhoa = dr["AnhMinhHoa"].ToString();
            sp.TrangThai = Convert.ToBoolean(dr["TrangThai"]);
            return sp;
        }
    }
}
