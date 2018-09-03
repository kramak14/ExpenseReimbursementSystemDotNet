<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="ReimbursementRequest.aspx.cs" Inherits="ExpenseReinbursementSystem.ReimbursementRequest" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:Label ID="Label1" runat="server" Text="Submit your reimbursement request here"></asp:Label>
    <br /><br />
    <asp:Label ID="Label3" runat="server" Text="Amount: "></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br /><br />
    <asp:Label ID="Label4" runat="server" Text="Purpose"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br /><br />
    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
    <br /><br />
    <asp:Label ID="Label2" runat="server" Text="My Reimbursement Requests"></asp:Label>
    <br /><br />
    <asp:GridView ID="GridView1" runat="server" Width="345px" AutoGenerateColumns="False" DataSourceID="ReimbursementDataSource">
        <Columns>
            <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />
            <asp:BoundField DataField="reimbursement_req" HeaderText="reimbursement_req" SortExpression="reimbursement_req" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
            <asp:BoundField DataField="manager" HeaderText="manager" SortExpression="manager" />
            <asp:BoundField DataField="reimbursement_id" HeaderText="reimbursement_id" SortExpression="reimbursement_id" />
        </Columns>
    </asp:GridView>




    <asp:SqlDataSource ID="ReimbursementDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ERSConnection %>" SelectCommand="SELECT [user_id], [reimbursement_req], [description], [status], [manager], [reimbursement_id] FROM [reimbursement_request] WHERE ([user_id] = @user_id)">
        <SelectParameters>
            <asp:SessionParameter Name="user_id" SessionField="id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>




</asp:Content>
