<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChitietdisanCT.ascx.cs" Inherits="STRAVEL.ChitietdisanCT" %>
 <link rel="stylesheet" type="text/css" href="./chitietdisancss.css" />
<img class="slide" src='<%="./disan/"+infodisan.HinhAnh1 %>' />
<div class="body" style="width:100%;height:100%;float:left ;background-color:#ffffff">
  

       <div class="noidung" >
            <h1 style="width:100%;height:50px;margin-top:-20px;border-bottom:2px solid;margin-top:3%"><%=infodisan.TenDiSan %></h1>
        <div style="width:100%; height:auto;display: flex;flex-direction: column">
            <h2 style="width:100%; height:10%;"><%=infodisan.TieuDe1 %></h2>
         <div class="noidung1">
            <div class="vanban" style="width:100%;height:auto;text-align:justify;font-size:25px" >
            <%=infodisan.ThongTin1 %>
                    </div>
             <div class="hinhanh" style="width:100%;height:auto;margin:3%" >
                 <img  style="width:90%;height:100%" src='<%="./disan/"+infodisan.HinhAnh1 %>'/>
                 <p style="text-align:center;font-style:italic;font-size:15px"><%=infodisan.PhuDe1 %></p>
             </div>
         </div>
        </div>
        <div style="width:100%; height:auto;display: flex;flex-direction: column;">
            <h2 style="width:100%; height:10%"><%=infodisan.TieuDe2 %></h2>
         <div class="noidung1">
            <div class="vanban" style="width:100%;height:auto;text-align:justify;font-size:25px" >  <%=infodisan.ThongTin2 %>
                    </div>
             <div class="hinhanh" style="width:100%;height:auto;margin:3%" >
                  <%if (infodisan.HinhAnh2 != null)
                    { %>
                 <img  style="width:90%;height:100%" src='<%="./disan/"+infodisan.HinhAnh2 %>'/>
                 <%} %>
                 <p style="text-align:center;font-style:italic;font-size:15px"><%=infodisan.PhuDe2 %></p>
             </div>
         </div>
        </div>
        <div style="width:100%; height:auto;display: flex;flex-direction: column;">
            <h2 style="width:100%; height:10%;"><%=infodisan.TieuDe3 %></h2>
         <div class="noidung1">
            <div class="vanban" style="width:100%;height:auto;text-align:justify;font-size:25px" >  <%=infodisan.ThongTin3 %>
                    </div>
             <div class="hinhanh" style="width:100%;height:auto;margin:3%" >
                  <%if (infodisan.HinhAnh3 != null)
                    { %>
                 <img  style="width:90%;height:100%" src='<%="./disan/"+infodisan.HinhAnh3 %>'/>
                 <%} %>
                 <p style="text-align:center;font-style:italic;font-size:15px"><%=infodisan.PhuDe3 %></p>
             </div>
         </div>
        </div>
       <div style="width:100%; height:auto;display: flex;flex-direction: column">
            <h2 style="width:100%; height:10%;"><%=infodisan.TieuDe4 %></h2>
         <div class="noidung1">
            <div class="vanban" style="width:100%;height:auto;text-align:justify;font-size:25px" >  <%=infodisan.ThongTin4 %>
                    </div>
             <div class="hinhanh" style="width:100%;height:auto;margin:3%" >
                  <%if (infodisan.HinhAnh4 != null)
                    { %>
                 <img  style="width:90%;height:100%" src='<%="./disan/"+infodisan.HinhAnh4 %>'/>
                 <%} %>
                 <p style="text-align:center;font-style:italic;font-size:15px"><%=infodisan.PhuDe4 %></p>
             </div>
         </div>
        </div>
         <div style="width:100%; height:auto;display: flex;flex-direction: column;">
            <h2 style="width:100%; height:10%;"><%=infodisan.TieuDe5 %></h2>
         <div class="noidung1">
            <div class="vanban" style="width:100%;height:auto;text-align:justify;font-size:25px" >  <%=infodisan.ThongTin5 %>
                    </div>
             <div class="hinhanh" style="width:100%;height:auto;margin:3%" >
                  <%if (infodisan.HinhAnh5 != null)
                    { %>
                 <img  style="width:90%;height:100%" src='<%="./disan/"+infodisan.HinhAnh5 %>'/>
                 <%} %>
                 <p style="text-align:center;font-style:italic;font-size:15px"><%=infodisan.TieuDe5 %></p>
             </div>
         </div>
        </div>
         <div style="width:100%; height:auto;display: flex;flex-direction: column;">
            <h2 style="width:100%; height:10%;"><%=infodisan.PhuDe6 %></h2>
         <div class="noidung1">
            <div class="vanban" style="width:100%;height:auto;text-align:justify;font-size:25px" >  <%=infodisan.ThongTin6 %>
                    </div>
            
             <div class="hinhanh" style="width:100%;height:auto;margin:3%" >
                <%if (infodisan.HinhAnh6 != null)
                  { %>
                       <img  style="width:90%;height:100%" src='<%="./disan/"+infodisan.HinhAnh6 %>'/>
                 <%} %>
                 <p style="text-align:center;font-style:italic;font-size:15px"><%=infodisan.PhuDe6 %></p>
             </div>
         </div>
        </div>     
        <div style="width:100%; height:auto;display: flex;flex-direction: column;">
            <h2 style="width:100%; height:10%;"><%=infodisan.TieuDe7 %></h2>
         <div class="noidung1">
            <div class="vanban" style="width:100%;height:auto;text-align:justify;font-size:25px" >  <%=infodisan.ThongTin7 %>
                    </div>
             <div class="hinhanh" style="width:100%;height:auto;margin:3%" >
                 <%if (infodisan.HinhAnh7 != null)
                   { %>
                      <img  style="width:90%;height:100%" src='<%="./disan/"+infodisan.HinhAnh7 %>'/>
                 <%} %>
                 
                 <p style="text-align:center;font-style:italic;font-size:15px"><%=infodisan.PhuDe7 %></p>
             </div>
         </div>
        </div>
         <div style="width:100%; height:auto;display: flex;flex-direction: column;">
            <h2 style="width:100%; height:10%;"><%=infodisan.TieuDe8 %></h2>
         <div class="noidung1">
            <div class="vanban" style="width:100%;height:auto;text-align:justify;font-size:25px" >  <%=infodisan.ThongTin8 %>
                    </div>
             <div class="hinhanh" style="width:100%;height:auto;margin:3%" >
                 <%if (infodisan.HinhAnh8 != null)
                   { %>
                      <img  style="width:90%;height:100%" src='<%="./disan/"+infodisan.HinhAnh8 %>'/>
                 <%} %>
                 
                 <p style="text-align:center;font-style:italic;font-size:15px"><%=infodisan.PhuDe8 %></p>
             </div>
         </div>
        </div>
     
        
    </div>
    <div class="noidungphu" style="margin-top:80px;background-color:#d2cbcb;height:100%" >
         <table class="table" style="width:100%">
                <tr >
                    <th style=" background-color:#00ff21;height:5%" colspan="2"><%=infodisan.TieuDePhu %></th>
                </tr>
                <tr>
                    <th colspan="2"><img src='<%="./disan/"+infodisan.HinhAnhPhu %>' style="  width:100%"/> </th>
                </tr>
                <tr>
                    <th style="height:1%" colspan="2"><p style ="  width:100%;height:100%"><%=infodisan.TieuDePhu %></p></th>
                </tr>
                <tr >
                    <th style=" background-color:#00ff21;height:4% " colspan="2">Thông tin Di Sản</th>
                </tr>
                <tr style="text-align:left ;height:5% ; ">
                    <th colspan="1" style="width: 40%; padding-top: 8%">Kiểu</th>
                    <th colspan="1" style="padding-top: 8%"><%=infodisan.Kieu %></th>
                </tr>
                <tr style="text-align:left;height:8%;margin-bottom:2%">
                    <th colspan="1" style="width: 35%;height:5%; padding-top: 8%">Năm Công Nhận</th>
                    <th colspan="1" style="padding-top: 8%;"><%=infodisan.NamCongNhan%></th>
                </tr>
                <tr>
                    <th style=" background-color:#00ff21;height:6% " colspan="2">Thông Tin Thêm</th>
                </tr>
                <tr style="height:auto">
                    <th colspan="2" style="width:100%">
                        <img style="width:100%;height:100%" src='<%="./disan/"+infodisan.Them %>' />
                    </th>
                </tr>
                <tr></tr>
            </table>
    </div>
    </div>