using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DTO_cthoadon
    {
        private string mahd;
        private string masp;
        private int soluong;
        private int dongia;

        
        public int Soluong { get => soluong; set => soluong = value; }
        public int Dongia { get => dongia; set => dongia = value; }
        public string Mahd { get => mahd; set => mahd = value; }
        public string Masp { get => masp; set => masp = value; }

        public DTO_cthoadon()
        {
            Soluong = 1;
            Dongia = 0;
        }
    }
}
