<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Users.aspx.cs" Inherits="WTProject.Admin_Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="userid" DataSourceID="LinqDataSource1">
        <Columns>
            <asp:BoundField DataField="userid" HeaderText="userid" InsertVisible="False" ReadOnly="True" SortExpression="userid" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
            <asp:BoundField DataField="subscribed" HeaderText="subscribed" SortExpression="subscribed" />
            <asp:BoundField DataField="img" HeaderText="img" SortExpression="img" />
            <asp:BoundField DataField="usertypeid" HeaderText="usertypeid" SortExpression="usertypeid" />
            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
            <asp:ButtonField CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
        </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WTProject.DBInteractiobDataContext" EnableDelete="True" EntityTypeName="" TableName="Users">
        </asp:LinqDataSource>
    </div>
    </form>
</body>
</html>
