using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using DAO;

namespace BUS
{
    public class BUS_Sanpham
    {
        public static List<DTO_Sanpham> LayDSsp()
        {
            return DAO_Sanpham.LayDSTSanpham();
        }

        public static List<DTO_Sanpham> LayDSsp(string malsp)
        {
            return DAO_Sanpham.LayDSTSanpham(malsp);
        }

        public static DTO_Sanpham LayThongTinsp(string tensp)
        {
            if (!DAO_Sanpham.KTspTonTai(tensp))
            {
                return null;
            }
            else
            {
                return DAO_Sanpham.laythongtinsanpham(tensp);
            }
        }

       

        public static bool Themsp(DTO_Sanpham sp)
        {
            if (DAO_Sanpham.KTspTonTai(sp.Tensp))
            {
                return DAO_Sanpham.Themsp(sp);
            }
            else if(!DAO_Sanpham.KTspTonTai(sp.Tensp))
            {
                return false;
            }
            else
            {
                return DAO_Sanpham.Themsp(sp);
            }
        }

        public static bool Suasp(DTO_Sanpham sp)
        {
            if (!DAO_Sanpham.KTspTonTai(sp.Tensp))
            {
                return false;
            }
            else
            {
                return DAO_Sanpham.Suasp(sp);
            }
        }

        public static bool XoaSP(string tensp)
        {
            if (!DAO_Sanpham.KTspTonTai(tensp))
            {
                return false;
            }
            else
            {
                return DAO_Sanpham.Xoasp(tensp);
            }
        }

        public static List<DTO_Sanpham> timkiemSP(string tensp)
        {
            return DAO_Sanpham.TimkiemSP(tensp);
        }
    }
}
