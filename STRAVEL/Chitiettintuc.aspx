<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Chitiettintuc.aspx.cs" Inherits="STRAVEL.Chitiettintuc" %>

<%@ Register Src="~/UI/ChitiettintucCT.ascx" TagPrefix="uc1" TagName="ChitiettintucCT" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ChitiettintucCT runat="server" ID="ChitiettintucCT" />
</asp:Content>
