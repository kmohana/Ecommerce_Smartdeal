<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site1.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="Ecommerce_Smartdeal.Category" %>
<asp:Content ID="Content2" ContentPlaceHolderID="Main_placeholder" runat="server">
    <asp:DataList ID="dlCategory" runat="server"  RepeatColumns="3" RepeatDirection="Horizontal" Width="710px" Height="582px" >
    <ItemTemplate>
        <table style="width:100%; height: auto; margin-top: 56px;">
            <tr>
                <td style="height: 20px">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "images/" + Eval("img") %>' />
                </td>
            </tr>
            <tr>
                <td style="height: 29px"><span class="auto-style6"><strong>Name : </strong> </span>
                    <strong>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("product_name") %>'></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td style="height: 26px"><span class="auto-style6"><strong>Price&nbsp; :</strong></span><strong><asp:Label ID="Label2" runat="server" CssClass="auto-style6" Text='<%# Eval("price") %>'></asp:Label>
                    </strong>
                    </td>
            </tr>
            <tr>
                <td style="height: 26px; text-decoration:none; text-align: left">
                    <strong>
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style6" Font-Underline="false" ForeColor="#000066" NavigateUrl='<%# "ProductDetail.aspx?product_id=" + Eval("product_id") %>' style="font-size: medium" Text='<%# "More Details..." %>'></asp:HyperLink>
                    </strong>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
