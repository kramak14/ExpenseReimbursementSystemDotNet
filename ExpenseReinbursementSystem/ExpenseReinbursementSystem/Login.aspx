<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Login.aspx.cs" Inherits="ExpenseReinbursementSystem.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                </button>
                    <a class="navbar-brand" runat="server">Employee Reimbursement System</a>
                </div>
            </div>
        </div>


    <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
    <br /><br />
    <asp:Label ID="Label1" runat="server" Text="Log In"></asp:Label>
    <br /><br />
    <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
    <br /><br />
    <asp:TextBox ID="username" runat="server"></asp:TextBox>
    <br /><br />
    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
    <br /><br />
    <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
    <br /><br />
    <asp:Button ID="Button1" runat="server" Text="Log in" OnClick="Button1_Click" />
    <br /><br />
    <a runat="server" href="~/Register">Not a member? Register here</a>

</asp:Content>