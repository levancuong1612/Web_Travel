<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Diadanh.aspx.cs" Inherits="STRAVEL.Diadanh" %>

<%@ Register Src="~/UI/DiadanhCT.ascx" TagPrefix="uc1" TagName="DiadanhCT" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:DiadanhCT runat="server" ID="DiadanhCT" />
</asp:Content>
