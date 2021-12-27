using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STRAVEL
{
    public partial class Thongtinnd : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static tbl_Admin info = new tbl_Admin();
        public static List<tbl_TinTuc> listtin = new List<tbl_TinTuc>();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["MaAD"]);
            var data = from q in db.tbl_Admins
                       where q.MaAD == id
                       select q;
            info = data.First();
            var datatin = from q in db.tbl_TinTucs
                          where q.IDAD == info.MaAD
                          select q;
            listtin = datatin.ToList();
        }

        

        protected void Button1_Click1(object sender, EventArgs e)
        {
            tbl_Admin inf = new tbl_Admin();
            var da = from q in db.tbl_Admins
                     where q.MaAD == info.MaAD
                     select q;
            inf = da.First();
            inf.Quyen = "Admin";
            db.SubmitChanges();
            ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Duyệt thành công !!)", true);

            Response.Redirect("Thongtinnd.aspx");
        }
    }
}