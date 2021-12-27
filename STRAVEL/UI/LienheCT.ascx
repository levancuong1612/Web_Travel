<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LienheCT.ascx.cs" Inherits="STRAVEL.UI.LienheCT" %>
<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>
<link rel="stylesheet" type="text/css" href="../Lienhecss.css" />
<div class="body">
    <div style="position:absolute;z-index:1">
    <img style="width:100%;height:100%" src="../diadiem/nenweb2.jpg" />
    </div>
    <div style="width:100%;height:auto;position:absolute;z-index:2;margin-top:120px;display: flex;flex-direction: column;">
       <div style="width:100%;text-align:center">
           <h1>Liên Hệ</h1>
       </div>
       <div class="lienhe" style="width:50%;margin-left:25%;height:auto;border:1px solid;padding-left:100px;background-color:rgba(255, 106, 0,0.75);">
            <p class="text" style="margin-top:60px;font-weight:bold">Tiêu Đề: </p>
           <asp:TextBox class="txt_tieude" ID="txt_tieude" runat="server"></asp:TextBox>
           
           <p class="text" >Email:</p>
           <asp:TextBox class="txt_email" ID="txt_Email" TextMode="Email"  MaxLength="50" PlaceHolder="example@someone.com" runat="server"></asp:TextBox>
           <p class="text" >Số Điện Thoại:</p>
           <asp:TextBox class="txt_SDT" ID="txt_dienthoai" TextMode="Number" MaxLength="10" runat="server"></asp:TextBox>
           <p class="text" >Họ Tên:</p>
           <asp:TextBox class="txt_hoten" ID="txt_hoten" TextMode="MultiLine" runat="server"></asp:TextBox>
           <p class="text" >Nội Dung:</p>
           <asp:TextBox class="txt_noidung" ID="txt_noidung" runat="server"></asp:TextBox>
 
           <p class="text" >Ngày Gửi:</p>
           <asp:TextBox class="txt_ngaygui" ID="txt_ngaygui" TextMode="Date" runat="server"></asp:TextBox>  <br />
           <a href="Bantin.aspx">
           <asp:Button class="btn_gui" ID="Button1" runat="server" Text="Gửi" OnClick="Button1_Click" />

           </a>
       </div>
        
        
    </div>
</div>

