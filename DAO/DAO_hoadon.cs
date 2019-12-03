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
        
    }
}
