<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Trangchu.aspx.cs" Inherits="STRAVEL.Trangchu"  EnableEventValidation="false" %>

<%@ Register Src="~/UI/TrangChuCT.ascx" TagPrefix="uc2" TagName="TrangChuCT" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc2:TrangChuCT runat="server" ID="TrangChuCT" />
</asp:Content>
