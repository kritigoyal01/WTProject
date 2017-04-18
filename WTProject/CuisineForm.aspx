<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CuisineForm.aspx.cs" Inherits="WTProject.CuisineForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cuisine Form</title>
    <h3 style="text-align:center"> Cuisine Form </h3>
</head>
<body>
    <form id="form1"  runat="server">

    <div style=" margin-top:40px; text-align:center">
        <asp:Label  ID="CuisineLabel" style="margin-left:30%" runat="server" Text="Cuisine Name"></asp:Label> <asp:TextBox ID="CuisineNameTextBox" runat="server" style="margin-left: 26px" Width="179px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorTitle" runat="server" ControlToValidate="CuisineNameTextBox" Text="Name is required." ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorTitle" runat="server" ErrorMessage="string" ControlToValidate="CuisineNameTextBox" ValidationExpression="string" ValidationGroup="string" Text="Characters must be between a-z"></asp:RegularExpressionValidator>
        <br/><br/><br/>
        <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click1" />
    </div>
        
    </form>
</body>
</html>
