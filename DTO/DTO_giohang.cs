using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DTO_giohang
    {
        string tentaikhoan;
        string masp;
        int soluong;

        public string Tentaikhoan  { get => tentaikhoan; set => tentaikhoan = value; }
        public string Masp  { get => masp; set => masp = value; }
        public int Soluong { get => soluong; set => soluong = value; }
    }
}
