<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WTProject.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

 <asp:Label ID="Lbl" runat="server" Text='<%#Bind("postsid") %>'></asp:Label>
    
        
<asp:GridView ID="dataGridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" >  
     <AlternatingRowStyle BackColor="White" />  


     <columns> 
         <asp:TemplateField >  
             <ItemTemplate>  
                 <asp:Label ID="LblCompanyId" runat="server" Text='<%#Bind("postsid") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField >  
             <ItemTemplate>  
                 <asp:Label ID="LblCompanyName" runat="server" Text='<%#Bind("posttitle") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         <asp:TemplateField >  
             <ItemTemplate>  
                 <asp:Label ID="LblCompanyAddress" runat="server" Text='<%#Bind("writtencontent") %>'></asp:Label>  
             </ItemTemplate>  
         </asp:TemplateField>  
         
     </columns>  
    </asp:GridView>
    </div>
    </form>
</body>
</html>
