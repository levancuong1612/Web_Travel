using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STRAVEL.UI
{
    public partial class NguoidungCT : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static tbl_Admin infoad = new tbl_Admin();
        public static List<tbl_TinTuc> listtt = new List<tbl_TinTuc>();
        public static List<tbl_TinTuc> listtincuand = new List<tbl_TinTuc>();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["MaAD"]);
            var data = from q in db.tbl_Admins
                       where q.MaAD == id
                       select q;
            infoad = data.First();

            var datatt = from q in db.tbl_TinTucs
                         where q.IDAD == infoad.MaAD
                         select q;
            listtincuand = datatt.ToList();

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            var data = from q in db.tbl_TinTucs
                       select q;
            listtt = data.ToList();

            if (txt_tttieude.Text != "")
            {
                tbl_TinTuc info = new tbl_TinTuc();

                int mads = Convert.ToInt32(listtt.Last().MaTin);

                info.MaTin =Convert.ToInt32(mads+1);
                info.TieuDe = txt_tttieude.Text;
                if (FileUploadanhtt1.HasFile)
                {
                    info.HinhAnh = FileUploadanhtt1.FileName;
                    FileUploadanhtt1.SaveAs(Server.MapPath("tintuc\\") + info.HinhAnh);
                }

                info.TieuDe1 = txt_tttieude1.Text;
                info.ThongTin1 = txt_ttnoidung1.Text;
                if (FileUploadanhtt1.HasFile)
                {
                    info.HinhAnh1 = FileUploadanhtt1.FileName;
                    FileUploadanhtt1.SaveAs(Server.MapPath("tintuc\\") + info.HinhAnh1);
                }
                info.PhuDe1 = txt_ttphude1.Text;
                info.TieuDe2 = txt_tttieude2.Text;
                info.ThongTin2 = txt_ttnoidung2.Text;
                if (FileUploadanhtt2.HasFile)
                {
                    info.HinhAnh2 = FileUploadanhtt2.FileName;
                    FileUploadanhtt2.SaveAs(Server.MapPath("tintuc\\") + info.HinhAnh2);
                }
                info.PhuDe2 = txt_ttphude2.Text;
                info.TieuDe3 = txt_tttieude3.Text;
                info.ThongTin3 = txt_ttnoidung3.Text;
                if (FileUploadanhtt3.HasFile)
                {
                    info.HinhAnh3 = FileUploadanhtt3.FileName;
                    FileUploadanhtt3.SaveAs(Server.MapPath("tintuc\\") + info.HinhAnh3);
                }
                info.PhuDe3 = txt_ttphude3.Text;
                info.TieuDe4 = txt_tttieude4.Text;
                info.ThongTin4 = txt_ttnoidung4.Text;
                if (FileUploadanhtt4.HasFile)
                {
                    info.HinhAnh4 = FileUploadanhtt4.FileName;
                    FileUploadanhtt4.SaveAs(Server.MapPath("tintuc\\") + info.HinhAnh4);
                }
                info.PhuDe4 = txt_ttphude4.Text;
                info.TieuDe5 = txt_tttieude5.Text;
                info.ThongTin5 = txt_ttnoidung5.Text;
                if (FileUploadanhtt5.HasFile)
                {
                    info.HinhAnh5 = FileUploadanhtt5.FileName;
                    FileUploadanhtt5.SaveAs(Server.MapPath("tintuc\\") + info.HinhAnh5);
                }
                info.PhuDe5 = txt_ttphude5.Text;
                info.TieuDe6 = txt_tttieude6.Text;
                info.ThongTin6 = txt_ttnoidung6.Text;
                if (FileUploadanhtt6.HasFile)
                {
                    info.HinhAnh6 = FileUploadanhtt6.FileName;
                    FileUploadanhtt6.SaveAs(Server.MapPath("tintuc\\") + info.HinhAnh6);
                }
                info.PhuDe6 = txt_ttphude6.Text;
                info.TieuDe7 = txt_tttieude7.Text;
                info.ThongTin7 = txt_ttnoidung7.Text;
                if (FileUploadanhtt7.HasFile)
                {
                    info.HinhAnh7 = FileUploadanhtt7.FileName;
                    FileUploadanhtt7.SaveAs(Server.MapPath("tintuc\\") + info.HinhAnh7);
                }
                info.PhuDe7 = txt_ttphude7.Text;
                info.TieuDe8 = txt_tttieude8.Text;
                info.ThongTin8 = txt_ttnoidung8.Text;
                if (FileUploadanhtt8.HasFile)
                {
                    info.HinhAnh8 = FileUploadanhtt8.FileName;
                    FileUploadanhtt8.SaveAs(Server.MapPath("tintuc\\") + info.HinhAnh8);
                }
                info.PhuDe8 = txt_ttphude8.Text;
                info.TieuDe9 = txt_tttieude9.Text;
                info.ThongTin9 = txt_ttnoidung9.Text;
                if (FileUploadanhtt9.HasFile)
                {
                    info.HinhAnh9 = FileUploadanhtt9.FileName;
                    FileUploadanhtt9.SaveAs(Server.MapPath("tintuc\\") + info.HinhAnh9);
                }
                info.PhuDe9 = txt_ttphude9.Text;
                info.TieuDe10 = txt_tttieude10.Text;
                info.ThongTin10 = txt_ttnoidung10.Text;
                if (FileUploadanhtt10.HasFile)
                {
                    info.HinhAnh10 = FileUploadanhtt10.FileName;
                    FileUploadanhtt10.SaveAs(Server.MapPath("tintuc\\") + info.HinhAnh10);
                }
                info.PhuDe10 = txt_ttphude10.Text;
                info.IDAD = infoad.MaAD;
                info.PheDuyet = 0;
                int bd = Convert.ToInt32( infoad.Sobaidang);
                infoad.Sobaidang = bd + 1;
                
                db.tbl_TinTucs.InsertOnSubmit(info);
                db.SubmitChanges();

                ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Thêm mới thành công!!!')", true);
            }
            else {
                ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Thêm mới Không thành công. Vui lòng kiểm tra thông tin!!!')", true);
            }
        }
    }
}