<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Bantin.aspx.cs" Inherits="STRAVEL.Bantin" %>

<%@ Register Src="~/UI/BantinCT.ascx" TagPrefix="uc1" TagName="BantinCT" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" type="text/css" href="./bangtincss.css" />
    <uc1:BantinCT runat="server" ID="BantinCT" />
</asp:Content>
