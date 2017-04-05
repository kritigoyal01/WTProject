<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Comments.aspx.cs" Inherits="WTProject.Admin_ViewComments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="commentsid" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:BoundField DataField="commentsid" HeaderText="commentsid" InsertVisible="False" ReadOnly="True" SortExpression="commentsid" />
                <asp:BoundField DataField="comments" HeaderText="comments" SortExpression="comments" />
                <asp:BoundField DataField="postsid" HeaderText="postsid" SortExpression="postsid" />
                <asp:ButtonField CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
            </Columns>
        </asp:GridView>
    
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WTProject.DBInteractiobDataContext" EntityTypeName="" TableName="Comments" EnableDelete="True">
        </asp:LinqDataSource>
    
    </div>
    </form>
</body>
</html>
