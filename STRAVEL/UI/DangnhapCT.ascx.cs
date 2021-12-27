using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STRAVEL.UI
{
    public partial class DangnhapCT : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static List<tbl_Admin> listadmin = new List<tbl_Admin>();
        public static List<tbl_Admin> listad = new List<tbl_Admin>();
        public static tbl_Admin info = new tbl_Admin();
        protected void Page_Load(object sender, EventArgs e)
        {

            Session.Clear();
            info.MaAD = 0;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void txt_taikhoan_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (chk_hienthi.Checked == false)
            {
                string pass = txt_matkhau.Text;
                txt_matkhau.TextMode = TextBoxMode.Password;
                txt_matkhau.Attributes.Add("value", pass);

            }

            if (chk_hienthi.Checked)
            {
                txt_matkhau.TextMode = TextBoxMode.SingleLine;
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
           
           
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click2(object sender, EventArgs e)
        {
            var data = from q in db.tbl_Admins
                       where q.Quyen=="Admin"
                       select q;
            listadmin = data.ToList();
            var data2 = from q in db.tbl_Admins
                        where q.Quyen=="Người Dùng"
                       select q;
            listad = data2.ToList();
            foreach (var ad in listad)
            {
                if (txt_taikhoan.Text==ad.ID && txt_matkhau.Text==ad.MatKhau)
                {
                    Response.Redirect("Nguoidung.aspx?MaAD="+ad.MaAD);
                }
                 
                else
                {
                    ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Tài Khoản Hoặc Mật Khẩu Không Chính Xác, Vui Lòng Nhập Lại!!!')", true);

                }
            }
            foreach (var ad2 in listadmin)
            {
                if (txt_taikhoan.Text == ad2.ID && txt_matkhau.Text==ad2.MatKhau)
                {
                    Response.Redirect("Admin.aspx?MaAD=" + ad2.MaAD);
                }

                else
                {
                    ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Tài Khoản Hoặc Mật Khẩu Không Chính Xác, Vui Lòng Nhập Lại!!!')", true);

                }
            }
           
            
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dangky.aspx");

        }
    }
}