<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DisanvanhoaCT.ascx.cs" Inherits="STRAVEL.DisanvanhoaCT" %>
         <link rel="stylesheet" type="text/css" href="../disanvanhoacss.css" />
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
        <script src="placeholderTypewriter.js"></script>
<link href="../disancss.css" rel="stylesheet" />
<div style="display: flex;flex-direction: column;justify-content: space-around;">
 <div class="giaodien" style="position:relative;width:100%">
      <div style="position:absolute;z-index:1;width:100%">
            <img class="slide" src="./img/banner01.jpg" stt="0" />
            <img class="slide" src="./img/nen3.jpg " style=" display:none" stt="1" />
            <img class="slide" src="./img/banner03.jpg " style=" display:none " stt=" 2" />
            <img class="slide" src="./img/nen4.jpg" style="display:none " stt="3" />
            <img class="slide" src="./img/banner05.jpg" style="display:none " stt="4" />
            <img class="slide" src="./img/banner06.jpg" style="display:none " stt="5" />
            <a href="#" id="prev"><img src="./img/left.png" style="width:60px ; height:60px" /> </a>
            <a href="#" id="next"><img src="./img/right.png" style="width:60px ; height:60px" /> </a>
      </div>
        <div style="position:absolute;z-index:2;margin-top:15%;margin-left:35%;color:#ffffff;font-weight:bold;font-size:50px">
            <h3>Vi Vu Việt Nam</h3> 
            
        </div>    
     <div style="position:absolute;z-index:2;margin-top:25%;margin-left:30%;width:610px;height:80px;background-color:rgba(0,0,0,0.5);padding:0px">
         <div style="height:47px;width:50px;float:left;background-color:#ffffff;margin-top:16px;margin-left:16px ;position:absolute;border-bottom-left-radius:7px;border-top-left-radius:7px">
             <img src="img/MAP.png" style="width:47%;height:48%;margin-top:12.5px;margin-left:11px" /></div>
           <form class="search-box_wrapper">
              
             <input class="search-box" type="text"  name="search" id="search"  style="width:400px; height:40.5px;margin-top:16PX;border-top-right-radius:7px;border-bottom-right-radius:7px;margin-left:60px;position:absolute;border:solid white" placeholder="nhập địa điểm cần tìm......."/>
           
              <asp:TextBox class="search-box2"  type="text"  name="search" ID="txt_timkiem"  runat="server"></asp:TextBox>

                </form>
         
             <script type="text/javascript">
                 var placeholderText = [
           "Bạn Muốn Đi Đâu?",
           "Cần Thơ?",
           "Đà Lạt?",
           "Hà Nội?",
           "Đà Nẵng?"

                 ];

                 $('#search').placeholderTypewriter({
                     text: placeholderText,

                 });

    </script>     
          <div style="border-radius:7px; width:115px;margin-top:16px;height:35px;background-color:#ffd800;position:absolute;margin-left:480px; font-size:20px;padding-top:12px; text-align:center;font-weight:bold;color:white">
              <asp:Button ID="Button1" class="btn_timkiem" runat="server" Text="Tìm Kiếm" OnClick="Button1_Click" />
          </div>
     </div>
        </div>
<div class="body"  style="width:100%;height:100% ;display: flex;
justify-content: space-around;margin-top:45%">
        <div class="danhmuc" >
            <h3 style="width:100%;height:auto;text-align:center;font-size:30px;border-bottom:1px solid black">Các địa điểm nổi bật</h3>
            <ul class="danhmuc1" style="color:black">
                <%foreach (var itemhot in listdisanhot)
                  { %>
                <li><a href='<%="Chitietdisan.aspx?MaDiSan="+itemhot.MaDiSan %>'><%=itemhot.TenDiSan %></a></li>
                <%} %>

            </ul>
        </div>
        <div class="body_disan" style="width:75%;display: flex;flex-direction: column;justify-content: space-around;align-items: center;">
            <h1 style="width:90%;height:auto;text-align:center;font-size:30px;border-bottom:1px solid black;margin-top:6%">Di Sản Văn Hóa Của Việt Nam</h1>
            <%foreach (var item in listdisan)
              { %>
            <div class="disan1">
                <div class="hinhanhdiadiem" style="float:left;width:30%;height:100%"> <img style="width:100%;height:100%;float:left" src='<%="./disan/"+item.HinhAnh1 %>' /> </div>
                <div class="thongtin" style="float:left;width:70%;height:100%;text-align:center;color:black">
                    <div class="ten_thongtin" style="float:left;width:100%;height:50%">
                        <h2><%=item.TenDiSan %></h2>
                        <p style="white-space:nowrap;overflow:hidden;text-overflow:ellipsis;margin-left:5%"><%=item.ThongTin1 %> </p>
                        
                        <a href='<%="Chitietdisan.aspx?MaDiSan="+item.MaDiSan %>'>
                            <div class="chitiet" style="color:black;font-weight:bold;margin-left:40%"><p>Xem Chi Tiết</p></div>
                        </a>
                    </div>
                </div>
            </div>
            <%} %>
          
        </div>
    </div>
    </div>