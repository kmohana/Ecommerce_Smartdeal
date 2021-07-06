<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MenuControl.ascx.cs" Inherits="Ecommerce_Smartdeal.MenuControl" %>
<style type="text/css">
    #HyperLink1 {
        
        display: inline-block;
        padding: 2px;
        font-style: oblique;
        text-align: center;
        padding: 14px 16px;
        background-color : #834333;
    }

    .auto-style1 {
        text-align: center;
    }
    .auto-style2 {
        font-weight: normal;
    }
</style>
<div class="auto-style1">
    <em>
<asp:DataList ID="dlMenu" runat="server" Width="220px" BorderColor="White" BorderWidth="2px" CellPadding="1" CellSpacing="-1" Font-Bold="False" Font-Italic="False" Font-color ="White" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="White" GridLines="Both" BackColor="Brown">
    <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="White" />
    <ItemTemplate>
        <h4><em>
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style2" Font-Underline="False" ForeColor="White" NavigateUrl='<%# "Category.aspx?category_id="+ Eval("category_id") %>' Text='<%# Eval("category_name") %>'></asp:HyperLink>
            </em></h4>
       
    </ItemTemplate>
</asp:DataList>

</div>


