<%@ Page Language="C#" MasterPageFile="~/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Admin_Posts.aspx.cs" Inherits="WTProject.Admin_Posts" %>

<asp:Content ID="PostsContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:GridView ID="GridView1" CellPadding="5" style="margin-left:20px; text-align:center;margin-top:20px" AllowPaging="true" runat="server" AutoGenerateColumns="False" DataKeyNames="postsid" DataSourceID="LinqDataSource1" Width="1200px">
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
        <br/> <br/>
        <asp:Button ID="Button1" runat="server" Text="Add" PostBackUrl="~/PostsForm.aspx" />
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WTProject.DBInteractiobDataContext" EntityTypeName="" TableName="Posts" EnableDelete="True">
        </asp:LinqDataSource>
    </asp:Content>