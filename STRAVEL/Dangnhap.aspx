<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Dangnhap.aspx.cs" Inherits="STRAVEL.Dangnhap" %>

<%@ Register Src="~/UI/DangnhapCT.ascx" TagPrefix="uc1" TagName="DangnhapCT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:DangnhapCT runat="server" id="DangnhapCT" />
</asp:Content>
