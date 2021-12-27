<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BantinCT.ascx.cs" Inherits="STRAVEL.BantinCT" %>
<link rel="stylesheet" type="text/css" href="./bangtincss.css" />
<div style="display: flex;width:80%;margin-left:10%;flex-direction: column;justify-content: space-around;align-items: center;">
    <div style="width:100%;background-color:#000000;height:400px;margin-top:50px">
        <img class="slide" src="./img/travelvn.png" style="width:100% ;height:100%;" />
    </div>
    
    <div class="body" >
        <div class="noidung1">
            <div class="tieude">
                <h3 style="width:100%; border-bottom:1px solid">Tin Tức Du Lịch Việt Nam</h3>
            </div>
            <a href='<%="Chitiettintuc.aspx?MaTin="+infotthot.MaTin %>'>
            <div class="tintucvietnam">
                
                <div class="hinhanh" style="width:53%">
                    <img style="width:100%;height:100%" src='<%="./tintuc/"+infotthot.HinhAnh %>'/>
                </div>
                <div class="noidung" style="width:45%;margin-left:2%;text-align:left;height:300px">
                    <h3 class="tieude" style="font-weight:bold;"><%=infotthot.TieuDe %></h3>
                    <p style="white-space:normal;overflow:hidden;text-overflow:ellipsis;height:200px"><%=infotthot.ThongTin1 %></p>
                </div>
               
            </div>
                </a>
            <%foreach (var item in listtintuchot)
              { %>
            <a href='<%="Chitiettintuc.aspx?MaTin="+item.MaTin %>'>
            <div class="tin1">
                
                <div class="hinhanh" style="width:45%">
                    <img style="width:100%;height:100%" src='<%="./tintuc/"+item.HinhAnh %>'/>
                </div>
                <div class="noidung" style="width:53%;margin-left:2%;text-align:left;">
                    <h3 class="tieudetin1" style="font-weight:bold;margin-right:2%"><%=item.TieuDe %></h3>
                    <p style="white-space:nowrap;overflow:hidden;text-overflow:ellipsis;height:100px;width:90%"><%=item.ThongTin1 %></p>
                </div>
                
            </div>
         </a>
            <%} %>
            <div style="width:100%;background-color:#000000;font-weight:bold">
           
                <asp:Button ID="Button2" runat="server" Text="Xem thêm" OnClick="Button2_Click" Height="48px" Width="784px" BackColor="#ff6600" Font-Bold="True" />
               
            
              
            </div>
        </div>
        <div class="noidung2">
             <div class="tieude">
                <h3 style="width:100%; border-bottom:1px solid">Bài Viết Mới Nhất</h3>
            </div>
            <%foreach (var tinmoi in listtinmoi)
              { %>
           
            <a href='<%="Chitiettintuc.aspx?MaTin="+tinmoi.MaTin %>'>

            
            <div class="tinmoi1" style="text-align:left" >
                <div style="width:40%" >
                    <img  style="width:100%; height:100%;" src='<%="./tintuc/"+tinmoi.HinhAnh %>'/>
                </div>
                <div class="tieudetinmoi" style="width:58%;height:auto;margin-left:2%;font-size:15px">
                    <b><%=tinmoi.TieuDe %></b>
                </div>
             </div>
                </a>
            <%} %>
        </div>
    </div>
     
</div>
