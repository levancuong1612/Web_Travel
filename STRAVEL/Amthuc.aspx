<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Amthuc.aspx.cs" Inherits="STRAVEL.Amthuc" %>

<%@ Register Src="~/UI/AmthucCT.ascx" TagPrefix="uc1" TagName="AmthucCT" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:AmthucCT runat="server" ID="AmthucCT" />
</asp:Content>
