using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using DTO;
using System.Data;

namespace DAO
{
    public class DAO_Loaisanpham
    {
        public static List<DTO_Loaisanpham> LayDSLoaiSanPham()
        {
            string query = "SELECT * FROM LoaiSanPham";
            SqlParameter[] param = new SqlParameter[0];
            DataTable dtbKetQua = DataProvider.ExecuteSelectQuery(query, param);
            List<DTO_Loaisanpham> listLoaiSanPham = new List<DTO_Loaisanpham>();
            foreach (DataRow dr in dtbKetQua.Rows)
            {
                listLoaiSanPham.Add(ConvertToDTO(dr));
            }
            return listLoaiSanPham;
        }

        public static DTO_Loaisanpham ConvertToDTO(DataRow dr)
        {
            DTO_Loaisanpham loaiSP = new DTO_Loaisanpham();
            loaiSP.MaLoaiSP = dr["MaLoaiSP"].ToString();
            loaiSP.TenLoaiSP = dr["TenLoaiSP"].ToString();
            loaiSP.TrangThai = Convert.ToBoolean(dr["TrangThai"]);
            return loaiSP;
        }
    }
}
