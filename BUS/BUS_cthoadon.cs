using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using DAO;

namespace BUS
{
    public class BUS_cthoadon
    {
        public static bool themcthd(DTO_cthoadon cthd)
        {
            return DAO_cthoadon.themctHD(cthd);
        }
    }
}
