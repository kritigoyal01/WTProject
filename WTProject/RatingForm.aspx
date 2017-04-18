<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RatingForm.aspx.cs" Inherits="WTProject.RatingForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <h3 style="text-align:center">Rating Form</h3>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center">
        <asp:Label ID="LabelPost" runat="server" Text="Post Id" style="margin-right:26px"></asp:Label><asp:DropDownList ID="DropDownListPost" runat="server" DataSourceID="LinqDataSourcePostR" DataTextField="postsid" DataValueField="postsid" Height="22px" Width="135px"></asp:DropDownList>
        <asp:LinqDataSource ID="LinqDataSourcePostR" runat="server" ContextTypeName="WTProject.DBInteractiobDataContext" EntityTypeName="" Select="new (postsid)" TableName="Posts">
        </asp:LinqDataSource>
        <br/><br/><br/>
        <asp:Label ID="LabelRvalue" runat="server" Text="Rvalue Id" style="margin-right:26px"></asp:Label><asp:DropDownList ID="DropDownListRValue" runat="server" DataSourceID="LinqDataSourceRatingValueR" DataTextField="ratingvalueid" DataValueField="ratingvalueid" Height="22px" Width="135px"></asp:DropDownList>
        <asp:LinqDataSource ID="LinqDataSourceRatingValueR" runat="server" ContextTypeName="WTProject.DBInteractiobDataContext" EntityTypeName="" Select="new (ratingvalueid)" TableName="RatingValues">
        </asp:LinqDataSource>
        <br/><br/><br/><br/>
        <asp:Button ID="RatingButton" runat="server" Text="Submit" onclick="RatingButton_Click"/>
    </div>
        
    </form>
</body>
</html>
