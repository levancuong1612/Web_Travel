<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Gioithieu.aspx.cs" Inherits="STRAVEL.Gioithieu" %>

<%@ Register Src="~/UI/GioithieuCT.ascx" TagPrefix="uc1" TagName="GioithieuCT" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:GioithieuCT runat="server" ID="GioithieuCT" />
</asp:Content>
