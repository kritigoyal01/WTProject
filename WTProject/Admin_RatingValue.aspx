<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_RatingValue.aspx.cs" Inherits="WTProject.Admin_RatingValue" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ratingvalueid" DataSourceID="LinqDataSourceRatingValue">
            <Columns>
                <asp:BoundField DataField="ratingvalueid" HeaderText="ratingvalueid" InsertVisible="False" ReadOnly="True" SortExpression="ratingvalueid" />
                <asp:BoundField DataField="ratingvalue1" HeaderText="ratingvalue1" SortExpression="ratingvalue1" />
                <asp:ButtonField CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSourceRatingValue" runat="server" ContextTypeName="WTProject.DBInteractiobDataContext" EnableDelete="True" EntityTypeName="" TableName="RatingValues">
        </asp:LinqDataSource>
        <asp:Button ID="Button1" runat="server" Text="Add" PostBackUrl="~/RatingValueForm.aspx" />
    </div>
    </form>
</body>
</html>
