<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WTProject.MyProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cook - A - Roo | Khao aur Khilao | Login</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/revolution-slider.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    </head>
<body>
    <form id="form1" runat="server">
        <div style="padding-right:500; padding-top:30"></div>
       <center>
        <asp:Login ID="Login1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="219px" Width="487px" OnAuthenticate="Login1_Authenticate">
            <CheckBoxStyle Font-Names="Calibri" />
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <LabelStyle Font-Names="Calibri" Font-Size="Medium" />
            <LayoutTemplate>
                <table cellpadding="4" cellspacing="0" style="border-collapse:collapse;">
                    <tr>
                        <td>
                            <table cellpadding="0" style="height:219px;width:487px;">
                                <tr>
                                    <td align="center" colspan="2" style="color:White;background-color:#5D7B9D;font-family:Calibri;font-size:X-Large;font-weight:bold;">Log In</td>
                                </tr>
                                <tr>
                                    <td align="right" style="font-family:Calibri;font-size:Medium;">
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="UserName" runat="server" Font-Names="Calibri" Font-Size="X-Large"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="font-family:Calibri;font-size:Medium;">
                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Password" runat="server" Font-Names="Calibri" Font-Size="X-Large" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4" style="font-family:Calibri;padding-left:160px">
                                       New User? <a href="RegisterUser.aspx">Register here</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="4" style="color:Red;">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        <asp:Button ID="LoginButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Ridge" BorderWidth="1px" CommandName="Login" Font-Names="Calibri" Font-Size="Large" ForeColor="#284775" Text="Log In" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Ridge" BorderWidth="1px" Font-Names="Calibri" Font-Size="Large" ForeColor="#284775" />
            <TextBoxStyle Font-Size="X-Large" Font-Names="Calibri" />
            <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="X-Large" ForeColor="White" Font-Names="Calibri" />
        </asp:Login>
            </center>
    </form>
</body>
</html>
