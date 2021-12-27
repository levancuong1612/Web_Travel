using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STRAVEL
{
    public partial class ChitietdiadanhCT : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static tbl_DiaDanh infodiadanh = new tbl_DiaDanh();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            string iddd = (Request.QueryString["MaDD"]);
            tbl_DiaDanh dd = new tbl_DiaDanh();
            var data = from q in db.tbl_DiaDanhs
                       where q.MaDD == iddd.ToString()
                       select q;
            
            if (data != null && data.Count() > 0)
            {
                infodiadanh = data.First();
                int lx = Convert.ToInt32(infodiadanh.Hot);
                lx = lx + 1;
                infodiadanh.Hot = lx;
                db.SubmitChanges();
                
            }
            
            
         
            
           
           
           
        }
    }
}