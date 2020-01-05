using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using DAO;

namespace BUS
{
    public class BUS_hoadon
    {
        public static string themhoadon(DTO_hoadon hd)
        {
            try
            {
                hd.Mahd = (Convert.ToInt32(DAO_hoadon.laymaHDlonnhat()) + 1).ToString("000");
            }
            catch(Exception e)
            {
                hd.Mahd = "001";
            }

            if (DAO_hoadon.themhoadon(hd))
            {
                return hd.Mahd;

            }
            else
            {
                return null;
            }
        }

        public static DTO_hoadon loadhoadon(string tentk)
        {
            return DAO_hoadon.loaddonhang(tentk);
        }

    }
}

