<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Lienhe.aspx.cs" Inherits="STRAVEL.Lienhe" %>

<%@ Register Src="~/UI/LienheCT.ascx" TagPrefix="uc1" TagName="LienheCT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:LienheCT runat="server" id="LienheCT" />
</asp:Content>
