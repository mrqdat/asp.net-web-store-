using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DTO;

namespace DAO
{
    public class DAO_hoadon
    {
        public static string laymaHDlonnhat()
        {
            string query = @"select MAX(MAHD) from HoaDon";
            SqlParameter[] param = new SqlParameter[0];
            return DataProvider.ExecuteSelectQuery(query, param).Rows[0][0].ToString();

        }

        public  static  bool themhoadon(DTO_hoadon hd)
        {
            string query = "Insert into HoaDon (MaHD, TenTaiKhoan, NgayMua, DiaChi, SDTGiaoHang, ThanhTien, TrangThai) values(@MaHD, @tentaikhoan, @ngaymua, @diachi, @sdt, @thanhtien, 1)";
            SqlParameter[] param = new SqlParameter[7];
            param[0] = new SqlParameter("@MaHD", hd.Mahd);
            param[1] = new SqlParameter("@tentaikhoan", hd.Tentaikhoan);
            param[2] = new SqlParameter("@ngaymua", hd.Ngaymua);
            param[3] = new SqlParameter("@diachi", hd.Diachi);
            param[4] = new SqlParameter("@sdt", hd.Sdt);
            param[5] = new SqlParameter("@thanhtien", hd.Tongtien);
            param[6] = new SqlParameter("@trangthai", hd.Trangthai);
            return DataProvider.ExecuteInsertQuery(query, param) == 1;
        }

        public static DTO_hoadon loaddonhang(string tentk)
        {

            string query = "select * from HoaDon where TenTaiKhoan =@TenTaiKhoan";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@TenTaiKhoan", tentk);
            return ConvertToDTO(DataProvider.ExecuteSelectQuery(query, param).Rows[0]);
        }


        public static  DTO_hoadon ConvertToDTO(DataRow dr)
        {
            DTO_hoadon hd = new DTO_hoadon();
            hd.Mahd = dr["MaHD"].ToString();
            hd.Tentaikhoan = dr["TenTaiKhoan"].ToString();
            hd.Ngaymua = Convert.ToDateTime(dr["NgayMua"]);
            
            hd.Tongtien = Convert.ToInt32(dr["TongTien"]);
            //hd.Diachi = dr["DiaChi"].ToString();
            hd.Trangthai = Convert.ToBoolean(dr["TrangThai"]);
            
            return hd;
        }
    }
}
