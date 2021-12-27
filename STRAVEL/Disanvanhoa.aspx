<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Disanvanhoa.aspx.cs" Inherits="STRAVEL.Disanvanhoa"  EnableEventValidation="false" %>

<%@ Register Src="~/UI/DisanvanhoaCT.ascx" TagPrefix="uc1" TagName="DisanvanhoaCT" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:DisanvanhoaCT runat="server" ID="DisanvanhoaCT" />
</asp:Content>
