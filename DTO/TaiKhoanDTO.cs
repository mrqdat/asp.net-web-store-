using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class TaiKhoanDTO
    {
        private string tenTaiKhoan;
        private string matKhau;
        private string email;
        private string sdt;
        private string diaChi;
        private string hoTen;
        private bool laAdmin;
        private string anhDaiDien;
        private bool trangThai;

        public string TenTaiKhoan { get => tenTaiKhoan; set => tenTaiKhoan = value; }
        public string MatKhau { get => matKhau; set => matKhau = value; }
        public string Email { get => email; set => email = value; }
        public string SDT { get => sdt; set => sdt = value; }
        public string DiaChi { get => diaChi; set => diaChi = value; }
        public string HoTen { get => hoTen; set => hoTen = value; }
        public bool LaAdmin { get => laAdmin; set => laAdmin = value; }
        public string AnhDaiDien { get => anhDaiDien; set => anhDaiDien = value; }
        public bool TrangThai { get => trangThai; set => trangThai = value; }

        public TaiKhoanDTO()
        {
            LaAdmin = false;
            TrangThai = true;
        }
    }
}
