<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_ViewRating.aspx.cs" Inherits="WTProject.Admin_ViewRating" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ratingid" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:BoundField DataField="ratingid" HeaderText="ratingid" InsertVisible="False" ReadOnly="True" SortExpression="ratingid" />
                <asp:BoundField DataField="ratingvalueid" HeaderText="ratingvalueid" SortExpression="ratingvalueid" />
                <asp:BoundField DataField="postsid" HeaderText="postsid" SortExpression="postsid" />
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WTProject.DBInteractiobDataContext" EntityTypeName="" TableName="Ratings">
        </asp:LinqDataSource>
    </div>
    </form>
</body>
</html>
