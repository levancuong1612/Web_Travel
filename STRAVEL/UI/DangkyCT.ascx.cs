using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STRAVEL.UI
{
    public partial class DangkyCT : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static string[] a= new string[2];
        public static List<tbl_Admin> lad = new List<tbl_Admin>();
            protected void Page_Load(object sender, EventArgs e)
        {
            var data = from q in db.tbl_Admins
                       select q;
            lad = data.ToList();
        
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            foreach (var item in lad)
            {
                if (txt_taikhoan.Text == item.ID)
                {
                    lbl_taikhoan.Text = "Tài khoản tồn tại ";
                }
            }
                if (txt_taikhoan.Text != "" && txt_hoten.Text != "" && txt_matkhau.Text != "" && txt_sdt.Text != "" && txt_xacnhan.Text == txt_matkhau.Text && txt_email.Text != "")
                            {
                                tbl_Admin ad = new tbl_Admin();
                                ad.HoTen = txt_hoten.Text;
                                ad.ID = txt_taikhoan.Text;
                                ad.MatKhau = txt_matkhau.Text;
                                ad.Email = txt_email.Text;
                                ad.SDT = txt_sdt.Text;
                                if (FileUpload1.HasFile)
                                {
                                    ad.HinhAnh = FileUpload1.FileName;
                                    FileUpload1.SaveAs(Server.MapPath("admin\\") + ad.HinhAnh);
                                }
                                ad.Quyen = "Người Dùng";
                                db.tbl_Admins.InsertOnSubmit(ad);
                                db.SubmitChanges();
                                ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Tài Khoản Của Bạn Đã Được Đăng Ký, Hiện Tại Bạn Có Thể Đăng Bài Viết !!)", true);
                                Response.Redirect("Nguoidung.aspx?MaAD=" + ad.MaAD);
                            }
           

           
        }
        public void clear()
        {
            txt_hoten.Text = "";
            txt_taikhoan.Text = "";
            txt_email.Text = "";
            txt_xacnhan.Text = "";
            txt_matkhau.Text = "";
            txt_sdt.Text = "";
        }
    }
}