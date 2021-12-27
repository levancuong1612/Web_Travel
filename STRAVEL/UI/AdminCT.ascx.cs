using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace STRAVEL.UI
{
    public partial class AdminCT : System.Web.UI.UserControl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
       
        public static tbl_Admin info = new tbl_Admin();
        public static tbl_Admin infond = new tbl_Admin();
        public static List<tbl_Admin> listadmin = new List<tbl_Admin>();
        public static List<tbl_TinTuc> listtin = new List<tbl_TinTuc>();
        public static int luotxemdd = new int();
        public static int luotxemds = new int();
        public static int luotxemat = new int();
        public static int luotxemtt = new int();
        public static List<tbl_DiaDanh> listdiadanh = new List<tbl_DiaDanh>();
        public static List<int> idnd = new List<int>();
        public static List<tbl_TinTuc> listtinduyet = new List<tbl_TinTuc>();
        public static tbl_TinTuc infotintuc = new tbl_TinTuc();
        public static int lx=0;
        public static List<tbl_Admin> listndhot = new List<tbl_Admin>();
        public static List<tbl_TinTuc> listtincuandhot = new List<tbl_TinTuc>();
        public static List<tbl_DiaDanh> listbaixoadiadanh = new List<tbl_DiaDanh>();
        public static List<tbl_DiSan> listbaixoadisan = new List<tbl_DiSan>();
        public static List<tbl_AmThuc> listbaixoaamthuc = new List<tbl_AmThuc>();
        public static List<tbl_TinTuc> listbaixoatintuc = new List<tbl_TinTuc>();
        public static tbl_CauHinh cauhinh = new tbl_CauHinh();
        public static tbl_CauHinh diachi = new tbl_CauHinh();
        public static tbl_CauHinh sdt = new tbl_CauHinh();
        public static tbl_CauHinh email = new tbl_CauHinh();
        public static tbl_CauHinh zalo = new tbl_CauHinh();
        public static tbl_CauHinh fb = new tbl_CauHinh();
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

            int id= Convert.ToInt32( Request.QueryString["MaAD"]);
            var data = from q in db.tbl_Admins
                       where q.MaAD == id
                       select q;
            info = data.First();

            var datalx = (from q in db.tbl_DiaDanhs
                         select q.Hot).Sum();
            luotxemdd =Convert.ToInt32( datalx);

            var datatt = (from q in db.tbl_TinTucs
                          select q.hot).Sum();
            luotxemtt = Convert.ToInt32(datatt);

            var dataat = (from q in db.tbl_AmThucs
                          select q.Hot).Sum();
            luotxemat = Convert.ToInt32(dataat);

            var datads = (from q in db.tbl_DiSans
                          select q.Hot).Sum();
            luotxemds = Convert.ToInt32(datads);

            if (!IsPostBack && drop_tinh.Text=="")
            {
                LoadDM();
            }
           

            var data3 = from q in db.tbl_Admins
                        where  q.Quyen=="Người Dùng"
                        select q;
            listadmin = data3.ToList();
         
             var data2 = from q in db.tbl_TinTucs

                         where q.PheDuyet == 0
                         select q;
             listtin = data2.ToList();


             var datand = (from q in db.tbl_Admins
                           where q.Quyen=="Người Dùng"
                           orderby q.Sobaidang descending
                           select q).Take(5);
             listndhot = datand.ToList();
             var dataxoadd = from q in db.tbl_DiaDanhs
                             select q;
             listbaixoadiadanh = dataxoadd.ToList();
             var dataxoads = from q in db.tbl_DiSans
                             select q;
             listbaixoadisan = dataxoads.ToList();

             var dataxoaat = from q in db.tbl_AmThucs
                             select q;
             listbaixoaamthuc = dataxoaat.ToList();

             var dataxoatt = from q in db.tbl_TinTucs
                             select q;
             listbaixoatintuc = dataxoatt.ToList();

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
             var datact = from q in db.tbl_CauHinhs
                          where q.TenBien == "Logo"
                          select q;
             cauhinh = datact.First();

          

             var datadiachi = from q in db.tbl_CauHinhs
                              where q.TenBien == "diachi"
                              select q;
             diachi = datadiachi.First();
             var datasdt = from q in db.tbl_CauHinhs
                           where q.TenBien == "sdt"
                           select q;
             sdt = datasdt.First();

             var datazalo = from q in db.tbl_CauHinhs
                            where q.TenBien == "zalo"
                            select q;
             zalo = datazalo.First();
             var datamail = from q in db.tbl_CauHinhs
                            where q.TenBien == "email"
                            select q;
             email = datamail.First();
            
        }

        private void LoadDM()
        {
            var data = from q in db.tbl_Tinhs
                       select q;
            if (data != null)
            {
                List<tbl_Tinh> listtinh = data.ToList();
                drop_tinh.DataSource = listtinh;
                drop_tinh.DataTextField = "TenTinh";
                drop_tinh.DataValueField = "MaTinh";
                drop_tinh.DataBind();
            }
        }
      
        protected void Button1_Click1(object sender, EventArgs e)
        {
            var data = from q in db.tbl_DiaDanhs
                       select q;
            int soluong = data.Count();
            if (txt_tieude1.Text != "")
            {
                tbl_DiaDanh info = new tbl_DiaDanh();
                int x = soluong + 1;
                string ma = "DD0"+x;
                info.MaDD = ma;
                info.TenDD = txt_tendiadiem.Text;
                info.ThongTinTT = txt_thongtin.Text;
                if (FileUpload1.HasFile)
                {
                    info.AnhMinhHoa = FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath("diadiem\\") + info.AnhMinhHoa);
                }
                info.MaTinh = (drop_tinh.SelectedValue);
                info.TieuDe1 = txt_tieude1.Text;
                info.ThongTin1 = txt_noidung1.Text;
                if (FileUploadanh1.HasFile)
                {
                    info.HinhAnh1 = FileUploadanh1.FileName;
                    FileUploadanh1.SaveAs(Server.MapPath("diadiem\\") + info.HinhAnh1);
                }
                info.TieuDe2 = txt_tieude2.Text;
                info.ThongTin2 = txt_noidung2.Text;
                if (FileUploadanh2.HasFile)
                {
                    info.HinhAnh2 = FileUploadanh2.FileName;
                    FileUploadanh2.SaveAs(Server.MapPath("diadiem\\") + info.HinhAnh2);
                }
                info.TieuDe3 = txt_tieude3.Text;
                info.ThongTin3 = txt_noidung3.Text;
                if (FileUploadanh3.HasFile)
                {
                    info.HinhAnh3 = FileUploadanh3.FileName;
                    FileUploadanh3.SaveAs(Server.MapPath("diadiem\\") + info.HinhAnh3);
                }
                info.TieuDe4 = txt_tieude4.Text;
                info.ThongTin4 = txt_noidung4.Text;
                if (FileUploadanh4.HasFile)
                {
                    info.HinhAnh4 = FileUploadanh4.FileName;
                    FileUploadanh4.SaveAs(Server.MapPath("diadiem\\") + info.HinhAnh4);
                }
                info.TieuDe5 = txt_tieude5.Text;
                info.ThongTin5 = txt_noidung5.Text;
                if (FileUploadanh5.HasFile)
                {
                    info.HinhAnh5 = FileUploadanh5.FileName;
                    FileUploadanh5.SaveAs(Server.MapPath("diadiem\\") + info.HinhAnh5);
                }
                info.TieuDe6 = txt_tieude6.Text;
                info.ThongTin6 = txt_noidung6.Text;
                if (FileUploadanh6.HasFile)
                {
                    info.HinhAnh6 = FileUploadanh6.FileName;
                    FileUploadanh6.SaveAs(Server.MapPath("diadiem\\") + info.HinhAnh6);
                }
                info.TieuDe7 = txt_tieude7.Text;
                info.ThongTin7 = txt_noidung7.Text;
                if (FileUploadanh7.HasFile)
                {
                    info.HinhAnh7 = FileUploadanh7.FileName;
                    FileUploadanh7.SaveAs(Server.MapPath("diadiem\\") + info.HinhAnh7);
                }
                info.TieuDe8 = txt_tieude8.Text;
                info.ThongTin8 = txt_noidung8.Text;
                if (FileUploadanh8.HasFile)
                {
                    info.HinhAnh8 = FileUploadanh8.FileName;
                    FileUploadanh8.SaveAs(Server.MapPath("diadiem\\") + info.HinhAnh8);
                }
                info.TieuDe9 = txt_tieude9.Text;
                info.ThongTin9 = txt_noidung9.Text;
                if (FileUploadanh9.HasFile)
                {
                    info.HinhAnh9 = FileUploadanh9.FileName;
                    FileUploadanh9.SaveAs(Server.MapPath("diadiem\\") + info.HinhAnh9);
                }
                info.TieuDe10 = txt_tieude10.Text;
                info.ThongTin10 = txt_noidung10.Text;
                if (FileUploadanh1.HasFile)
                {
                    info.HinhAnh10 = FileUploadanh10.FileName;

                }
                info.TieuDePhu = txt_tieudephu.Text;
                info.Tinh = drop_tinh.Text;
                info.ThanhLap = txt_thanhlap.Text;
                info.ViTri = txt_vitri.Text;
                db.tbl_DiaDanhs.InsertOnSubmit(info);
                db.SubmitChanges();

                ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Thêm mới thành công!!!')", true);



            }
        }
        /*private void LoadDM()
        {
            var data = from q in db.tbl_Tinhs
                       select 1;
            if (data != null)
            {
                List<DanhMucTT> listDM = data.ToList();
                dropDanhMuc.DataSource = listDM;
                dropDanhMuc.DataTextField = "TenDMuc";
                dropDanhMuc.DataValueField = "IdDMuc";
                dropDanhMuc.DataBind();
            }
        }*/
        protected void Button2_Click(object sender, EventArgs e)
        {
            
            if (txt_tendisan.Text != "")
            {
                tbl_DiSan info = new tbl_DiSan();
                int mads = Convert.ToInt32(info.MaDiSan);
                info.MaDiSan = (mads + 1).ToString();
                info.TenDiSan = txt_tendisan.Text;

                info.MaTinh = "T001";
                info.TieuDe1 = txt_dstieude1.Text;
                info.ThongTin1 = txt_dsnoidung1.Text;
                if (FileUploadanhds1.HasFile)
                {
                    info.HinhAnh1 = FileUploadanhds1.FileName;
                    FileUploadanhds1.SaveAs(Server.MapPath("disan\\") + info.HinhAnh1);
                }
                info.PhuDe1 = txt_dsphude1.Text;
                info.TieuDe2 = txt_dstieude2.Text;
                info.ThongTin2 = txt_dsnoidung2.Text;
                if (FileUploadanhds2.HasFile)
                {
                    info.HinhAnh2 = FileUploadanhds2.FileName;
                    FileUploadanhds2.SaveAs(Server.MapPath("disan\\") + info.HinhAnh2);
                }
                info.PhuDe2 = txt_dsphude2.Text;
                info.TieuDe3 = txt_dstieude3.Text;
                info.ThongTin3 = txt_dsnoidung3.Text;
                if (FileUploadanhds3.HasFile)
                {
                    info.HinhAnh3 = FileUploadanhds3.FileName;
                    FileUploadanhds3.SaveAs(Server.MapPath("disan\\") + info.HinhAnh3);
                }
                info.PhuDe3 = txt_dsphude3.Text;
                info.TieuDe4 = txt_dstieude4.Text;
                info.ThongTin4 = txt_dsnoidung4.Text;

                if (FileUploadanhds4.HasFile)
                {
                    info.HinhAnh4 = FileUploadanhds4.FileName;
                    FileUploadanhds4.SaveAs(Server.MapPath("disan\\") + info.HinhAnh4);
                }
                info.PhuDe4 = txt_dsphude4.Text;
                info.TieuDe5 = txt_dstieude5.Text;
                info.ThongTin5 = txt_dsnoidung5.Text;
                if (FileUploadanhds5.HasFile)
                {
                    info.HinhAnh5 = FileUploadanhds5.FileName;
                    FileUploadanhds5.SaveAs(Server.MapPath("disan\\") + info.HinhAnh5);
                }
                info.PhuDe5 = txt_dsphude5.Text;
                info.TieuDe6 = txt_dstieude6.Text;
                info.ThongTin6 = txt_dsnoidung6.Text;
                if (FileUploadanhds6.HasFile)
                {
                    info.HinhAnh6 = FileUploadanhds6.FileName;
                    FileUploadanhds6.SaveAs(Server.MapPath("disan\\") + info.HinhAnh6);
                }
                info.PhuDe6 = txt_dsphude6.Text;
                info.TieuDe7 = txt_dstieude7.Text;
                info.ThongTin7 = txt_dsnoidung7.Text;
                if (FileUploadanhds7.HasFile)
                {
                    info.HinhAnh7 = FileUploadanhds7.FileName;
                    FileUploadanhds7.SaveAs(Server.MapPath("disan\\") + info.HinhAnh7);
                }
                info.PhuDe7 = txt_dsphude7.Text;
                info.TieuDe8 = txt_dstieude8.Text;
                info.ThongTin8 = txt_dsnoidung8.Text;
                if (FileUploadanhds8.HasFile)
                {
                    info.HinhAnh8 = FileUploadanhds8.FileName;
                    FileUploadanhds8.SaveAs(Server.MapPath("disan\\") + info.HinhAnh8);
                }
                info.PhuDe8 = txt_dsphude8.Text;
                info.TieuDe9 = txt_dstieude9.Text;
                info.ThongTin9 = txt_dsnoidung9.Text;
                if (FileUploadanhds9.HasFile)
                {
                    info.HinhAnh9 = FileUploadanhds9.FileName;
                    FileUploadanhds9.SaveAs(Server.MapPath("disan\\") + info.HinhAnh9);
                }
                info.PhuDe9 = txt_dsphude9.Text;
                info.TieuDePhu = txt_dstieudephu.Text;
                info.Kieu = txt_dskieu.Text;
                info.NamCongNhan =Convert.ToInt32(txt_dsnam.Text);
                info.Them = txt_dsthem.Text;
                db.tbl_DiSans.InsertOnSubmit(info);
                db.SubmitChanges();

                ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Thêm mới thành công!!!')", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Thêm mới Không thành công,vui lòng kiểm tra thông tin !!!')", true);
            }
           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (txt_tenamthuc.Text != "")
            {
                tbl_AmThuc info = new tbl_AmThuc();
                int mads = Convert.ToInt32(info.MaAmThuc);
                info.MaAmThuc = (mads + 1).ToString();
                info.TenAmThuc = txt_tenamthuc.Text;

     
                info.TieuDe1 = txt_attieude1.Text;
                info.ThongTin1 = txt_atnoidung1.Text;
                if (FileUploadanhat1.HasFile)
                {
                    info.HinhAnh1 = FileUploadanhat1.FileName;
                    FileUploadanhat1.SaveAs(Server.MapPath("amthuc\\") + info.HinhAnh1);
                }
                info.PhuDe1 = txt_atphude1.Text;
                info.TieuDe2 = txt_attieude2.Text;
                info.ThongTin2 = txt_atnoidung2.Text;
                if (FileUploadanhat2.HasFile)
                {
                    info.HinhAnh2 = FileUploadanhat2.FileName;
                    FileUploadanhat2.SaveAs(Server.MapPath("amthuc\\") + info.HinhAnh2);
                }
                info.PhuDe2 = txt_atphude2.Text;
                info.TieuDe3 = txt_attieude3.Text;
                info.ThongTin3 = txt_atnoidung3.Text;
                if (FileUploadanhat3.HasFile)
                {
                    info.HinhAnh3 = FileUploadanhat3.FileName;
                    FileUploadanhat3.SaveAs(Server.MapPath("amthuc\\") + info.HinhAnh3);
                }
                info.PhuDe3 = txt_atphude3.Text;
                info.TieuDe4 = txt_attieude4.Text;
                info.ThongTin4 = txt_atnoidung4.Text;
                if (FileUploadanhat4.HasFile)
                {
                    info.HinhAnh4 = FileUploadanhat4.FileName;
                    FileUploadanhat4.SaveAs(Server.MapPath("amthuc\\") + info.HinhAnh4);
                }
                info.PhuDe4 = txt_atphude4.Text;
                info.TieuDe5 = txt_attieude5.Text;
                info.ThongTin5 = txt_atnoidung5.Text;
                if (FileUploadanhat5.HasFile)
                {
                    info.HinhAnh5 = FileUploadanhat5.FileName;
                    FileUploadanhat5.SaveAs(Server.MapPath("amthuc\\") + info.HinhAnh5);
                }
                info.PhuDe5 = txt_atphude5.Text;
                info.TieuDe6 = txt_attieude6.Text;
                info.ThongTin6 = txt_atnoidung6.Text;
                if (FileUploadanhat6.HasFile)
                {
                    info.HinhAnh6 = FileUploadanhat6.FileName;
                    FileUploadanhat6.SaveAs(Server.MapPath("amthuc\\") + info.HinhAnh6);
                }
                info.PhuDe6 = txt_atphude6.Text;
                info.TieuDe7 = txt_attieude7.Text;
                info.ThongTin7 = txt_atnoidung7.Text;
                if (FileUploadanhat7.HasFile)
                {
                    info.HinhAnh7 = FileUploadanhat7.FileName;
                    FileUploadanhds7.SaveAs(Server.MapPath("amthuc\\") + info.HinhAnh7);
                }
                info.PhuDe7 = txt_atphude7.Text;
                info.TieuDe8 = txt_attieude8.Text;
                info.ThongTin8 = txt_atnoidung8.Text;
                if (FileUploadanhat8.HasFile)
                {
                    info.HinhAnh8 = FileUploadanhat8.FileName;
                    FileUploadanhat8.SaveAs(Server.MapPath("amthuc\\") + info.HinhAnh8);
                }
                info.PhuDe8 = txt_atphude8.Text;
                info.TieuDe9 = txt_attieude9.Text;
                info.ThongTin9 = txt_atnoidung9.Text;
                if (FileUploadanhat9.HasFile)
                {
                    info.HinhAnh9 = FileUploadanhat9.FileName;
                    FileUploadanhds9.SaveAs(Server.MapPath("amthuc\\") + info.HinhAnh9);
                }
                info.PhuDe9 = txt_atphude9.Text;

                db.tbl_AmThucs.InsertOnSubmit(info);
                db.SubmitChanges();

                ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Thêm mới thành công!!!')", true);
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (txt_tttieude.Text != "")
            {
                tbl_TinTuc info = new tbl_TinTuc();
                int mads = Convert.ToInt32(info.MaTin);
                info.MaTin = (mads + 1);
                info.TieuDe = txt_tttieude.Text;
                if (FileUploadanhtt1.HasFile)
                {
                    info.HinhAnh = FileUploadanhtt1.FileName;
                    FileUploadanhtt1.SaveAs(Server.MapPath("tintuc\\") + info.HinhAnh);
                }
          
                info.TieuDe1 = txt_tttieude1.Text;
                info.ThongTin1 = txt_ttnoidung1.Text;
                if (FileUploadanhtt1.HasFile)
                {
                    info.HinhAnh1 = FileUploadanhtt1.FileName;
                    FileUploadanhtt1.SaveAs(Server.MapPath("tintuc\\") + info.HinhAnh1);
                }
                info.PhuDe1 = txt_atphude1.Text;
                info.TieuDe2 = txt_tttieude2.Text;
                info.ThongTin2 = txt_ttnoidung2.Text;
                if (FileUploadanhtt2.HasFile)
                {
                    info.HinhAnh2 = FileUploadanhtt2.FileName;
                    FileUploadanhtt2.SaveAs(Server.MapPath("tintuc\\") + info.HinhAnh2);
                }
                info.PhuDe2 = txt_atphude2.Text;
                info.TieuDe3 = txt_tttieude3.Text;
                info.ThongTin3 = txt_ttnoidung3.Text;
                if (FileUploadanhtt3.HasFile)
                {
                    info.HinhAnh3 = FileUploadanhtt3.FileName;
                    FileUploadanhtt3.SaveAs(Server.MapPath("tintuc\\") + info.HinhAnh3);
                }
                info.PhuDe3 = txt_atphude3.Text;
                info.TieuDe4 = txt_tttieude4.Text;
                info.ThongTin4 = txt_ttnoidung4.Text;
                if (FileUploadanhtt4.HasFile)
                {
                    info.HinhAnh4 = FileUploadanhtt4.FileName;
                    FileUploadanhtt4.SaveAs(Server.MapPath("tintuc\\") + info.HinhAnh4);
                }
                info.PhuDe4 = txt_atphude4.Text;
                info.TieuDe5 = txt_tttieude5.Text;
                info.ThongTin5 = txt_ttnoidung5.Text;
                if (FileUploadanhtt5.HasFile)
                {
                    info.HinhAnh5 = FileUploadanhtt5.FileName;
                    FileUploadanhtt5.SaveAs(Server.MapPath("tintuc\\") + info.HinhAnh5);
                }
                info.PhuDe5 = txt_atphude5.Text;
                info.TieuDe6 = txt_tttieude6.Text;
                info.ThongTin6 = txt_ttnoidung6.Text;
                if (FileUploadanhtt6.HasFile)
                {
                    info.HinhAnh6 = FileUploadanhtt6.FileName;
                    FileUploadanhtt6.SaveAs(Server.MapPath("tintuc\\") + info.HinhAnh6);
                }
                info.PhuDe6 = txt_atphude6.Text;
                info.TieuDe7 = txt_tttieude7.Text;
                info.ThongTin7 = txt_ttnoidung7.Text;
                if (FileUploadanhtt7.HasFile)
                {
                    info.HinhAnh7 = FileUploadanhtt7.FileName;
                    FileUploadanhtt7.SaveAs(Server.MapPath("tintuc\\") + info.HinhAnh7);
                }
                info.PhuDe7 = txt_atphude7.Text;
                info.TieuDe8 = txt_tttieude8.Text;
                info.ThongTin8 = txt_ttnoidung8.Text;
                if (FileUploadanhtt8.HasFile)
                {
                    info.HinhAnh8 = FileUploadanhtt8.FileName;
                    FileUploadanhtt8.SaveAs(Server.MapPath("tintuc\\") + info.HinhAnh8);
                }
                info.PhuDe8 = txt_atphude8.Text;
                info.TieuDe9 = txt_tttieude9.Text;
                info.ThongTin9 = txt_ttnoidung9.Text;
                if (FileUploadanhtt9.HasFile)
                {
                    info.HinhAnh9 = FileUploadanhtt9.FileName;
                    FileUploadanhtt9.SaveAs(Server.MapPath("tintuc\\") + info.HinhAnh9);
                }
                info.PhuDe9 = txt_atphude9.Text;
                info.TieuDe10 = txt_tttieude10.Text;
                info.ThongTin10 = txt_ttnoidung10.Text;
                if (FileUploadanhtt10.HasFile)
                {
                    info.HinhAnh10 = FileUploadanhtt10.FileName;
                    FileUploadanhtt10.SaveAs(Server.MapPath("tintuc\\") + info.HinhAnh10);
                }
                info.PhuDe10 = txt_ttphude10.Text;
                db.tbl_TinTucs.InsertOnSubmit(info);
                db.SubmitChanges();

                ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Thêm mới thành công!!!')", true);
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            
          
           

            
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Tài Khoản Hoặc Mật Khẩu Không Chính Xác, Vui Lòng Nhập Lại!!!')", true);

        }

        protected void btn_logo_Click(object sender, EventArgs e)
        {
            tbl_CauHinh ch = new tbl_CauHinh();
            var data = from q in db.tbl_CauHinhs
                       where q.TenBien =="Logo"
                       select q;
            
                ch = data.First();
                if (FileUploadlogo.HasFile)
                {
                    ch.GiaTri = FileUploadlogo.FileName;
                    FileUploadlogo.SaveAs(Server.MapPath("cauhinh\\") + ch.GiaTri);
                    db.SubmitChanges();
                }
            
           
            
            ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Thay đổi thành công!!')", true);
            Response.Redirect("Admin.aspx?MaAD=" + info.MaAD);
        }

        protected void btn_slide1_Click(object sender, EventArgs e)
        {
            tbl_CauHinh ch = new tbl_CauHinh();
            var data = from q in db.tbl_CauHinhs
                       where q.TenBien == "slide1"
                       select q;

            ch = data.First();
            if (FileUploadslide1.HasFile)
            {
                ch.GiaTri = FileUploadslide1.FileName;
                FileUploadslide1.SaveAs(Server.MapPath("cauhinh\\") + ch.GiaTri);
                db.SubmitChanges();
            }



            ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Thay đổi thành công!!')", true);
            Response.Redirect("Admin.aspx?MaAD=" + info.MaAD);
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            if (FileUploadslide2.HasFile)
            {
                slide2.GiaTri = FileUploadslide2.FileName;
                FileUploadslide2.SaveAs(Server.MapPath("cauhinh\\") + slide2.GiaTri);
                db.SubmitChanges();
            }
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            if (FileUploadslide3.HasFile)
            {
                slide3.GiaTri = FileUploadslide3.FileName;
                FileUploadslide3.SaveAs(Server.MapPath("cauhinh\\") + slide3.GiaTri);
                db.SubmitChanges();
            }
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            if (FileUploadslide4.HasFile)
            {
                slide4.GiaTri = FileUploadslide4.FileName;
                FileUploadslide4.SaveAs(Server.MapPath("cauhinh\\") + slide4.GiaTri);
                db.SubmitChanges();
            }
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            if (FileUploadslide5.HasFile)
            {
                slide5.GiaTri = FileUploadslide5.FileName;
                FileUploadslide5.SaveAs(Server.MapPath("cauhinh\\") + slide5.GiaTri);
                db.SubmitChanges();
            }
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            if (FileUploadslide6.HasFile)
            {
                slide6.GiaTri = FileUploadslide6.FileName;
                FileUploadslide6.SaveAs(Server.MapPath("cauhinh\\") + slide6.GiaTri);
                db.SubmitChanges();
            }
        }

       

        protected void Button15_Click1(object sender, EventArgs e)
        {
            tbl_CauHinh ch = new tbl_CauHinh();
            var data = from q in db.tbl_CauHinhs
                       where q.TenBien == "banner"
                       select q;

            ch = data.First();
            if (FileUploadbanner.HasFile)
            {
                ch.GiaTri = FileUploadbanner.FileName;
                FileUploadbanner.SaveAs(Server.MapPath("cauhinh\\") + ch.GiaTri);
                db.SubmitChanges();
            }



            ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Thay đổi thành công!!')", true);
            Response.Redirect("Admin.aspx?MaAD=" + info.MaAD);
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            tbl_CauHinh ch = new tbl_CauHinh();
            var data = from q in db.tbl_CauHinhs
                       where q.TenBien == "tenweb"
                       select q;

            ch = data.First();
            ch.GiaTri = txt_tenweb.Text;
            db.SubmitChanges();


            ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Thay đổi thành công!!')", true);
            Response.Redirect("Admin.aspx?MaAD=" + info.MaAD);
        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            string a = txt_diachi.Text;
            tbl_CauHinh ct = new tbl_CauHinh();
            var dt = from q in db.tbl_CauHinhs
                     where q.TenBien == "diachi"
                     select q;
           
                ct = dt.First();
                lbl_ht.Text = ct.TenBien;
                string dc = ct.GiaTri;
                dc = txt_diachi.Text;
                ct.GiaTri = dc.ToString();
                db.SubmitChanges();
           
            
        }

        protected void Button8_Click(object sender, EventArgs e)
        {


            tbl_Admin ad = new tbl_Admin();
            ad.MaAD = 0;
            Response.Redirect("Trangchu.aspx");
            
            Session.Clear();
            
        }
    }
}