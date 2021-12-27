using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STRAVEL
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static List<tbl_Tinh> listtinhmb = new List<tbl_Tinh>();
        public static List<tbl_Tinh> listtinhmt = new List<tbl_Tinh>();
        public static List<tbl_Tinh> listtinhmn = new List<tbl_Tinh>();
        public static tbl_CauHinh cauhinh = new tbl_CauHinh();
        public static tbl_CauHinh tenweb = new tbl_CauHinh();
        public static tbl_CauHinh diachi = new tbl_CauHinh();
        public static tbl_CauHinh sdt = new tbl_CauHinh();
        public static tbl_CauHinh email = new tbl_CauHinh();
        public static tbl_CauHinh zalo = new tbl_CauHinh();
        public static tbl_CauHinh fb = new tbl_CauHinh();
        public static tbl_Admin ad = new tbl_Admin();
        public static tbl_Admin nd = new tbl_Admin();
        protected void Page_Load(object sender, EventArgs e)
        {
            var data = from q in db.tbl_Tinhs
                       where q.MaMien.ToString() == "MB"
                       select q;
            listtinhmb = data.ToList();
            var data2 = from q in db.tbl_Tinhs
                        where q.MaMien.ToString() == "MT"
                        select q;
            listtinhmt = data2.ToList();
            var data3 = from q in db.tbl_Tinhs
                        where q.MaMien.ToString() == "MN"
                        select q;
            listtinhmn = data3.ToList();
            var datact = from q in db.tbl_CauHinhs
                         where q.TenBien=="Logo"
                         select q;
            cauhinh = datact.First();

            var datatenweb = from q in db.tbl_CauHinhs
                             where q.TenBien == "tenweb"
                             select q;
            tenweb = datatenweb.First();

            var datadiachi = from q in db.tbl_CauHinhs
                             where q.TenBien == "diachi"
                             select q;
            diachi = datadiachi.First();
            var datasdt= from q in db.tbl_CauHinhs
                             where q.TenBien == "sdt"
                             select q;
            sdt = datasdt.First();

            var datazalo = from q in db.tbl_CauHinhs
                             where q.TenBien == "zalo"
                             select q;
             zalo = datazalo.First();
             var datamail = from q in db.tbl_CauHinhs
                              where q.TenBien == "email"
                              select q;
             email = datamail.First();

             int id = Convert.ToInt32(Request.QueryString["MaAD"]);
             var datadn = from q in db.tbl_Admins
                          where q.MaAD==id && q.Quyen=="Admin"
                          select q;
             if (datadn != null && datadn.Count() > 0)
             {
                 ad = datadn.First();
             }

             var datand = from q in db.tbl_Admins
                          where q.MaAD == id && q.Quyen == "Người Dùng"
                          select q;
             if (datand != null && datand.Count() > 0)
             {
                 nd = datand.First();
             }
        }
    }
}