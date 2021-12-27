<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Duyetbai.aspx.cs" Inherits="STRAVEL.Duyetbai" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Admincss.css" rel="stylesheet" />
</head>
<body style="margin:0px">
    <form id="form1" runat="server">
    <div style="width:80%;height:auto;margin-left:10%;margin-right:10%">
        <div style="height:80px;width:80%;position:fixed;background-color:#808080;display:flex;justify-content:center">
            
        <asp:Button class="btn_duyet" ID="Button1" runat="server" Text="Duyệt Bài" OnClick="Button1_Click"  />
        <asp:Button class="btn_xoa" ID="Button2" runat="server" Text="Xóa Bài" OnClick="Button2_Click" />
        </div>
        <%if(infotintuc.MaTin==0){ %>
        <h1>KHÔNG CÓ BÀI VIẾT ĐỂ PHÊ DUYỆT</h1>
        <%} %>
        <%else{ %>
        <%if(infotintuc.TieuDe!=""){ %>
        <div class="noidung1"  >
<div style="height:50px"></div>
        <div class="tieude" style="width:100%;height:auto;border-bottom:2px solid;text-align:left;margin-top:100px">
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
        <%} %>
      <%} %>
    </div>
    </form>
</body>
</html>
