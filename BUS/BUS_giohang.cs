using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAO;
using DTO;

namespace BUS
{
    public class BUS_giohang
    {
        public static bool themvaogiohang(DTO_giohang sp)
        {
            if (DAO_giohang.KTGHTonTai(sp)) 
            {
                return DAO_giohang.SuaGH(sp);
            }
            else
            {
                return DAO_giohang.ThemGH(sp);
            }

        }

        public static DataTable loadgiohang(string tentk)
        {
            return DAO_giohang.LayGH(tentk);
        }

        public static int tinhtien(string tentk)
        {
            DataTable ketqua = DAO_giohang.LayGH(tentk);
            int tongtien = 0;
            foreach (DataRow dr in ketqua.Rows)
            {
                tongtien += Convert.ToInt32(dr["ThanhTien"]);
            }

            return tongtien;
        }

        public static int soluongSp(string tenTK)
        {

            DataTable dtb_giohang = DAO_giohang.LayGH(tenTK);

            return dtb_giohang.Rows.Count;
        }

        public static bool xoaSP(string tentk, string masp)
        {
            
            return DAO_giohang.xoasp(tentk,masp);
        }
    }
}
