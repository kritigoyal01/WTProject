<%@Page MasterPageFile="~/Admin_Master.Master" Language="C#" AutoEventWireup="true" CodeBehind="Admin_Feedback.aspx.cs" Inherits="WTProject.Admin_Feedback" %>
<asp:Content ID="FeedbackContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:GridView ID="GridView1" width="900px" CellPadding="5" style="text-align:center; margin-top:20px; margin-right: 0px;" runat="server" AllowPaging="true" AutoGenerateColumns="False" DataKeyNames="feedbackid" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:BoundField DataField="feedbackid" HeaderText="Feedback Id" ReadOnly="True" SortExpression="feedbackid" />
                <asp:BoundField DataField="feedbackname" HeaderText="Feedback Name" SortExpression="feedbackname" />
                <asp:BoundField DataField="feedbackemail" HeaderText="Feedback Email" SortExpression="feedbackemail" />
                <asp:BoundField DataField="feedbacksubject" HeaderText="Feedback Subject" ReadOnly="True" SortExpression="feedbacksubject" />
                <asp:BoundField DataField="feedbackmessage" HeaderText="Feedback Message" SortExpression="feedbackmessage" />
                <asp:ButtonField CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
             
            </Columns>
        </asp:GridView>
      
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WTProject.DBInteractiobDataContext" EntityTypeName="" TableName="Feedbacks" EnableDelete="True">
        </asp:LinqDataSource>
   </asp:Content>