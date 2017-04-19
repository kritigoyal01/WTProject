<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Main_Page.aspx.cs" Inherits="WTProject.Admin_Main_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 1251px; margin-left:30px" >
        <asp:Menu ID="Menu1" Style="display:inline;font-size:medium; margin:20px;text-align:center;padding:15px; border-bottom:groove" runat="server"  Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick">
            <Items>
                <asp:MenuItem Text="Posts" Value="ViewAllPosts"  NavigateUrl="~/Admin_Posts.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Cuisine" Value="ViewCuisine" NavigateUrl="~/Admin_Cuisine.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Feedback" Value="ViewFeedback" NavigateUrl="~/Admin_Feedback.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Comments" Value="ViewComments" NavigateUrl="~/Admin_Comments.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Rating" Value="ViewRating" NavigateUrl="~/Admin_Rating.aspx"></asp:MenuItem>
                 <asp:MenuItem Text="RatingValue" Value="ViewRatingValue" NavigateUrl="~/Admin_RatingValue.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Users" Value="ViewUsers" NavigateUrl="~/Admin_Users.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Newsletter" Value="Newsletter" NavigateUrl="~/Admin_Newsletter.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Logout" Value="Logout" NavigateUrl="~/Logout.aspx"></asp:MenuItem>
            </Items>
        <StaticMenuItemStyle HorizontalPadding="45px" />
          <StaticSelectedStyle ForeColor="DarkRed" Font-Bold="true"/>
             <StaticHoverStyle ForeColor ="Violet" />  
        </asp:Menu>
        
    </div>    
    </form>
</body>
</html>
