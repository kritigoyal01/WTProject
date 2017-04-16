<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WTProject.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="postsid" DataSourceID="SqlDataSource1" ForeColor="Black">
                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="postsid" HeaderText="postsid" InsertVisible="False" ReadOnly="True" SortExpression="postsid" />
                    <asp:BoundField DataField="posttitle" HeaderText="posttitle" SortExpression="posttitle" />
                    <asp:BoundField DataField="cuisineid" HeaderText="cuisineid" SortExpression="cuisineid" />
                    <asp:BoundField DataField="writtencontent" HeaderText="writtencontent" SortExpression="writtencontent" />
                    <asp:BoundField DataField="headerimage" HeaderText="headerimage" SortExpression="headerimage" />
                    <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid" />
                </Fields>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecipeBlogConnectionString3 %>" SelectCommand="SELECT * FROM [Posts]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
