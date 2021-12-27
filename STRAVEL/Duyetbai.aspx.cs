using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STRAVEL
{
    public partial class Duyetbai : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static tbl_TinTuc infotintuc = new tbl_TinTuc();
        public static tbl_Admin ad = new tbl_Admin();
        public static List<tbl_TinTuc> listtin = new List<tbl_TinTuc>();
        public static List<tbl_TinTuc> listtintuc = new List<tbl_TinTuc>();

        protected void Page_Load(object sender, EventArgs e)
        {
            var datat = from q in db.tbl_TinTucs
                        where q.PheDuyet == 0
                        select q;
            if (datat.Count() > 0)
            {
                int id= Convert.ToInt32( Request.QueryString["MaTin"]);
                var data = from q in db.tbl_TinTucs
                           where q.MaTin == id
                           select q;
                infotintuc = data.First();
            }
            else
            {
                infotintuc.MaTin = 0;
            }
            if (infotintuc != null)
            {
             var dt = from q in db.tbl_TinTucs
                                 where q.PheDuyet == 0 && q.MaTin != infotintuc.MaTin
                                 select q;
                        listtin = dt.ToList();
            }
            else
            {
                var dt = from q in db.tbl_TinTucs
                         where q.PheDuyet == 0 
                         select q;
                listtin = dt.ToList();
            }

            var datatin = from q in db.tbl_TinTucs
                          select q;
            listtintuc = datatin.ToList();
           
        }
        public int n;
        protected void Button1_Click(object sender, EventArgs e)
        {
           
            
            infotintuc.PheDuyet = 1;
            db.SubmitChanges();

            foreach (var item in listtin)
            {
                infotintuc = item;

            }
            ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Phê Duyệt Thành Công!!!')", true);
            Response.Redirect("Duyetbai.aspx?Matin=" + infotintuc.MaTin);
            
            
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            tbl_TinTuc tt = new tbl_TinTuc();
            var data = from q in db.tbl_TinTucs
                       where q.MaTin == infotintuc.MaTin
                       select q;
            tt = data.First();
            db.tbl_TinTucs.DeleteOnSubmit(tt);
            db.SubmitChanges();
            ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Xóa Bài Viết Thành Công!!!')", true); 
            foreach (var item in listtin)
            {
                infotintuc = item;

            }
            int id= Convert.ToInt32(Request.QueryString["MaAD"]);
            if (listtin.Count > 0)
            {
                Response.Redirect("Duyetbai.aspx?Matin=" + infotintuc.MaTin);
            }
                
            else
            {
                Response.Redirect("Duyetbai.aspx?Matin=0");
            }
            
           

        }
    }
}