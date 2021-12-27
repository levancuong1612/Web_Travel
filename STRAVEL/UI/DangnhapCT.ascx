<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DangnhapCT.ascx.cs" Inherits="STRAVEL.UI.DangnhapCT" %>
<link rel="stylesheet" type="text/css" href="../Admincss.css" />

<div class="body">
    <div style="position:absolute;z-index:1">
    <img style="width:100%;height:100%" src="../diadiem/nenweb3.jpg" />
    </div>
    <div style="width:100%;height:auto;position:absolute;z-index:2;margin-top:120px;display: flex;flex-direction: column;">
       <div style="width:100%;text-align:center">
           <h1>Đăng Nhập </h1>
       </div>
       <div class="lienhe" style="width:35%;margin-left:30%;height:auto;border:1px solid;padding-left:100px;background-color:rgba(229, 185, 182,0.75);">
            <p class="text" style="margin-top:60px;font-weight:bold">Tài Khoản </p>
           <asp:TextBox class="txt_tieude" ID="txt_taikhoan" runat="server" OnTextChanged="txt_taikhoan_TextChanged"></asp:TextBox>
           
           <p class="text" >Mật Khẩu:</p>
           <asp:TextBox class="txt_email" ID="txt_matkhau" TextMode="Password" runat="server"></asp:TextBox><br />
           <asp:CheckBox ID="chk_hienthi" runat="server"  OnCheckedChanged="CheckBox1_CheckedChanged" />Hiển Thị Mật Khẩu
           <p class="text" >Xác Nhận Mật Khẩu:</p>
           <asp:TextBox class="txt_SDT" ID="txt_xacnhan" TextMode="Password" runat="server"></asp:TextBox>
           
           <br />
           <asp:Button   class="btn_gui" ID="Button1" runat="server" Text="Đăng Nhập" OnClick="Button1_Click2"  />
            <div style="width:75%;height:100px;border-top:1px solid;margin-top:-5%">
                <asp:Button   class="btn_dangky" ID="Button2" runat="server" Text="Đăng Ký" OnClick="Button2_Click"   />
            </div>

           
       

           
       </div>
        
        
    </div>
</div>

