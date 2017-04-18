<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Users.aspx.cs" Inherits="WTProject.Admin_Users"  MasterPageFile="~/Admin_Master.Master" Title="Admin_Users"%>

<asp:Content ID="UsersContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" style="text-align:center; margin-top:20px; padding-left:3px; padding-right:3px; margin-right: 0px;" AllowPaging="true" runat="server" AutoGenerateColumns="False" DataKeyNames="userid" DataSourceID="LinqDataSource1" Width="1200px" Height="241px">
        <Columns>
            <asp:BoundField DataField="userid" HeaderText="Userid" InsertVisible="False" ReadOnly="True" SortExpression="userid" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
            <asp:BoundField DataField="pass" HeaderText="Password" SortExpression="pass" />
            <asp:BoundField DataField="subscribed" HeaderText="Subscribed" SortExpression="subscribed" />
            <asp:BoundField DataField="img" HeaderText="Image" SortExpression="img" />
            <asp:BoundField DataField="usertypeid" HeaderText="Usertype Id" SortExpression="usertypeid" />
            <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
            <asp:ButtonField CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
        </Columns>
        
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WTProject.DBInteractiobDataContext" EnableDelete="True" EntityTypeName="" TableName="Users">
        </asp:LinqDataSource>
    </asp:Content>
