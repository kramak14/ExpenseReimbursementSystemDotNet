<%@ Page Title="CurrentEmployees" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CurrentEmployees.aspx.cs" Inherits="ExpenseReinbursementSystem.CurrentEmployees" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br />
    Viewing All Current Employees:
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
  
</asp:Content>