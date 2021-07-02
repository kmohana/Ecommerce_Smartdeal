<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MenuControl.ascx.cs" Inherits="Ecommerce_Smartdeal.MenuControl" %>
<style type="text/css">
    #HyperLink1 {
        
        display: inline-block;
        padding: 2px;
        color: #FFFFFF;
        font-style: oblique;
        text-align: center;
        padding: 14px 16px;
        text-decoration:none;
    
    }
    .auto-style1 {
        text-align: center;
    }
</style>
<div class="auto-style1">
<asp:DataList ID="dlMenu" runat="server" OnSelectedIndexChanged="dlMenu_SelectedIndexChanged" Width="220px" BorderColor="Maroon" BorderWidth="2px" CellPadding="1" CellSpacing="-1" Font-Bold="False" Font-Italic="False" Font-color ="White" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="White" GridLines="Both">
    <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="White" />
    <ItemTemplate>
        <h4><strong>
            <asp:HyperLink ID="HyperLink1" runat="server"  NavigateUrl='<%# "Category.aspx?category_id="+ Eval("category_id") %>' Text='<%# Eval("category_name") %>' Font-Underline="False"></asp:HyperLink>
            </strong></h4>
       
    </ItemTemplate>
</asp:DataList>

</div>


