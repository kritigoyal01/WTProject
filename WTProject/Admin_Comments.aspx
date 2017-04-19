<%@ Page Language="C#" Title="" MasterPageFile="~/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Admin_Comments.aspx.cs" Inherits="WTProject.Admin_Comments" %>
<asp:Content ID="CommentContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            
                <asp:GridView ID="GridView1" OnRowUpdating="GridView1_RowUpdating" style="margin-top:20px; text-align:center" CellPadding="5" AllowPaging="True" CellSpacing="2" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1"  Width="500px" >
                    
                    <Columns>
                        <asp:BoundField DataField="commentsid"  HeaderText="Comments id" ReadOnly="True" SortExpression="commentsid" />
                        <asp:BoundField DataField="comments" HeaderText="Comments" SortExpression="comments" ReadOnly="True" />
                        <asp:BoundField DataField="postsid" HeaderText="Posts id" SortExpression="postsid" ReadOnly="True" />
                        <asp:BoundField DataField="user_id" HeaderText="User id" ReadOnly="True" SortExpression="user_id" />
                        <asp:BoundField DataField="date_added" HeaderText="Date added" ReadOnly="True" SortExpression="date_added" />
                        <asp:ButtonField CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
                        <asp:ButtonField CommandName="Update" HeaderText="Update" ShowHeader="True" Text="Update" />
                    </Columns>
                    <PagerStyle BorderWidth="4px" Font-Size="Medium" />
                    <HeaderStyle Font-Bold="true" />
                    
                </asp:GridView>
    
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WTProject.DBInteractiobDataContext" EntityTypeName="" TableName="Comments" Select="new (commentsid, comments, postsid, user_id, date_added)">
                </asp:LinqDataSource>
                 <p>
                &nbsp;</p>
                <asp:Button ID="Button1" runat="server" Text="Add A Comment" Width="153px" PostBackUrl="~/BlogLoader.aspx"/>
            </asp:Content>