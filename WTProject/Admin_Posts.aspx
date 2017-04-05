<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Posts.aspx.cs" Inherits="WTProject.Admin_ViewAllPosts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="postsid" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:BoundField DataField="postsid" HeaderText="postsid" InsertVisible="False" ReadOnly="True" SortExpression="postsid" />
                <asp:BoundField DataField="posttitle" HeaderText="posttitle" SortExpression="posttitle" />
                <asp:BoundField DataField="cuisineid" HeaderText="cuisineid" SortExpression="cuisineid" />
                <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid" />
                <asp:BoundField DataField="writtencontent" HeaderText="writtencontent" SortExpression="writtencontent" />
                <asp:BoundField DataField="headerimage" HeaderText="headerimage" SortExpression="headerimage" />
                <asp:ButtonField CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="Add" PostBackUrl="~/PostsForm.aspx" />
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WTProject.DBInteractiobDataContext" EntityTypeName="" TableName="Posts" EnableDelete="True">
        </asp:LinqDataSource>
    
    </div>
    </form>
</body>
</html>
