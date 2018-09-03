<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="ViewReimbursementRequests.aspx.cs" Inherits="ExpenseReinbursementSystem.ViewReimbursementRequests" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:Label ID="Label1" runat="server" Text="Your Reimbursement Requests"></asp:Label><br /><br />
    <br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ERSSource" >
        <Columns>
            <asp:BoundField DataField="userName" HeaderText="userName" SortExpression="userName" />
            <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />
            <asp:BoundField DataField="reimbursement_req" HeaderText="reimbursement_req" SortExpression="reimbursement_req" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
            <asp:BoundField DataField="manager" HeaderText="manager" SortExpression="manager" />
            <asp:BoundField DataField="reimbursement_id" HeaderText="reimbursement_id" SortExpression="reimbursement_id" />
            <asp:TemplateField HeaderText="Approve">
                <ItemTemplate>
                    
                    
                    
                    <asp:Button ID="ApproveButton" runat="server" Text="Approve" OnClick="ApproveButton_Click" />
                    
                    
                    
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Deny">
                <ItemTemplate>

                    

                    <asp:Button ID="DenyButton" runat="server" Text="Deny" OnClick="DenyButton_Click" />

                    

                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
       
    </asp:GridView>

    <asp:SqlDataSource ID="ERSSource" runat="server" ConnectionString="<%$ ConnectionStrings:ERSConnection %>" SelectCommand="SELECT [userName], [user_id], [reimbursement_req], [description], [status], [manager], [reimbursement_id] FROM [Reimbursements]">
    </asp:SqlDataSource>

    </asp:Content>
