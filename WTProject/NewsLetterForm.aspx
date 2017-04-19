<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewsLetterForm.aspx.cs" Inherits="WTProject.NewsLetterForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <h3 style="text-align:center; margin-top:20px">NewsLetter Form</h3>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center; margin-top:20px">
    
 
        <asp:Label ID="Label1" runat="server" Text="Title" style="padding-right:10px"></asp:Label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Field is Required." ControlToValidate="TextBox1" ></asp:RequiredFieldValidator>
        <br/><br/>
         <asp:Label ID="Label2" runat="server" Text="Subject"  style="padding-right:10px"></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Field is Required." ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        <br/><br/>
         <asp:Label ID="Label3" runat="server" Text="Content"  style="padding-right:10px"></asp:Label>
        <asp:TextBox TextMode="MultiLine" Rows="13" Columns="80"  ID="TextBox3" runat="server"></asp:TextBox>
        <br/><br/>
         <asp:Label ID="Label4" runat="server" Text="Header"  style="padding-right:10px"></asp:Label><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Field is Required." ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
        <br/><br/>
         <asp:Label ID="Label5" runat="server" Text="Footer"  style="padding-right:10px"></asp:Label><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Field is Required." ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
        <br/><br/>
       
         
         
         
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
           </div>
    </form>
</body>
</html>
