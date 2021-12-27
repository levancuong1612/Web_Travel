<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChitietamthucCT.ascx.cs" Inherits="STRAVEL.ChitietamthucCT" %>
<link rel="stylesheet" type="text/css" href="../Chitietamthuccss.css" />
<div style="display: flex;flex-direction: column;justify-content: space-around;align-items: center;">
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
         
             <input style="width:400px; height:40px;margin-top:16PX;border-top-right-radius:7px;border-bottom-right-radius:7px;margin-left:60px;position:absolute;border:solid white" placeholder="nhập địa điểm cần tìm......."/>
          <div style="border-radius:7px; width:115px;height:35px;background-color:#ffd800;position:absolute;margin-left:480px;margin-top:16px; font-size:20px;padding-top:12px; text-align:center;font-weight:bold;color:white">
              Tìm Kiếm
          </div>
     </div>
        </div>
<div style="width:100%;height:auto; margin-top:653px; background-color:#ffffff;display:flex;justify-content: space-between;">
    <div class="body1">
        <div class="tieude" >
            <h3 style="width:100%;border-bottom:1px solid;font-weight:bold;font-size:30px;font-family:sans-serif"><%=infoat.TieuDe1 %></h3>
        </div>
        <div style="width:100%;height:auto;display: flex;flex-direction: column;">
            <div style="width:100%;height:auto;font-size:25px;text-align:justify;font-family:'Times New Roman'">
                <%=infoat.ThongTin1 %>
            </div>
            <div style="width:90%;margin:5%;">
                <img style="width:100%;height:100%" src='<%="./amthuc/"+infoat.HinhAnh1 %>'>
                <p style="width:100%;text-align:center;font-style:italic;font-size:17px"><%=infoat.PhuDe1 %></p>
            </div>
        </div>
        <div style="width:100%;height:auto;display: flex;flex-direction: column;">
            <h2><%=infoat.TieuDe2 %></h2>
            <div style="width:100%;height:auto;font-size:25px;text-align:justify;font-family:'Times New Roman'">
                <%=infoat.ThongTin2 %>
            </div>
            <div style="width:90%;margin:5%;">
                <%if(infoat.HinhAnh2!=null)
                  { %>
                <img style="width:100%;height:100%" src='<%="./amthuc/"+infoat.HinhAnh2 %>'>
                <p style="width:100%;text-align:center;font-style:italic;font-size:17px"><%=infoat.PhuDe2 %></p>
                <%} %>
            </div>
        </div>
        <div style="width:100%;height:auto;display: flex;flex-direction: column;">
            <h2><%=infoat.TieuDe3 %></h2>
            <div style="width:100%;height:auto;font-size:25px;text-align:justify;font-family:'Times New Roman'">
                <%=infoat.ThongTin3 %>
            </div>
            <div style="width:90%;margin:5%;">
                 <%if(infoat.HinhAnh3!=null)
                  { %>
                <img style="width:100%;height:100%" src='<%="./amthuc/"+infoat.HinhAnh3 %>'>
                <p style="width:100%;text-align:center;font-style:italic;font-size:17px"><%=infoat.PhuDe3 %></p>
                <%} %>
            </div>
        </div>
         <div style="width:100%;height:auto;display: flex;flex-direction: column;">
            <h2><%=infoat.TieuDe4 %></h2>
            <div style="width:100%;height:auto;font-size:25px;text-align:justify;font-family:'Times New Roman'">
                <%=infoat.ThongTin4 %>
            </div>
            <div style="width:90%;margin:5%;">
                 <%if(infoat.HinhAnh4!=null)
                  { %>
                <img style="width:100%;height:100%" src='<%="./amthuc/"+infoat.HinhAnh4 %>'>
                <p style="width:100%;text-align:center;font-style:italic;font-size:17px"><%=infoat.PhuDe4 %></p>
                <%} %>
            </div>
        </div>
         <div style="width:100%;height:auto;display: flex;flex-direction: column;">
            <h2><%=infoat.TieuDe5 %></h2>
            <div style="width:100%;height:auto;font-size:25px;text-align:justify;font-family:'Times New Roman'">
                <%=infoat.ThongTin5 %>
            </div>
            <div style="width:90%;margin:5%;">
                 <%if(infoat.HinhAnh5!=null)
                  { %>
                <img style="width:100%;height:100%" src='<%="./amthuc/"+infoat.HinhAnh5 %>'>
                <p style="width:100%;text-align:center;font-style:italic;font-size:17px"><%=infoat.PhuDe5 %></p>
                <%} %>
            </div>
        </div>
          <div style="width:100%;height:auto;display: flex;flex-direction: column;">
            <h2><%=infoat.TieuDe6 %></h2>
            <div style="width:100%;height:auto;font-size:25px;text-align:justify;font-family:'Times New Roman'">
                <%=infoat.ThongTin6 %>
            </div>
            <div style="width:90%;margin:5%;">
                 <%if(infoat.HinhAnh6!=null)
                  { %>
                <img style="width:100%;height:100%" src='<%="./amthuc/"+infoat.HinhAnh6 %>'>
                <p style="width:100%;text-align:center;font-style:italic;font-size:17px"><%=infoat.PhuDe6 %></p>
                <%} %>
            </div>
        </div>
          <div style="width:100%;height:auto;display: flex;flex-direction: column;">
            <h2><%=infoat.TieuDe7 %></h2>
            <div style="width:100%;height:auto;font-size:25px;text-align:justify;font-family:'Times New Roman'">
                <%=infoat.ThongTin7 %>
            </div>
            <div style="width:90%;margin:5%;">
                 <%if(infoat.HinhAnh7!=null)
                  { %>
                <img style="width:100%;height:100%" src='<%="./amthuc/"+infoat.HinhAnh7 %>'>
                <p style="width:100%;text-align:center;font-style:italic;font-size:17px"><%=infoat.PhuDe7 %></p>
                <%} %>
            </div>
        </div>
          <div style="width:100%;height:auto;display: flex;flex-direction: column;">
            <h2><%=infoat.TieuDe8 %></h2>
            <div style="width:100%;height:auto;font-size:25px;text-align:justify;font-family:'Times New Roman'">
                <%=infoat.ThongTin8 %>
            </div>
            <div style="width:90%;margin:5%;">
                 <%if(infoat.HinhAnh8!=null)
                  { %>
                <img style="width:100%;height:100%" src='<%="./amthuc/"+infoat.HinhAnh8 %>'>
                <p style="width:100%;text-align:center;font-style:italic;font-size:17px"><%=infoat.PhuDe8 %></p>
                <%} %>
            </div>
           </div>
          <div style="width:100%;height:auto;display: flex;flex-direction: column;">
            <h2><%=infoat.TieuDe9 %></h2>
            <div style="width:100%;height:auto;font-size:25px;text-align:justify;font-family:'Times New Roman'">
                <%=infoat.ThongTin9 %>
            </div>
            <div style="width:90%;margin:5%;">
                 <%if(infoat.HinhAnh9!=null)
                  { %>
                <img style="width:100%;height:100%" src='<%="./amthuc/"+infoat.HinhAnh9 %>'>
                <p style="width:100%;text-align:center;font-style:italic;font-size:17px"><%=infoat.PhuDe9 %></p>
                <%} %>
            </div>
        </div>

    </div>
    <div class="body2" >

        <a class="thea" href='<%="Chitietamthuc.aspx?MaAmThuc="+ infoat.MaAmThuc%>' style="width:100%;">
            <h4 class="bainoibat" style="border-bottom:2px solid;padding-bottom:2%;"><span style="background-color:#000000;color:#ffffff;padding:2%;margin:0;">Bài Nổi Bật</span> </h4>

            <div class="noibat" style="position:absolute;z-index:1;width:24%;height:auto;">
                <img class="hinhnenamthuc" src='<%="./amthuc/"+infoat.HinhAnh1 %>' style="width:100%;height:100%" />
            </div>
            <div class="nenamthuc" style="height:200px">
                <div style="width:35%;text-align:center;font-weight:bold;font-size:20px;padding-top:2%;height:20%;margin-left:30%;margin-top:30%; border:1px solid;background-color:#ff6a00;color:black"> Chi Tiết</div>
            </div>
        </a>
        <div style="height:140px;"></div>
       <%foreach (var itemhot in listamthucmoi)
         { %>
        <a href='<%="Chitietamthuc.aspx?MaAmThuc="+ itemhot.MaAmThuc%>'>
            <div class="noibat1" style="margin-top:0px">
                <div class="hanb1" style="width:40%;height:100%;float:left"><img src='<%="./amthuc/"+itemhot.HinhAnh1 %>' style="width:100%;height:100%;float:left" /> </div>
                
                <div style="margin-left:20px">
                    <p style="margin-left:10%">
                       <%=itemhot.TieuDe1 %>
                    </p>
                    <div class="chitietat" >Chi Tiết</div>
                </div>
            </div>
        </a>
        <%} %>
        <h4 class="bainoibat" style="border-bottom:2px solid;padding-bottom:2%;"><span style="background-color:#000000;color:#ffffff;padding:2%;margin:0;">Bài Mới Đăng</span> </h4>
         <%foreach (var itemhot in listamthuchot)
         { %>
        <a href='<%="Chitietamthuc.aspx?MaAmThuc="+ itemhot.MaAmThuc%>'>
            <div class="noibat1">
                <div class="hanb1" style="width:40%;height:100%;float:left"><img src='<%="./amthuc/"+itemhot.HinhAnh1 %>' style="width:100%;height:100%;float:left" /> </div>
                
                <div style="margin-left:20px">
                    <p style="margin-left:10%">
                       <%=itemhot.TieuDe1 %>
                    </p>
                    <div class="chitietat" >Chi Tiết</div>
                </div>
            </div>
        </a>
        <%} %>
     
    </div> 
    </div>


</div>