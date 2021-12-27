<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Nguoidung.aspx.cs" Inherits="STRAVEL.Nguoidung" %>

<%@ Register Src="~/UI/NguoidungCT.ascx" TagPrefix="uc1" TagName="NguoidungCT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:NguoidungCT runat="server" id="NguoidungCT" />
</asp:Content>
