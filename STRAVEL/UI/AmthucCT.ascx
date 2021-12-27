<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AmthucCT.ascx.cs" Inherits="STRAVEL.AmthucCT" %>
 <link rel="stylesheet" type="text/css" href="../amthuccss.css" />
<div style="display: flex;
flex-direction: column;
justify-content: space-around;
align-items: center;"
 <div class="hinhnen" style="position:absolute;width:100%;height:550px;">
        <img class="slide" src="./img/banneramthuc2.jpg" style="width:100% ;height:600px;margin-top:5%;z-index:1" />
     
            <div class="nen1"><img src="./img/hot1.jpg"  style="width:100%;height:100%"/> </div>
           <div class="nen2"><img src="./img/hot2.jpg" style="width:100%;height:100%" /> </div>
           <div class="nen3"><img src="./img/hot3.jpg" style="width:100%;height:100%" /> </div>
    
           
    </div>
    <div style="display: flex;
justify-content: center;">
       <div class="body_amthuc" >
            <h3 style="width:100%;height:auto;text-align:center;font-size:30px;border-bottom:1px solid black">Ẩm Thực Hot Nhất Việt Nam</h3>
            <%foreach (var item in listamthuc)
                 { %>
           <a href='<%="Chitietamthuc.aspx?MaAmThuc="+ item.MaAmThuc%>'>
               
               <div class="noidung1">
                   <div class="hand1" style="width:40%;height:100%;float:left"><img src='<%="./amthuc/"+item.HinhAnh1 %>' style="width:100%;height:100%;float:left" /> </div>
                   <div class="nd1" style="text-align:center"><h3><%=item.TenAmThuc %></h3></div>
                   <div style="margin-left:20px">
                       <p style="white-space:nowrap;overflow:hidden;text-overflow:ellipsis;margin-left:10%">
                           - <%=item.ThongTin1 %>.<br />
                           
                       </p>
                       <div class="chitietat">Chi Tiết</div>
                   </div>

               </div>
              
           </a>
      <%} %>
         
    </div> 
    <div class="hot"  >
        <a class="thea" href='<%="Chitietamthuc.aspx?MaAmThuc="+ infoat.MaAmThuc%>' style="width:100%;">
            <h4 class="bainoibat" style="border-bottom:2px solid;padding-bottom:2%;"><span style="background-color:#000000;color:#ffffff;padding:2%;margin:0;">Bài Nổi Bật</span> </h4>

            <div class="noibat" style="position:absolute;z-index:1;width:22%;height:auto;margin-top:3.5%">
                <img class="hinhnenamthuc" src='<%="./amthuc/"+infoat.HinhAnh1 %>' style="width:100%;height:100%" />
            </div>
            <div class="nenamthuc" style="height:220px">
                <div style="width:35%;text-align:center;font-weight:bold;font-size:20px;padding-top:2%;height:20%;margin-left:30%;margin-top:30%; border:1px solid;background-color:#ff6a00;color:black"> Chi Tiết</div>
            </div>
        </a>
        <div style="height:200px;"></div>
       <%foreach (var itemhot in listamthucmoi)
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