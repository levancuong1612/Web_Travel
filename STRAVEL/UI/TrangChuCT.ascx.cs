using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STRAVEL
{
    public partial class TrangChuCT : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public static List<tbl_DiaDanh> listamthuc = new List<tbl_DiaDanh>();
        public static tbl_DiaDanh info1 = new tbl_DiaDanh();
        public static tbl_DiaDanh info2 = new tbl_DiaDanh();
        public static tbl_DiaDanh info3 = new tbl_DiaDanh();
        public static tbl_DiaDanh info4 = new tbl_DiaDanh();
        public static tbl_DiaDanh info5 = new tbl_DiaDanh();
        public static tbl_DiaDanh info6 = new tbl_DiaDanh();
        public static tbl_DiaDanh info7 = new tbl_DiaDanh();
        public static tbl_DiaDanh info8 = new tbl_DiaDanh();
        public static tbl_DiaDanh info9 = new tbl_DiaDanh();
        public static tbl_DiaDanh info10 = new tbl_DiaDanh();
        public static tbl_AmThuc infoat1 = new tbl_AmThuc();
        public static tbl_AmThuc infoat2 = new tbl_AmThuc();
        public static tbl_AmThuc infoat3 = new tbl_AmThuc();
        public static tbl_AmThuc infoat4 = new tbl_AmThuc();
        public static tbl_AmThuc infoat5 = new tbl_AmThuc();
        public static tbl_AmThuc infoat6 = new tbl_AmThuc();
        public static tbl_AmThuc infoat7 = new tbl_AmThuc();
        public static tbl_AmThuc infoat8 = new tbl_AmThuc();
        public static tbl_AmThuc infoat9 = new tbl_AmThuc();
        public static tbl_AmThuc infoat10 = new tbl_AmThuc();
        public static List<tbl_TinTuc> listtintuc = new List<tbl_TinTuc>();
        public static List<tbl_TinTuc> listtintucmoi = new List<tbl_TinTuc>();
        public static List<tbl_DiaDanh> infodiadanhtimkiem = new List<tbl_DiaDanh>();
        public static tbl_CauHinh slide1 = new tbl_CauHinh();
        public static tbl_CauHinh slide2 = new tbl_CauHinh();
        public static tbl_CauHinh slide3 = new tbl_CauHinh();
        public static tbl_CauHinh slide4 = new tbl_CauHinh();
        public static tbl_CauHinh slide5 = new tbl_CauHinh();
        public static tbl_CauHinh slide6 = new tbl_CauHinh();
        public static tbl_CauHinh Tenweb = new tbl_CauHinh();
        public static tbl_CauHinh banner = new tbl_CauHinh();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            var data1 = (from q in db.tbl_DiaDanhs
                       orderby q.Hot
                        select q).Take(1);
            info1 = data1.First();
            var data2 = (from q in db.tbl_DiaDanhs
                         where q.MaDD!=info1.MaDD
                         orderby q.Hot
                         select q).Take(1);
            info2 = data2.First();
            var data3 = (from q in db.tbl_DiaDanhs
                         where q.MaDD != info1.MaDD && q.MaDD!=info2.MaDD
                         orderby q.Hot
                         select q).Take(1);
            info3 = data3.First();
            var data4 = (from q in db.tbl_DiaDanhs
                         where q.MaDD != info1.MaDD && q.MaDD != info2.MaDD && q.MaDD != info3.MaDD
                         orderby q.Hot
                         select q).Take(1);
            info4 = data4.First();
            var data5 = (from q in db.tbl_DiaDanhs
                         where q.MaDD != info1.MaDD && q.MaDD != info2.MaDD && q.MaDD != info3.MaDD && q.MaDD != info4.MaDD
                         orderby q.Hot
                         select q).Take(1);
            info5 = data5.First();
            var data6 = (from q in db.tbl_DiaDanhs
                         where q.MaDD != info1.MaDD && q.MaDD != info2.MaDD && q.MaDD != info3.MaDD && q.MaDD != info4.MaDD && q.MaDD != info5.MaDD
                         orderby q.Hot
                         select q).Take(1);
            info6 = data6.First();
            var data7 = (from q in db.tbl_DiaDanhs
                         where q.MaDD != info1.MaDD && q.MaDD != info2.MaDD && q.MaDD != info3.MaDD && q.MaDD != info4.MaDD && q.MaDD != info5.MaDD
                         && q.MaDD != info6.MaDD
                         orderby q.Hot
                         select q).Take(1);
            info7 = data7.First();
            var data8 = (from q in db.tbl_DiaDanhs
                         where q.MaDD != info1.MaDD && q.MaDD != info2.MaDD && q.MaDD != info3.MaDD && q.MaDD != info4.MaDD && q.MaDD != info5.MaDD
                         && q.MaDD != info6.MaDD && q.MaDD != info7.MaDD
                         orderby q.Hot
                         select q).Take(1);
            info8 = data8.First();
            var data9 = (from q in db.tbl_DiaDanhs
                         where q.MaDD != info1.MaDD && q.MaDD != info2.MaDD && q.MaDD != info3.MaDD && q.MaDD != info4.MaDD && q.MaDD != info5.MaDD
                         && q.MaDD != info6.MaDD && q.MaDD != info7.MaDD && q.MaDD != info8.MaDD
                         orderby q.Hot
                         select q).Take(1);
            info9 = data9.First();
            var data10 = (from q in db.tbl_DiaDanhs
                         where q.MaDD != info1.MaDD && q.MaDD != info2.MaDD && q.MaDD != info3.MaDD && q.MaDD != info4.MaDD && q.MaDD != info5.MaDD
                         && q.MaDD != info6.MaDD && q.MaDD != info7.MaDD && q.MaDD != info8.MaDD && q.MaDD != info9.MaDD
                         orderby q.Hot
                         select q).Take(1);
            info10 = data10.First();

            var dataat1 = (from q in db.tbl_AmThucs
                         orderby q.Hot
                         select q).Take(1);
            infoat1 = dataat1.First();
            var dataat2 = (from q in db.tbl_AmThucs
                         where q.MaAmThuc != infoat1.MaAmThuc
                         orderby q.Hot
                         select q).Take(1);
            infoat2 = dataat2.First();


            var dataat3 = (from q in db.tbl_AmThucs
                           where q.MaAmThuc != infoat1.MaAmThuc && q.MaAmThuc != infoat2.MaAmThuc
                           orderby q.Hot
                           select q).Take(1);
            infoat3 = dataat3.First();
            var dataat4 = (from q in db.tbl_AmThucs
                           where q.MaAmThuc != infoat1.MaAmThuc && q.MaAmThuc != infoat2.MaAmThuc && q.MaAmThuc != infoat3.MaAmThuc
                           orderby q.Hot
                           select q).Take(1);
            infoat4 = dataat4.First();
            var dataat5 = (from q in db.tbl_AmThucs
                           where q.MaAmThuc != infoat1.MaAmThuc && q.MaAmThuc != infoat2.MaAmThuc && q.MaAmThuc != infoat3.MaAmThuc && q.MaAmThuc != infoat4.MaAmThuc
                           orderby q.Hot
                           select q).Take(1);
            infoat5 = dataat5.First();
            var datatintuc = (from q in db.tbl_TinTucs
                             orderby q.hot descending
                             select q).Take(10);
            listtintuc = datatintuc.ToList();
            var datatinmoi = (from q in db.tbl_TinTucs
                              orderby q.MaTin descending
                              select q).Take(4);
            listtintucmoi = datatinmoi.ToList();
            string ma = Request.QueryString[txt_timkiem.Text];

            var datas1 = from q in db.tbl_CauHinhs
                         where q.TenBien == "slide1"
                         select q;
            slide1 = datas1.First();

            var datas2 = from q in db.tbl_CauHinhs
                         where q.TenBien == "slide2"
                         select q;
            slide2 = datas2.First();

            var datas3 = from q in db.tbl_CauHinhs
                         where q.TenBien == "slide3"
                         select q;
            slide3 = datas3.First();

            var datas4 = from q in db.tbl_CauHinhs
                         where q.TenBien == "slide4"
                         select q;
            slide4 = datas4.First();

            var datas5 = from q in db.tbl_CauHinhs
                         where q.TenBien == "slide5"
                         select q;
            slide5 = datas5.First();

            var datas6 = from q in db.tbl_CauHinhs
                         where q.TenBien == "slide6"
                         select q;
            slide6 = datas6.First();

            var datatenweb = from q in db.tbl_CauHinhs
                         where q.TenBien == "tenweb"
                         select q;
            Tenweb = datatenweb.First();

            var databanner = from q in db.tbl_CauHinhs
                             where q.TenBien == "banner"
                             select q;
            banner = databanner.First();

            Session.Clear();

        }

      

        

        protected void Button1_Click4(object sender, EventArgs e)
        {
            string a = txt_timkiem.Text;
            var data = from q in db.tbl_DiaDanhs
                       where a == q.Tinh
                       select q;
            infodiadanhtimkiem = data.ToList();
            foreach (var item in infodiadanhtimkiem)
            {
                Response.Redirect("Diadanh.aspx?MaTinh="+item.MaTinh);
            }
           
               
        }

        
    }
}