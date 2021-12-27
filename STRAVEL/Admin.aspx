<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="STRAVEL.Admin" %>

<%@ Register Src="~/UI/AdminCT.ascx" TagPrefix="uc1" TagName="AdminCT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <uc1:AdminCT runat="server" id="AdminCT" />
</asp:Content>
