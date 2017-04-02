<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_ViewFeedback.aspx.cs" Inherits="WTProject.Admin_ViewFeedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="feedbackid" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:BoundField DataField="feedbackid" HeaderText="feedbackid" ReadOnly="True" SortExpression="feedbackid" />
                <asp:BoundField DataField="feedbackname" HeaderText="feedbackname" SortExpression="feedbackname" />
                <asp:BoundField DataField="feedbackemail" HeaderText="feedbackemail" SortExpression="feedbackemail" />
                <asp:BoundField DataField="feedbackmessage" HeaderText="feedbackmessage" SortExpression="feedbackmessage" />
            </Columns>
        </asp:GridView>
    
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WTProject.DBInteractiobDataContext" EntityTypeName="" TableName="Feedbacks">
        </asp:LinqDataSource>
    
    </div>
    </form>
</body>
</html>
