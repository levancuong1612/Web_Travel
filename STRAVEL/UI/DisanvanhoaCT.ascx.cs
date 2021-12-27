using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STRAVEL
{
    public partial class DisanvanhoaCT : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static List<tbl_DiSan> listdisan = new List<tbl_DiSan>();
        public static List<tbl_DiSan> listdisanhot = new List<tbl_DiSan>();
        public static tbl_DiaDanh listdiadanhtim = new tbl_DiaDanh();
        protected void Page_Load(object sender, EventArgs e)
        {
            var data = from q in db.tbl_DiSans
                       select q;
            listdisan = data.ToList();
            var datahot = (from q in db.tbl_DiSans
                          orderby q.Hot
                          select q).Take(10);
            listdisanhot = datahot.ToList();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string a = txt_timkiem.Text;

        }

       

        
    }
}