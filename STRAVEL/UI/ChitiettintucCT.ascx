<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChitiettintucCT.ascx.cs" Inherits="STRAVEL.ChitiettintucCT" %>
<link rel="stylesheet" type="text/css" href="chitiettintuccss.css" />
<div style="width:100%; height:300px; background-color:#000000;display:flex">a</div>
<div class="body">
    <div class="noidung1"  >
        <div class="tieude" style="width:100%;height:auto;border-bottom:2px solid;text-align:left">
            <h2><%=infotintuc.TieuDe %></h2>
        </div>
        <div class="noidungtintuc" >
            <h4><%=infotintuc.TieuDe1 %></h4>
            <p>
            <%=infotintuc.ThongTin1 %>
            </p>
        </div>
        <div class="hinhanhtintuc" style="width:90%;height:auto;margin-left:5%;margin-bottom:5%">
            <img style="width:100%; height:100%" src='<%="./tintuc/"+infotintuc.HinhAnh1 %>'/>
            <p style="text-align:center;width:100%;font-style:italic;font-size:inherit"> <%=infotintuc.PhuDe1 %></p>
        </div>
        <div class="noidungtintuc" >
            <h4><%=infotintuc.TieuDe2 %></h4>
            <p>
            <%=infotintuc.ThongTin2 %>
            </p>
            
        </div>
        <div class="hinhanhtintuc" style="width:90%;height:auto;margin-left:5%;margin-bottom:5%">
            <img style="width:100%; height:100%" src='<%="./tintuc/"+infotintuc.HinhAnh2 %>'/>
            <p style="text-align:center;width:100%;font-style:italic;font-size:inherit"> <%=infotintuc.PhuDe2 %></p>
        </div>
        <div class="noidungtintuc" >
            <h4><%=infotintuc.TieuDe3 %></h4>
            <p>
            <%=infotintuc.ThongTin3 %>
            </p>
            
        </div>
        <div class="hinhanhtintuc" style="width:90%;height:auto;margin-left:5%;margin-bottom:5%">
            <img style="width:100%; height:100%" src='<%="./tintuc/"+infotintuc.HinhAnh3 %>'/>
            <p style="text-align:center;width:100%;font-style:italic;font-size:inherit"> <%=infotintuc.PhuDe3 %></p>
        </div>
        <div class="noidungtintuc" >
            <h4><%=infotintuc.TieuDe4 %></h4>
            <p>
            <%=infotintuc.ThongTin4 %>
            </p>
            
        </div>
        <div class="hinhanhtintuc" style="width:90%;height:100%;margin-left:5%;margin-bottom:5%">
            <%if(infotintuc.HinhAnh4!=null)
              { %>
            <img style="width:100%; height:100%" src='<%="./tintuc/"+infotintuc.HinhAnh4 %>'/>
            <p style="text-align:center;width:100%;font-style:italic;font-size:inherit"> <%=infotintuc.PhuDe4 %></p>
            <%} %>
        </div>
        <div class="noidungtintuc" >
            <h4><%=infotintuc.TieuDe5 %></h4>
            <p>
            <%=infotintuc.ThongTin5 %>
            </p>
            
        </div>
        <div class="hinhanhtintuc" style="width:90%;height:100%;margin-left:5%;margin-bottom:5%">
             <%if(infotintuc.HinhAnh5!=null)
              { %>
            <img style="width:100%; height:100%" src='<%="./tintuc/"+infotintuc.HinhAnh5 %>'/>
            <p style="text-align:center;width:100%;font-style:italic;font-size:inherit"> <%=infotintuc.PhuDe5 %></p>
            <%} %>
        </div>
        <div class="noidungtintuc" >
            <h4><%=infotintuc.TieuDe6 %></h4>
            <p>
            <%=infotintuc.ThongTin6 %>
            </p>
            
        </div>
        <div class="hinhanhtintuc" style="width:90%;height:100%;margin-left:5%;margin-bottom:5%">
             <%if(infotintuc.HinhAnh6!=null)
              { %>
            <img style="width:100%; height:100%" src='<%="./tintuc/"+infotintuc.HinhAnh6 %>'/>
            <p style="text-align:center;width:100%;font-style:italic;font-size:inherit"> <%=infotintuc.PhuDe6 %></p>
            <%} %>
        </div>
        <div class="noidungtintuc" >
            <h4><%=infotintuc.TieuDe7 %></h4>
            <p>
            <%=infotintuc.ThongTin7 %>
            </p>
            
        </div>
        <div class="hinhanhtintuc" style="width:90%;height:100%;margin-left:5%;margin-bottom:5%">
             <%if(infotintuc.HinhAnh7!=null)
              { %>
            <img style="width:100%; height:100%" src='<%="./tintuc/"+infotintuc.HinhAnh7 %>'/>
            <p style="text-align:center;width:100%;font-style:italic;font-size:inherit"> <%=infotintuc.PhuDe7 %></p>
            <%} %>
        </div>
         <div class="noidungtintuc" >
            <h4><%=infotintuc.TieuDe8 %></h4>
            <p>
            <%=infotintuc.ThongTin8 %>
            </p>
            
        </div>
        <div class="hinhanhtintuc" style="width:90%;height:100%;margin-left:5%;margin-bottom:5%">
             <%if(infotintuc.HinhAnh8!=null)
              { %>
            <img style="width:100%; height:100%" src='<%="./tintuc/"+infotintuc.HinhAnh8 %>'/>
            <p style="text-align:center;width:100%;font-style:italic;font-size:inherit"> <%=infotintuc.PhuDe8 %></p>
            <%} %>
        </div>
           <div class="noidungtintuc" >
            <h4><%=infotintuc.TieuDe9 %></h4>
            <p>
            <%=infotintuc.ThongTin9 %>
            </p>
            
        </div>
        <div class="hinhanhtintuc" style="width:90%;height:100%;margin-left:5%;margin-bottom:5%">
             <%if(infotintuc.HinhAnh9!=null)
              { %>
            <img style="width:100%; height:100%" src='<%="./tintuc/"+infotintuc.HinhAnh9 %>'/>
            <p style="text-align:center;width:100%;font-style:italic;font-size:inherit"> <%=infotintuc.PhuDe9 %></p>
            <%} %>
        </div>
           <div class="noidungtintuc" >
            <h4><%=infotintuc.TieuDe10 %></h4>
            <p>
            <%=infotintuc.ThongTin10 %>
            </p>
            
        </div>
        <div class="hinhanhtintuc" style="width:90%;height:100%;margin-left:5%;margin-bottom:5%">
             <%if(infotintuc.HinhAnh10!=null)
              { %>
            <img style="width:100%; height:100%" src='<%="./tintuc/"+infotintuc.HinhAnh10 %>'/>
            <p style="text-align:center;width:100%;font-style:italic;font-size:inherit"> <%=infotintuc.PhuDe10 %></p>
            <%} %>
        </div>
    </div>
    <div class="noidung2" >
            <div class="tieude" style="margin-top:10px">
                <h2 style="width:100%; border-bottom:1px solid">Bài Viết Mới Nhất</h2>
            </div>
            <%foreach (var tinmoi in listtinmoi)
              { %>
           
        <a href='<%="Chitiettintuc.aspx?MaTin="+tinmoi.MaTin %>'>

            
            <div class="tinmoi1" style="text-align:left;margin-bottom:10px;border-bottom:1px solid;color:#000000" >
                <div style="width:40%" >
                    <img  style="width:100%; height:100%;" src='<%="./tintuc/"+tinmoi.HinhAnh %>'/>
                </div>
                <div class="tieudetinmoi" style="width:58%;height:auto;margin-left:2%;font-size:15px">
                    <b><%=tinmoi.TieuDe %></b>
                </div>
             </div>
          </a>
        <%} %>
              
             <div class="tieude" style="margin-top:10px">
                <h2 style="width:100%; border-bottom:1px solid">Bài Nổi Bật</h2>
            </div>
          <%foreach (var tinhot in listtintuchot)
              { %>
           
        <a href='<%="Chitiettintuc.aspx?MaTin="+tinhot.MaTin %>'>

            
            <div class="tinmoi1" style="text-align:left;margin-bottom:10px;border-bottom:1px solid;color:#000000" >
                <div style="width:40%" >
                    <img  style="width:100%; height:100%;" src='<%="./tintuc/"+tinhot.HinhAnh %>'/>
                </div>
                <div class="tieudetinmoi" style="width:58%;height:auto;margin-left:2%;font-size:15px">
                    <b><%=tinhot.TieuDe %></b>
                </div>
             </div>
          </a>
        <%} %>

    </div>
</div>
