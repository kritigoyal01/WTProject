<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RatingValueForm.aspx.cs" Inherits="WTProject.RatingForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <h3 style="text-align:center">Rating value Form</h3>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center">

        <asp:Label ID="LabelRvalue" runat="server" Text="Rating Value" style="margin-right:26px"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="Field is Required."></asp:RequiredFieldValidator>
        <br/><br/>
        <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />
        
    
    </div>
    </form>
</body>
</html>
