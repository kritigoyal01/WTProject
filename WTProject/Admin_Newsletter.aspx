<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Newsletter.aspx.cs" Inherits="WTProject.Admin_Newsletter" MasterPageFile="~/Admin_Master.Master" %>

<asp:Content ID="NewsletterContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:GridView ID="GridView1" AllowPaging="true" style="text-align:center" runat="server" AutoGenerateColumns="False" DataKeyNames="newsid" DataSourceID="LinqDataSource1" Height="144px" Width="1200px">
            <Columns>
                <asp:BoundField DataField="newsid" HeaderText="Newsid" ReadOnly="True" SortExpression="newsid" />
                <asp:BoundField DataField="newstitle" HeaderText="Newstitle" SortExpression="newstitle" />
                <asp:BoundField DataField="newssubject" HeaderText="Newssubject" SortExpression="newssubject" />
                <asp:BoundField DataField="newscontent" HeaderText="Newscontent" SortExpression="newscontent" />
                <asp:BoundField DataField="header" HeaderText="Header" SortExpression="header" />
                <asp:BoundField DataField="footer" HeaderText="Footer" SortExpression="footer" />
            </Columns>
            
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WTProject.DBInteractiobDataContext" EntityTypeName="" TableName="Newsletters">
        </asp:LinqDataSource>
        <p>&nbsp;</p>
        <asp:Button ID="Button1" runat="server" Text="Add A NewsLetter" PostBackUrl="~/NewsLetterForm.aspx" />
</asp:Content>
    
