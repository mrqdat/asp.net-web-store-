using DAO;
using DTO;
using System;
using System.Collections.Generic;

namespace BUS
{
    public class TaiKhoanBUS
    {
        public static List<TaiKhoanDTO> LayDSTaiKhoan()
        {
            return TaiKhoanDAO.LayDSTaiKhoan();
        }

        public static TaiKhoanDTO LayThongTinTaiKhoan(string tenTK)
        {
            if (!TaiKhoanDAO.KTTKTonTai(tenTK))
            {
                return null;
            }
            else
            {
                return TaiKhoanDAO.LayThongTinTaiKhoan(tenTK);
            }
        }

        public static bool KTDangNhap(string tenTK, string mk)
        {
            if (!TaiKhoanDAO.KTTKTonTai(tenTK))
            {
                return false;
            }
            else
            {
                return mk == TaiKhoanDAO.LayMatKhau(tenTK);
            }
        }

        public static bool ThemTK(TaiKhoanDTO tk)
        {
            if (TaiKhoanDAO.KTTKTonTai(tk.TenTaiKhoan))
            {
                return false;
            }
            else
            {
                return TaiKhoanDAO.ThemTK(tk);
            }
        }

        public static bool SuaTK(TaiKhoanDTO tk)
        {
            if (!TaiKhoanDAO.KTTKTonTai(tk.TenTaiKhoan))
            {
                return false;
            }
            else
            {
                return TaiKhoanDAO.SuaTK(tk);
            }
        }

        public static bool XoaTK(string tenTK)
        {
            if (!TaiKhoanDAO.KTTKTonTai(tenTK))
            {
                return false;
            }
            else
            {
                return TaiKhoanDAO.XoaTK(tenTK);
            }
        }

        public static bool Xoasp(string tensp)
        {
            throw new NotImplementedException();
        }
    }
}
