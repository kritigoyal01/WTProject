<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostsForm.aspx.cs" Inherits="WTProject.PostsForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Post Form</title>
</head>
    <h3 style="text-align:center">POST FORM</h3>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center">
        
        <asp:Label ID="Label1" style="margin-left:6%" runat="server" Text="Post Title"></asp:Label> <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 26px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorTitle" runat="server" ControlToValidate="TextBox1" Text="Title is required." ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <br/><br/><br/>
        

        <asp:Label ID="Label2" runat="server" Text="Content"></asp:Label> <asp:TextBox TextMode="MultiLine" Rows="13" Columns="80" ID="TextBox2" runat="server" style="margin-left: 26px"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidatorContent" runat="server" ControlToValidate="TextBox2" Text="Content is required." ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

        <br/><br/><br/>

        <asp:Label ID="Label4" runat="server" Text="User ID"></asp:Label><asp:DropDownList ID="DropDownList1" runat="server" style="margin-left: 26px" DataSourceID="LinqDataSource1" DataTextField="name" DataValueField="userid" Height="22px" Width="135px"></asp:DropDownList>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WTProject.DBInteractiobDataContext" EntityTypeName="" Select="new (userid, name)" TableName="Users" Where="usertypeid == 1">
        </asp:LinqDataSource>
        <br/><br/>
        <br/>
        <asp:Label ID="Label5" runat="server" Text="Cuisine ID"></asp:Label><asp:DropDownList ID="DropDownList2" runat="server" style="margin-left: 26px" DataSourceID="LinqDataSource2" DataTextField="cuisineid" DataValueField="cuisineid" Width="135px" Height="22px"></asp:DropDownList>
        <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="WTProject.DBInteractiobDataContext" EntityTypeName="" Select="new (cuisineid)" TableName="Cuisines">
        </asp:LinqDataSource>
        <br/><br/>
        <br/>
        <asp:Label ID="Label3" runat="server" Text="Header Image" style="margin-right: 26px; margin-left:6%"></asp:Label><asp:FileUpload ID="FileUpload1" runat="server" /> 
        <br/><br/><br/><br/>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" /><br/><br/><asp:Label ID="StatusLabel" runat="server" Text=" "></asp:Label>
        
    
    
    </div>
    </form>
</body>
</html>
