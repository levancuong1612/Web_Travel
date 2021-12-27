<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChitietdiadanhCT.ascx.cs" Inherits="STRAVEL.ChitietdiadanhCT" %>

  <link rel="stylesheet" type="text/css" href="./chitietcss.css" />
 <img class="slide" src='<%="./diadiem/"+infodiadanh.HinhAnh1 %>' />
<div class="body">

    <div class="noidung" >
            <h1 style="width:100%;height:50px;margin-top:-20px;border-bottom:2px solid;margin-top:3%"><%=infodiadanh.TenDD %></h1>
        <div style="width:100%; height:auto;display: flex;flex-direction: column">
            <h2 style="width:100%; height:10%;"><%=infodiadanh.TieuDe1 %></h2>
         <div class="noidung1">
            <div class="vanban" style="width:100%;height:auto;text-align:justify;font-size:25px" >
            <%=infodiadanh.ThongTin1 %>
                    </div>
             <div class="hinhanh" style="width:100%;height:auto;margin:3%" >
                 <img  style="width:90%;height:100%" src='<%="./diadiem/"+infodiadanh.HinhAnh1 %>'/>
                 <p style="text-align:center;font-style:italic;font-size:15px"><%=infodiadanh.TieuDe1 %></p>
             </div>
         </div>
        </div>
        <div style="width:100%; height:auto;display: flex;flex-direction: column;">
            <h2 style="width:100%; height:10%"><%=infodiadanh.TieuDe2 %></h2>
         <div class="noidung1">
            <div class="vanban" style="width:100%;height:auto;text-align:justify;font-size:25px" >  <%=infodiadanh.ThongTin2 %>
                    </div>
             <div class="hinhanh" style="width:100%;height:auto;margin:3%" >
                  <%if(infodiadanh.HinhAnh2!=null){ %>
                 <img  style="width:90%;height:100%" src='<%="./diadiem/"+infodiadanh.HinhAnh2 %>'/>
                 <%} %>
                 <p style="text-align:center;font-style:italic;font-size:15px"><%=infodiadanh.TieuDe2 %></p>
             </div>
         </div>
        </div>
        <div style="width:100%; height:auto;display: flex;flex-direction: column;">
            <h2 style="width:100%; height:10%;"><%=infodiadanh.TieuDe3 %></h2>
         <div class="noidung1">
            <div class="vanban" style="width:100%;height:auto;text-align:justify;font-size:25px" >  <%=infodiadanh.ThongTin3 %>
                    </div>
             <div class="hinhanh" style="width:100%;height:auto;margin:3%" >
                  <%if(infodiadanh.HinhAnh3!=null){ %>
                 <img  style="width:90%;height:100%" src='<%="./diadiem/"+infodiadanh.HinhAnh3 %>'/>
                
                 <p style="text-align:center;font-style:italic;font-size:15px"><%=infodiadanh.TieuDe3 %></p>
                  <%} %>
             </div>
         </div>
        </div>
       <div style="width:100%; height:auto;display: flex;flex-direction: column">
            <h2 style="width:100%; height:10%;"><%=infodiadanh.TieuDe4 %></h2>
         <div class="noidung1">
            <div class="vanban" style="width:100%;height:auto;text-align:justify;font-size:25px" >  <%=infodiadanh.ThongTin4 %>
                    </div>
             <div class="hinhanh" style="width:100%;height:auto;margin:3%" >
                  <%if(infodiadanh.HinhAnh4!=null){ %>
                 <img  style="width:90%;height:100%" src='<%="./diadiem/"+infodiadanh.HinhAnh4 %>'/>
                 
                 <p style="text-align:center;font-style:italic;font-size:15px"><%=infodiadanh.TieuDe4 %></p>
                 <%} %>
             </div>
         </div>
        </div>
         <div style="width:100%; height:auto;display: flex;flex-direction: column;">
            <h2 style="width:100%; height:10%;"><%=infodiadanh.TieuDe5 %></h2>
         <div class="noidung1">
            <div class="vanban" style="width:100%;height:auto;text-align:justify;font-size:25px" >  <%=infodiadanh.ThongTin5 %>
                    </div>
             <div class="hinhanh" style="width:100%;height:auto;margin:3%" >
                  <%if(infodiadanh.HinhAnh5!=null){ %>
                 <img  style="width:90%;height:100%" src='<%="./diadiem/"+infodiadanh.HinhAnh5 %>'/>
               
                 <p style="text-align:center;font-style:italic;font-size:15px"><%=infodiadanh.TieuDe5 %></p>
                   <%} %>
             </div>
         </div>
        </div>
         <div style="width:100%; height:auto;display: flex;flex-direction: column;">
            <h2 style="width:100%; height:10%;"><%=infodiadanh.TieuDe6 %></h2>
         <div class="noidung1">
            <div class="vanban" style="width:100%;height:auto;text-align:justify;font-size:25px" >  <%=infodiadanh.ThongTin6 %>
                    </div>
            
             <div class="hinhanh" style="width:100%;height:auto;margin:3%" >
                <%if(infodiadanh.HinhAnh6!=null){ %>
                       <img  style="width:90%;height:100%" src='<%="./diadiem/"+infodiadanh.HinhAnh6 %>'/>
                 
                 <p style="text-align:center;font-style:italic;font-size:15px"><%=infodiadanh.TieuDe6 %></p>
                 <%} %>
             </div>
         </div>
        </div>     
        <div style="width:100%; height:auto;display: flex;flex-direction: column;">
            <h2 style="width:100%; height:10%;"><%=infodiadanh.TieuDe7 %></h2>
         <div class="noidung1">
            <div class="vanban" style="width:100%;height:auto;text-align:justify;font-size:25px" >  <%=infodiadanh.ThongTin7 %>
                    </div>
             <div class="hinhanh" style="width:100%;height:auto;margin:3%" >
                 <%if(infodiadanh.HinhAnh7!=null){ %>
                      <img  style="width:90%;height:100%" src='<%="./diadiem/"+infodiadanh.HinhAnh7 %>'/>
                
                 <p style="text-align:center;font-style:italic;font-size:15px"><%=infodiadanh.TieuDe7 %></p>
                  <%} %>
                 
             </div>
         </div>
        </div>
         <div style="width:100%; height:auto;display: flex;flex-direction: column;">
            <h2 style="width:100%; height:10%;"><%=infodiadanh.TieuDe8 %></h2>
         <div class="noidung1">
            <div class="vanban" style="width:100%;height:auto;text-align:justify;font-size:25px" >  <%=infodiadanh.ThongTin8 %>
                    </div>
             <div class="hinhanh" style="width:100%;height:auto;margin:3%" >
                 <%if(infodiadanh.HinhAnh8!=null){ %>
                      <img  style="width:90%;height:100%" src='<%="./diadiem/"+infodiadanh.HinhAnh8 %>'/>
                 
                 
                 <p style="text-align:center;font-style:italic;font-size:15px"><%=infodiadanh.TieuDe8 %></p>
                 <%} %>
             </div>
         </div>
        </div>
        <div style="width:100%; height:auto;display: flex;flex-direction: column;">
            <h2 style="width:100%; height:10%;"><%=infodiadanh.TieuDe9 %></h2>
         <div class="noidung1">
            <div class="vanban" style="width:100%;height:auto;text-align:justify;font-size:25px" >  <%=infodiadanh.ThongTin9 %>
                    </div>
             <div class="hinhanh" style="width:100%;height:auto;margin:3%" >
                 <%if(infodiadanh.HinhAnh9!=null){ %>
                      <img  style="width:90%;height:100%" src='<%="./diadiem/"+infodiadanh.HinhAnh9 %>'/>
                 
                 
                 <p style="text-align:center;font-style:italic;font-size:15px"><%=infodiadanh.TieuDe9 %></p>
                 <%} %>
             </div>
         </div>
        </div>
        <div style="width:100%; height:auto;display: flex;flex-direction: column;">
            <h2 style="width:100%; height:10%;"><%=infodiadanh.TieuDe10 %></h2>
         <div class="noidung1">
            <div class="vanban" style="width:100%;height:auto;text-align:justify;font-size:25px" >  <%=infodiadanh.ThongTin10 %>
                    </div>
             <div class="hinhanh" style="width:100%;height:auto;margin:3%" >
                 <%if(infodiadanh.HinhAnh10!=null){ %>
                      <img  style="width:90%;height:100%" src='<%="./diadiem/"+infodiadanh.HinhAnh10 %>'/>
                 
                 
                 <p style="text-align:center;font-style:italic;font-size:15px"><%=infodiadanh.TieuDe10 %></p>
                 <%} %>
             </div>
         </div>
        </div>
     
        
    </div>
    <div class="noidungphu" style="margin-top:80px;background-color:#d2cbcb;height:100%" >
         <table class="table">
                <tr >
                    <th style=" background-color:#00ff21;height:5%" colspan="2"><%=infodiadanh.TieuDePhu %></th>
                </tr>
                <tr>
                    <th colspan="2"><img src='<%="./diadiem/"+infodiadanh.HinhAnhPhu %>' style="  width:100%"/> </th>
                </tr>
                <tr>
                    <th style="height:1%" colspan="2"><p style ="  width:100%;height:100%"><%=infodiadanh.TieuDePhu %></p></th>
                </tr>
                <tr >
                    <th style=" background-color:#00ff21;height:4% " colspan="2">Thông tin địa điểm</th>
                </tr>
                <tr style="text-align:left ;height:5% ; ">
                    <th colspan="1" style="width: 40%; padding-top: 8%">Tỉnh</th>
                    <th colspan="1" style="padding-top: 8%"><%=infodiadanh.Tinh %></th>
                </tr>
                <tr style="text-align:left;height:8%;margin-bottom:2%">
                    <th colspan="1" style="width: 35%;height:5%; padding-top: 8%">Thành Lập</th>
                    <th colspan="1" style="padding-top: 8%;"><%=infodiadanh.ThanhLap %></th>
                </tr>
                <tr>
                    <th style=" background-color:#00ff21;height:6% " colspan="2">Vị Trí</th>
                </tr>
                <tr style="height:auto">
                    <th colspan="2" style="width:100%"> <iframe  src='<%=""+infodiadanh.ViTri %>' width="100%" height="200%" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                    </th>
                </tr>
                <tr></tr>
            </table>
    </div>
    <!--
        <div class="noidung" style="float:left">
            <h1 style="border-bottom:2px solid black;padding-bottom:2%"><%=infodiadanh.TenDD %></h1>
            <div class="phandau" style="width:100%;height:auto ;float:left;padding-bottom:5%">
               <h4 style="color:#0094ff;margin:7%;font-size:25px;"><%=infodiadanh.TieuDe1 %></h4>
               
                <div class="vanban">
                    <%=infodiadanh.ThongTin1 %> 
                </div>
                <div class="anhnoidung"><img style="width:100%;height:50%" src='<%="./diadiem/"+infodiadanh.HinhAnh1 %>' /> </div>
            </div>
            <div class="phangiua" style="width:100%;height:auto ;float:left ">
                <div class="anhnoidung"><img style="width:100%;height:50%;margin-left:-5%;margin-top:10%;" src='<%="./diadiem/"+infodiadanh.HinhAnh2 %>' /> </div>
                <div class="vanban2">
                    <h4 style="color:#0094ff;margin:7%;font-size:25px;"><%=infodiadanh.TieuDe2 %></h4>
                    <div>
                    <%=infodiadanh.ThongTin2 %> 
                </div>
                </div>
               
            </div>
            <div class="phancuoi" style="width:100%;height:auto ;float:left;border-bottom:1px solid black;font-size:20px;background-color:#ffffff ">
                <div class="diadiem1">
                    <p>
                        <b>Chùa Cầu</b>

                        Chùa Cầu là viên ngọc giữa lòng Hội An. Cầu xây dựng vào cuối thế kỷ 16 và được gọi là cầu Nhật Bản. Ở giữa cầu có một ngôi miếu nhỏ thờ Huyền Thiên Đại Đế. Cầu có mái che khá độc đáo cùng các kết cấu, họa tiết trang trí thể hiện sự kết hợp hài hòa giữa các phong cách kiến trúc Việt, Hoa, Nhật, và cả phương Tây.

                        Vị trí: Cầu bắc ngang con lạch chảy ra sông Thu Bồm giáp ranh giữa hai đường Nguyễn Thị Minh Khai và Trần Phú.
                    </p>
                    <div class="anhdiadiem" style="width:100%;height:100%">
                        <img src="./img/chuacau.jpg" style="width:100%;height:100%" />
                    </div>
                </div>

            </div>
                
        </div>





        <div class="noidungphu" style="float:left">
           
        </div>
        
        
        </div>
-->
</div>