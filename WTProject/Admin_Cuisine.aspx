<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Cuisine.aspx.cs" Inherits="WTProject.Admin_Cuisine" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cuisineid" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:BoundField DataField="cuisineid" HeaderText="cuisineid" InsertVisible="False" ReadOnly="True" SortExpression="cuisineid" />
                <asp:BoundField DataField="cuisinename" HeaderText="cuisinename" SortExpression="cuisinename" />
                <asp:ButtonField CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="CuisineAddButton" runat="server" Text="Add" PostBackUrl="~/CuisineForm.aspx" />
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WTProject.DBInteractiobDataContext" EntityTypeName="" TableName="Cuisines" EnableDelete="True">
        </asp:LinqDataSource>
    </div>
    </form>
</body>
</html>
