using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DTO_Sanpham
    {
        private string masp;
        private string tensp;
        private string thongtin;
        private string giatien;
        private string soluongtonkho;
        private string maloaisp;
        private string anhminhhoa;
        private bool trangThai;

        public string Masp { get => masp; set => masp = value; }
        public string Tensp { get => tensp; set => tensp = value; }
        public string Thongtin { get => thongtin; set => thongtin = value; }
        public string Giatien { get => giatien; set => giatien = value; }
        public string Soluongtonkho { get => soluongtonkho; set => soluongtonkho = value; }
        public string Maloaisp { get => maloaisp; set => maloaisp = value; }
        public string Anhminhhoa { get => anhminhhoa; set => anhminhhoa = value; }
        public bool TrangThai { get => trangThai; set => trangThai = value; }


        public DTO_Sanpham()
        { 
            TrangThai = true;
        }
    }

}
