<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Chitietdiadanh.aspx.cs" Inherits="STRAVEL.Chitietdiadanh" %>

<%@ Register Src="~/UI/ChitietdiadanhCT.ascx" TagPrefix="uc1" TagName="ChitietdiadanhCT" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ChitietdiadanhCT runat="server" ID="ChitietdiadanhCT" />
</asp:Content>
