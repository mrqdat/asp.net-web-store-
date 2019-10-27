using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using DAO;

namespace BUS
{
    public class BUS_Loaisanpham 
    {
          public static List<DTO_Loaisanpham> LayDSLoaiSanPham()
          {
                return DAO_Loaisanpham.LayDSLoaiSanPham();
          }
    }
}
