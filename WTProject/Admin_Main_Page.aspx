<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Main_Page.aspx.cs" Inherits="WTProject.Admin_Main_Page" %>

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
                <asp:MenuItem  Text="Posts" Value="ViewAllPosts"  NavigateUrl="~/Admin_Posts.aspx" Selected="True"></asp:MenuItem>
                <asp:MenuItem Text="Cuisine" Value="ViewCuisine" NavigateUrl="~/Admin_Cuisine.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Feedback" Value="ViewFeedback" NavigateUrl="~/Admin_Feedback.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Comments" Value="ViewComments" NavigateUrl="~/Admin_Comments.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Rating" Value="ViewRating" NavigateUrl="~/Admin_Rating.aspx"></asp:MenuItem>
                 <asp:MenuItem Text="RatingValue" Value="ViewRatingValue" NavigateUrl="~/Admin_RatingValue.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Users" Value="ViewUsers" NavigateUrl="~/Admin_Users.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu>
        
    </div>    
    </form>
</body>
</html>
