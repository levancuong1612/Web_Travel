<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Chitietamthuc.aspx.cs" Inherits="STRAVEL.Chitietamthuc" %>

<%@ Register Src="~/UI/ChitietamthucCT.ascx" TagPrefix="uc1" TagName="ChitietamthucCT" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ChitietamthucCT runat="server" ID="ChitietamthucCT" />
</asp:Content>
