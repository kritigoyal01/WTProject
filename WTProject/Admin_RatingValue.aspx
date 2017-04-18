<%@ Page Language="C#" MasterPageFile="~/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Admin_RatingValue.aspx.cs" Inherits="WTProject.Admin_RatingValue" %>
<asp:Content ID="RatingContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:GridView ID="GridView1" AllowPaging="true" style="text-align:center; margin-top:20px" CellPadding="5" Width="300px" runat="server" AutoGenerateColumns="False" DataKeyNames="ratingvalueid" DataSourceID="LinqDataSourceRatingValue">
            <Columns>
                <asp:BoundField DataField="ratingvalueid" HeaderText="ratingvalueid" InsertVisible="False" ReadOnly="True" SortExpression="ratingvalueid" />
                <asp:BoundField DataField="ratingvalue1" HeaderText="ratingvalue1" SortExpression="ratingvalue1" />
                <asp:ButtonField CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSourceRatingValue" runat="server" ContextTypeName="WTProject.DBInteractiobDataContext" EnableDelete="True" EntityTypeName="" TableName="RatingValues">
        </asp:LinqDataSource>
    <br/><br/>
        <asp:Button ID="Button1" runat="server" Text="Add Rating Value" PostBackUrl="~/RatingValueForm.aspx" />
</asp:Content>