<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RatingValueForm.aspx.cs" Inherits="WTProject.RatingForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:Label ID="LabelRvalue" runat="server" Text="Rating Value" style="margin-right:26px"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br/><br/>
        <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />
        
    
    </div>
    </form>
</body>
</html>
