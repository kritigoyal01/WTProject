<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_viewing.aspx.cs" Inherits="WTProject.Admin_viewing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    </div>
        
        
        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick">
            <Items>
                <asp:MenuItem NavigateUrl="~/Admin_ViewAllPosts.aspx" Selected="True" Text="ViewAllPosts" Value="ViewAllPosts"></asp:MenuItem>
                <asp:MenuItem Text="ViewCuisine" Value="ViewByCategory" NavigateUrl="~/Admin_ViewCuisine.aspx"></asp:MenuItem>
                <asp:MenuItem Text="ViewFeedback" Value="ViewFeedback" NavigateUrl="~/Admin_ViewFeedback.aspx"></asp:MenuItem>
                <asp:MenuItem Text="ViewComments" Value="ViewComments" NavigateUrl="~/Admin_ViewComments.aspx"></asp:MenuItem>
                <asp:MenuItem Text="ViewRating" Value="ViewRating" NavigateUrl="~/Admin_ViewRating.aspx"></asp:MenuItem>
                <asp:MenuItem Text="ViewUsers" Value="ViewUsers"></asp:MenuItem>
            </Items>
        </asp:Menu>
        
        
        <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </p>
        
        
    </form>
</body>
</html>
