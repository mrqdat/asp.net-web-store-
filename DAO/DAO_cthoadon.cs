using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using DTO;

namespace DAO
{
    public class DAO_cthoadon
    {
        public static bool themctHD(DTO_cthoadon cthoadon)
        {
            string query = "insert into CTHoaDon(MaHD, MaSP, SoLuong, DonGia) values (@mahd, @masp, @soluong, @dongia)";
            SqlParameter[] param = new SqlParameter[4];
            param[0] = new SqlParameter("@mahd", cthoadon.Mahd);
            param[1] = new SqlParameter("@masp", cthoadon.Masp);
            param[2] = new SqlParameter("@soluong", cthoadon.Soluong);
            param[3] = new SqlParameter("@dongia", cthoadon.Dongia);

            return DataProvider.ExecuteInsertQuery(query,param) == 1;
        }
    }
}
