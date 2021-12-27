<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DangkyCT.ascx.cs" Inherits="STRAVEL.UI.DangkyCT" %>
<link rel="stylesheet" type="text/css" href="../Admincss.css" />
<div class="body" style="height:1500px">
   
    <div style="width:100%;height:auto;position:absolute;z-index:2;margin-top:120px;display: flex;flex-direction: column;">
       
       <div class="lienhe" style="width:35%;margin-left:30%;height:auto;border:1px solid;padding-left:100px;background-color:rgba(229, 185, 182,0.75);display: flex;flex-direction: column;">
                 <div style="width:100%;height:50px">
                     <h1 style="width:100%;margin-left:15%">Đăng Ký Tài Khoản </h1>
                 </div>
             <p class="text" style="margin-top:60px;font-weight:bold">Họ Tên </p>
           <asp:TextBox class="txt_tieude" ID="txt_hoten" runat="server" ></asp:TextBox>
            <p class="text" style="font-weight:bold">Tên Tài Khoản </p>
           <asp:TextBox class="txt_tieude" ID="txt_taikhoan" runat="server" ></asp:TextBox>
           <asp:Label class="lbl_taikhoan" ID="lbl_taikhoan" runat="server" Text=""></asp:Label>
           <p class="text" >Mật Khẩu:</p>
           <asp:TextBox class="txt_email" ID="txt_matkhau" TextMode="Password"  runat="server"></asp:TextBox><br />
           <p class="text" >Xác Nhận Mật Khẩu:</p>
           <asp:TextBox class="txt_SDT" ID="txt_xacnhan" TextMode="Password" runat="server"></asp:TextBox>
            <p class="text" >Email:</p>
           <asp:TextBox class="txt_email" ID="txt_email"    MaxLength="50" PlaceHolder="example@someone.com"  runat="server"></asp:TextBox><br />
            <p class="text" >Số Điện Thoại:</p>
           <asp:TextBox class="txt_email" ID="txt_sdt" TextMode="Phone" MaxLength="10"  runat="server"></asp:TextBox><br />
           
           <p class="text" >Hình Ảnh:</p>
           <asp:FileUpload class="anhdangky" ID="FileUpload1" runat="server" />
          
           <asp:Button class="btn_dangkyTK" ID="Button1" runat="server" Text="Đăng Ký " OnClick="Button1_Click" />
           
           <br />
            <div style="width:75%;height:100px;border-top:1px solid;">
             
            </div>

        </div>
        
    </div>
</div>