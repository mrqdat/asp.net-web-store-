using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DTO_hoadon
    {
        private string mahd;
        private string tentaikhoan;
        private DateTime ngaymua;
        private string diachi;
        private string sdt;
        private int tongtien;
        private bool trangthai;

        
        public string Tentaikhoan { get => tentaikhoan; set => tentaikhoan = value; }
        public DateTime Ngaymua { get => ngaymua; set => ngaymua = value; }
        public string Diachi { get => diachi; set => diachi = value; }
        public string Sdt { get => sdt; set => sdt = value; }
        public int Tongtien { get => tongtien; set => tongtien = value; }
        public bool Trangthai { get => trangthai; set => trangthai = value; }
        public string Mahd { get => mahd; set => mahd = value; }

        public DTO_hoadon()
        {
            Ngaymua = DateTime.Now;
            Tongtien = 0;
            Trangthai = true;
        }
    }
}
