<%@ Page Language="C#" Title="" MasterPageFile="~/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Admin_Comments.aspx.cs" Inherits="WTProject.Admin_Comments" %>
<asp:Content ID="CommentContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            
                <asp:GridView ID="GridView1" style="margin-top:20px; text-align:center" CellPadding="5" AllowPaging="true" CellSpacing="2" runat="server" AutoGenerateColumns="False" DataKeyNames="commentsid" DataSourceID="LinqDataSource1"  Width="500px" >
                    <Columns>
                        <asp:BoundField DataField="commentsid" HeaderText="Comments Id" InsertVisible="False" ReadOnly="True" SortExpression="commentsid" />
                        <asp:BoundField DataField="comments" HeaderText="Comments" SortExpression="comments" />
                        <asp:BoundField DataField="postsid" HeaderText="Posts Id" SortExpression="postsid" />
                        <asp:ButtonField CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
                    </Columns>
                    <PagerStyle BorderWidth="4px" Font-Size="Medium" />
                    <HeaderStyle Font-Bold="true" />
                    
                </asp:GridView>
    
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WTProject.DBInteractiobDataContext" EntityTypeName="" TableName="Comments" EnableDelete="True">
                </asp:LinqDataSource>
                 <p>
                &nbsp;</p>
                <asp:Button ID="Button1" runat="server" Text="Add A Comment" Width="153px" PostBackUrl="~/BlogLoader.aspx"/>
            </asp:Content>