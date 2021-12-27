using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STRAVEL.UI
{
    public partial class LienheCT : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
         

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txt_tieude.Text != "")
            {
                tbl_LienHe infolh = new tbl_LienHe();
                infolh.TieuDe = txt_tieude.Text;
                infolh.Email = txt_Email.Text;
                infolh.SDT = txt_dienthoai.Text;
                infolh.HoTen = txt_hoten.Text;
                infolh.NoiDung = txt_noidung.Text;
                db.tbl_LienHes.InsertOnSubmit(infolh);
                db.SubmitChanges();
                ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Gửi Thành Công, Cảm Ơn Bạn Đã Phản Hồi!!!')", true);
                Clear();
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Thông Tin Nhập Sai Chưa Được Gửi.Nhập lại thông tin!!!')", true);

            }
           

        }
        private void Clear()
        {
            txt_tieude.Text = "";
            txt_Email.Text = "";
            txt_dienthoai.Text = "";
            txt_hoten.Text = "";
            txt_noidung.Text = "";
        }

    }
}