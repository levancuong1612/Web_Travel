<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Thongtinnd.aspx.cs" Inherits="STRAVEL.Thongtinnd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link href="Admincss.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
    <div style="width:60%;margin-left:20%;height:1000px;background-color:#ffffff;display:flex;flex-direction:column;border:1px solid">
        <h1 style="width:100%;height:60px;text-align:center">Thông Tin Người Dùng</h1>
        <div style="width:100%;height:50%;display:flex;justify-content:space-between;border-bottom:1px solid">
            <div style="width:30%;height:60%;margin-top:100px">
                <img style="width:80%;height:100%;margin-left:10%" src='<%="./admin/"+info.HinhAnh %>' />
            </div>
             <div style="width:70%;height:100%;display:flex;flex-direction:column">
                <h2 style="width:100%;text-align:center;height:50px"><%=info.HoTen %></h2>
                 <div style="height:90%;width:100%;display:flex;justify-content:space-between">
                     <div style="width:40%;margin-left:10%;display:flex;flex-direction:column">
                         <p>MaAD:</p>
                          <p>ID:</p>
                          <p>MẬT KHẨU:</p>
                          <p>EMAIL:</p>
                          <p>SDT:</p>
                          <p>QUYỀN:</p>
                         <p>SỐ BÀI ĐĂNG:</p>
                     </div>
                     <div style="width:50%;display:flex;flex-direction:column;text-align:left">
                         <p><%=info.MaAD %></p>
                         <p><%=info.ID %></p>
                         <p><%=info.MatKhau %></p>
                         <p><%=info.Email %></p>
                         <p><%=info.SDT %></p>
                         <p><%=info.Quyen %></p>
                         <p><%=info.Sobaidang %></p>
                     </div>
                 </div>
                 <div style="width:100%;height:50px;text-align :center">
                     <asp:Button  class="btn_capquyen" ID="Button1" runat="server" Text="Cấp Quyền Admin" OnClick="Button1_Click1" Height="46px" />
                 </div>
             </div>
        </div>
        <div style="width:100%;height:50%;display:flex;flex-direction:column">
            <h2 style="height:10%">Bài đăng của <%=info.HoTen %></h2>
            <div style="height:90%;overflow-y:auto;width:90%;margin-left:5%">
                
                            <%foreach(var item in listtin)
                          { %>
                       
                        <table >
                            <tr style="border-bottom:1px solid" >
                                <th style="border-bottom:0.5px solid;width:100px;height:50px">
                                   <img style="width:50px;height:50px" src='<%="./tintuc/"+item.HinhAnh %>'/>
                                </th>
                                <th style="border-bottom:0.5px solid;width:500px;text-align:left;">Tiêu Đề:<% =item.TieuDe %></th>
                                <th style="border-bottom:0.5px solid;width:300px;text-align:left;margin-left:40px">Lượt Xem:<%=item.hot %></th>
                                
                            </tr>
                            
                        </table>
                        
                        <%} %>
                        
            </div>
        </div>
    </div>
    </form>
</body>
</html>
