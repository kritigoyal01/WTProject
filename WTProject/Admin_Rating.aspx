<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Rating.aspx.cs" Inherits="WTProject.Admin_Rating" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:BoundField DataField="ratingid" HeaderText="ratingid" ReadOnly="True" SortExpression="ratingid" />
                <asp:BoundField DataField="ratingvalueid" HeaderText="ratingvalueid" ReadOnly="True" SortExpression="ratingvalueid" />
                <asp:BoundField DataField="postsid" HeaderText="postsid" ReadOnly="True" SortExpression="postsid" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="SubmitButton" runat="server" Text="Add" PostBackUrl="RatingForm.aspx" />
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WTProject.DBInteractiobDataContext" EntityTypeName="" Select="new (ratingid, ratingvalueid, postsid)" TableName="Ratings">
        </asp:LinqDataSource>
    </div>
    </form>
</body>
</html>
