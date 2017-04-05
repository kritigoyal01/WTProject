<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CuisineForm.aspx.cs" Inherits="WTProject.CuisineForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <asp:Label ID="CuisineLabel" runat="server" Text="Cuisine Name"></asp:Label> <asp:TextBox ID="CuisineNameTextBox" runat="server" style="margin-left: 26px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorTitle" runat="server" ControlToValidate="CuisineNameTextBox" Text="Name is required." ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorTitle" runat="server" ErrorMessage="string" ControlToValidate="CuisineNameTextBox" ValidationExpression="string" ValidationGroup="string" Text="Characters must be between a-z"></asp:RegularExpressionValidator>
        <br/><br/>
        <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click1" />
    </div>
        
    </form>
</body>
</html>
