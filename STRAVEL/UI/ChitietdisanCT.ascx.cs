using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STRAVEL
{
    public partial class ChitietdisanCT : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static tbl_DiSan infodisan = new tbl_DiSan();
        protected void Page_Load(object sender, EventArgs e)
        {
            string idds =( Request.QueryString["MaDiSan"]);
            var data = from q in db.tbl_DiSans
                       where q.MaDiSan == idds
                       select q;
            if (data != null && data.Count() > 0)
            {
                infodisan = data.First();
                int lx = Convert.ToInt32(infodisan.Hot);
                infodisan.Hot = lx + 1;
                db.SubmitChanges();
            }
        }
    }
}