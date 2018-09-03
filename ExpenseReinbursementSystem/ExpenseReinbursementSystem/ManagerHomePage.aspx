<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="ManagerHomePage.aspx.cs" Inherits="ExpenseReinbursementSystem.ManagerHomePage" %>

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
                        <li id="about"><a runat="server" href="~/ViewReimbursementRequest">View Reimbursement Requests</a></li>
                        <li id="contact"><a runat="server" href="~/CurrentEmployees">Current Employees</a></li>
                        <li id="logout"><a runat="server" href="~/">Logout</a></li>
                    </ul>
                </div>
            </div>
        </div>
    <br /><br />
</asp:Content>

