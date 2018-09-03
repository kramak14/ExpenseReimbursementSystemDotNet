<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Home.aspx.cs" Inherits="ExpenseReinbursementSystem.Home" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br />
    <asp:Label ID="Label1" runat="server" Text="View my Information"></asp:Label>
    <br /><br />
    <asp:Label ID="label" runat="server" Text="First Name"></asp:Label>
    <br /><br />
    <asp:TextBox ID="firstName" runat="server"></asp:TextBox>
    <br /><br />
    <asp:Label ID="label2" runat="server" Text="Last Name"></asp:Label>
    <br /><br />
    <asp:TextBox ID="lastName" runat="server"></asp:TextBox>
    <br /><br />
    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
    <br /><br />
    <asp:TextBox ID="email" runat="server"></asp:TextBox>
    <br /><br />

    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
    <br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="763px">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
            <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
            <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ERSConnection %>" SelectCommand="SELECT [id], [first_name], [last_name], [email] FROM [updateUserInfo] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:SessionParameter Name="id" SessionField="id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />



</asp:Content>
