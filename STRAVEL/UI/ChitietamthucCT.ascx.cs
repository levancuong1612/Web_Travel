using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STRAVEL
{
    public partial class ChitietamthucCT : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static tbl_AmThuc infoat = new tbl_AmThuc();
        public static List<tbl_AmThuc> listamthuchot = new List<tbl_AmThuc>();
        public static List<tbl_AmThuc> listamthucmoi = new List<tbl_AmThuc>();
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["MaAmThuc"];
            var data = from q in db.tbl_AmThucs
                       where q.MaAmThuc == id
                       select q;
            if (data != null && data.Count() > 0)
            {
                infoat = data.First();
                int lx = Convert.ToInt32(infoat.Hot);
                lx = lx + 1;
                infoat.Hot = lx;
                db.SubmitChanges();
            }
            var datalisthot = (from q in db.tbl_AmThucs
                               where q.MaAmThuc != infoat.MaAmThuc
                               orderby q.Hot descending
                               select q).Take(5);
            listamthuchot = datalisthot.ToList();
            var datalistmoi = (from q in db.tbl_AmThucs
                               orderby q.MaAmThuc descending
                               select q).Take(5);
            listamthucmoi = datalistmoi.ToList();
        }
    }
}