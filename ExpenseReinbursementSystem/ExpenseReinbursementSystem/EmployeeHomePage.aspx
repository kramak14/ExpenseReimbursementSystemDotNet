<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="EmployeeHomePage.aspx.cs" Inherits="ExpenseReinbursementSystem.EmployeeHomePage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
            <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" runat="server" href="~/">Employee Reimbursement System</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li id="home"><a runat="server" href="~/ManagerHomePage">Home</a></li>
                        <li id="about"><a runat="server" href="~/ReimbursementRequest">Reimbursement Requests</a></li>
                        <li id="contact"><a runat="server" href="~/EmployeeInfo">Information</a></li>
                        <li id="logout"><a runat="server" href="~/">Log out</a></li>
                    </ul>
                </div>
            </div>
        </div>
    <br /><br />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

</asp:Content>


