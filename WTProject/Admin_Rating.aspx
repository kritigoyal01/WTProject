<%@ Page  Language="C#" MasterPageFile="~/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Admin_Rating.aspx.cs" Inherits="WTProject.Admin_Rating" %>

<asp:Content ID="RatingContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="true" style="text-align:center; margin-top:20px" CellPadding="5" Width="300px" AutoGenerateColumns="False" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:BoundField DataField="ratingid" HeaderText="ratingid" ReadOnly="True" SortExpression="ratingid" />
                <asp:BoundField DataField="ratingvalueid" HeaderText="ratingvalueid" ReadOnly="True" SortExpression="ratingvalueid" />
                <asp:BoundField DataField="postsid" HeaderText="postsid" ReadOnly="True" SortExpression="postsid" />
                <asp:ButtonField CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
            </Columns>
        </asp:GridView>
        <br/> <br/>
        <asp:Button ID="SubmitButton" runat="server" Text="Add Rating" PostBackUrl="~/RatingForm.aspx" />
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WTProject.DBInteractiobDataContext" EntityTypeName="" Select="new (ratingid, ratingvalueid, postsid)" TableName="Ratings" EnableDelete="True">
        </asp:LinqDataSource>
    </asp:Content>