using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STRAVEL
{
    public partial class BantinCT : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static List<tbl_TinTuc> listtintuchot = new List<tbl_TinTuc>();
        public static tbl_TinTuc infotthot = new tbl_TinTuc();
        public static List<tbl_TinTuc> listtinmoi = new List<tbl_TinTuc>();
        public static int a = 5;
        protected void Page_Load(object sender, EventArgs e)
        {
            var datahot = (from q in db.tbl_TinTucs
                           where q.PheDuyet==1
                           orderby q.hot descending
                           select q).Take(1);

            if (datahot != null && datahot.Count() > 0)
            {
                infotthot = datahot.First();
            }
            var listdatahot = (from q in db.tbl_TinTucs
                               where q.MaTin != infotthot.MaTin && q.PheDuyet==1
                               orderby q.hot descending
                               select q).Take(a);
            listtintuchot = listdatahot.ToList();
            var listdatatinmoi = (from q in db.tbl_TinTucs
                                  where q.PheDuyet==1
                                  orderby q.MaTin descending
                                  select q).Take(10);
            listtinmoi = listdatatinmoi.ToList(); 
        }

      
        

        

        protected void Button2_Click(object sender, EventArgs e)
        {
            a = a + 2;
            var listdatahot = (from q in db.tbl_TinTucs
                               where q.MaTin != infotthot.MaTin && q.PheDuyet==1
                               orderby q.hot descending
                               select q).Take(a);
            listtintuchot = listdatahot.ToList();
        }
    }
}