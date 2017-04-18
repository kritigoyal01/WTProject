<%@ Page Language="C#" MasterPageFile="~/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Admin_Cuisine.aspx.cs" Inherits="WTProject.Admin_Cuisine" %>
<asp:Content ID="CuisineContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:GridView ID="GridView1" CellPadding="5" style="margin-top:20px; text-align:center; margin-right: 0px;" runat ="server" AllowPaging="true" AutoGenerateColumns="False" DataKeyNames="cuisineid" DataSourceID="LinqDataSource1"  Width="484px">
            <Columns>
                <asp:BoundField DataField="cuisineid" HeaderText="Cuisine Id" InsertVisible="False" ReadOnly="True" SortExpression="cuisineid" />
                <asp:BoundField DataField="cuisinename" HeaderText="Cuisine Name" SortExpression="cuisinename" />
                <asp:ButtonField CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
            </Columns>
        </asp:GridView>
        <br/><br/>
        <asp:Button ID="CuisineAddButton" runat="server" Text="Add A Cuisine" PostBackUrl="~/CuisineForm.aspx" />
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WTProject.DBInteractiobDataContext" EntityTypeName="" TableName="Cuisines" EnableDelete="True">
        </asp:LinqDataSource>
</asp:Content>