<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ExpenseReinbursementSystem._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Label ID="Label1" runat="server" Text="Welcome to the Employee Reimbursement System"></asp:Label>

        <br />
        <a runat="server" href="~/Employee">Log in as Employee</a><br />
        <a runat="server" href="~/Manager">Log in as Manager</a>
</asp:Content>