<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Chitietdisan.aspx.cs" Inherits="STRAVEL.Chitietdisan" %>

<%@ Register Src="~/UI/ChitietdisanCT.ascx" TagPrefix="uc1" TagName="ChitietdisanCT" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ChitietdisanCT runat="server" ID="ChitietdisanCT" />
</asp:Content>
