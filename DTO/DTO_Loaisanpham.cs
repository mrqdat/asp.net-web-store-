using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DTO_Loaisanpham
    {
        private string maLoaiSP;
        private string tenLoaiSP;
        private bool trangThai;

        public string MaLoaiSP { get => maLoaiSP; set => maLoaiSP = value; }
        public string TenLoaiSP { get => tenLoaiSP; set => tenLoaiSP = value; }
        public bool TrangThai { get => trangThai; set => trangThai = value; }

        public DTO_Loaisanpham()
        {
            TrangThai = true;
        }
    }
}
