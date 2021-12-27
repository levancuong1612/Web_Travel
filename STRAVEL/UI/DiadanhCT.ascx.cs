using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STRAVEL
{
    public partial class DiadanhCT : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static List<tbl_DiaDanh> listdiadanh = new List<tbl_DiaDanh>();
        public static tbl_DiaDanh infodiadanh = new tbl_DiaDanh();
        protected void Page_Load(object sender, EventArgs e)
        {
           string iddd=(Request.QueryString["MaTinh"]);
         
            var data = from q in db.tbl_DiaDanhs
                       where  q.MaTinh == iddd.ToString()
                       select q;
            
            if(data!=null && data.Count()>0){
                listdiadanh = data.ToList();
            }
        }
    }
}