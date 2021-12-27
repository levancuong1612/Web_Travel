<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Dangky.aspx.cs" Inherits="STRAVEL.Dangky" %>

<%@ Register Src="~/UI/DangkyCT.ascx" TagPrefix="uc1" TagName="DangkyCT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:DangkyCT runat="server" id="DangkyCT" />
</asp:Content>
