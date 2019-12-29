using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using System.Data;
using System.Data.SqlClient;

namespace DAO
{
    public class DAO_giohang
    {
        public static DataTable LayGH(string tenTK)
        {
            string query = "SELECT gh.MaSP,AnhMinhHoa, TenSP, GiaTien, SoLuong, GiaTien * SoLuong AS ThanhTien FROM GioHang gh INNER JOIN SanPham SP ON gh.MaSP = SP.MaSP WHERE TenTaiKhoan = @TenTaiKhoan  ";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@TenTaiKhoan", tenTK);

            return DataProvider.ExecuteSelectQuery(query, param);
        }

        public static bool KTGHTonTai(DTO_giohang gh)
        {
            string query = "SELECT COUNT(*) FROM GioHang WHERE TenTaiKhoan = @TenTaiKhoan AND MaSP = @MaSP";
            SqlParameter[] param = new SqlParameter[2];
            param[0] = new SqlParameter("@TenTaiKhoan", gh.Tentaikhoan);
            param[1] = new SqlParameter("@MaSP", gh.Masp);
            return Convert.ToInt32(DataProvider.ExecuteSelectQuery(query, param).Rows[0][0]) == 1;
        }

        public static bool ThemGH(DTO_giohang gh)
        {
            string query = "INSERT INTO GioHang (TenTaiKhoan, MaSP, SoLuong) VALUES (@TenTaiKhoan, @MaSP, @SoLuong)";
            SqlParameter[] param = new SqlParameter[3];
            param[0] = new SqlParameter("@TenTaiKhoan", gh.Tentaikhoan);
            param[1] = new SqlParameter("@MaSP", gh.Masp);
            param[2] = new SqlParameter("@SoLuong", gh.Soluong);
            return DataProvider.ExecuteInsertQuery(query, param) == 1;
        }

        public static bool SuaGH(DTO_giohang gh)
        {
            string query = "UPDATE GioHang SET SoLuong = SoLuong + @SoLuong WHERE TenTaiKhoan = @TenTaiKhoan AND MaSP = @MaSP";
            SqlParameter[] param = new SqlParameter[3];
            param[0] = new SqlParameter("@TenTaiKhoan", gh.Tentaikhoan);
            param[1] = new SqlParameter("@MaSP", gh.Masp);
            param[2] = new SqlParameter("@SoLuong", gh.Soluong);
            return DataProvider.ExecuteUpdateQuery(query, param) == 1;
        }

        public static bool xoasp(string tentk, string masp)
        {
            string query = "delete GioHang where TenTaiKhoan = @TenTaiKhoan and MaSP = @MaSP";
            SqlParameter[] param = new SqlParameter[2];
            param[0] = new SqlParameter("@TenTaiKhoan", tentk);
            param[1] = new SqlParameter("@MaSP", masp);
            return DataProvider.ExecuteDeleteQuery(query, param) == 1;
        }

        public static DTO_giohang ConvertToDTO(DataRow dr)
        {
            DTO_giohang gh = new DTO_giohang();
            gh.Tentaikhoan = dr["TenTaiKhoan"].ToString();
            gh.Masp = dr["MaSP"].ToString();
            gh.Soluong = Convert.ToInt32(dr["SoLuong"]);
            return gh;
        }

        //public static int soluongSP(string tenTK)
        //{
        //    string query = "select count(*) from GioHang where TenTaiKhoan = @TenTaiKhoan";
        //    SqlParameter[] param = new SqlParameter[1];
        //    param[0] = new SqlParameter("@TenTaiKhoan", tenTK);

        //    return Convert.ToInt32(DataProvider.ExecuteSelectQuery(query, param).Rows[0][0]);
        //}
        public static bool xoagh(string tentk)
        {
            string query = "delete GioHang where TenTaiKhoan = @TenTaiKhoan";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@TenTaiKhoan", tentk);

            return DataProvider.ExecuteDeleteQuery(query, param) == 1;
        }
    }
}
