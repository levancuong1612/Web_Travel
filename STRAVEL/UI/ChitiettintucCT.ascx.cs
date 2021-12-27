using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STRAVEL
{
    public partial class ChitiettintucCT : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static tbl_TinTuc infotintuc = new tbl_TinTuc();
        public static List<tbl_TinTuc> listtinmoi = new List<tbl_TinTuc>();
        public static List<tbl_TinTuc> listtintuchot = new List<tbl_TinTuc>();
        protected void Page_Load(object sender, EventArgs e)
        {

            
            int matin = Convert.ToInt32 (Request.QueryString["MaTin"]);
            var data = from q in db.tbl_TinTucs
                       where q.MaTin == matin
                       select q;
            if (data != null && data.Count()>0)
            {
                infotintuc = data.First();
                int lx = Convert.ToInt32(infotintuc.hot);
                infotintuc.hot = lx + 1;
                db.SubmitChanges();
            }
           
            var listdatatinmoi = (from q in db.tbl_TinTucs
                                  orderby q.MaTin descending
                                  select q).Take(10);
            listtinmoi = listdatatinmoi.ToList();
            var listdatahot = (from q in db.tbl_TinTucs
                              
                               orderby q.hot descending
                               select q).Take(5);
            listtintuchot = listdatahot.ToList();
        }
    }
}