using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BUS;

namespace GUI
{
    public partial class index : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["tenTK"];
            if (cookie == null)
            {
                panel_logout.Visible = false;
                
            }
            else
            {
                string tenTK = cookie.Value;
                lb_username.Text = tenTK;
                lb_amount.Text = BUS_giohang.soluongSp(tenTK).ToString();
                panel_logout.Visible = true;
            }
          
        }


        protected void lb_logout_Click(object sender, EventArgs e)
        {

            //Session.Clear();
            //Session.RemoveAll();
            //Session.Abandon();
            //Response.Redirect(Request.RawUrl);

            HttpCookie cookie = Request.Cookies["tenTK"];
            

                cookie.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(cookie);
                Response.Redirect(Request.RawUrl);



                //Session.Abandon();
                //Response.Redirect("index.aspx");

            

        }
    }
}