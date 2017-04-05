<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Main_Page.aspx.cs" Inherits="WTProject.Admin_viewing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Menu ID="Menu1" Style="display:inline" runat="server"  Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick">
            <Items>
                <asp:MenuItem NavigateUrl="~/Admin_ViewAllPosts.aspx" Selected="True" Text="Posts" Value="ViewAllPosts" ></asp:MenuItem>
                <asp:MenuItem Text="Cuisine" Value="ViewByCategory" NavigateUrl="~/Admin_ViewCuisine.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Feedback" Value="ViewFeedback" NavigateUrl="~/Admin_ViewFeedback.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Comments" Value="ViewComments" NavigateUrl="~/Admin_ViewComments.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Rating" Value="ViewRating" NavigateUrl="~/Admin_ViewRating.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Users" Value="ViewUsers"></asp:MenuItem>
            </Items>
        </asp:Menu>
        
    </div>    
    </form>
</body>
</html>
