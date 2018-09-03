<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Manager.aspx.cs" Inherits="ExpenseReinbursementSystem.Manager" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                </button>
                    <a class="navbar-brand" runat="server" href="#">Employee Reimbursement System</a>
                </div>
            </div>
        </div>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Log in as Manager"></asp:Label>
    <br /><br />
    <asp:Label ID="Label2" runat="server" Text="Manager username"></asp:Label>
    <br /><br />
    <asp:TextBox ID="managerUsername" runat="server"></asp:TextBox>
    <br /><br />
    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
    <br /><br />
    <asp:TextBox ID="managerPassword" runat="server" TextMode="Password"></asp:TextBox>
    <br /><br />
    <asp:Button ID="Button1" runat="server" Text="Log in" OnClick="Button1_Click" />


</asp:Content>