<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site1.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="Ecommerce_Smartdeal.Category" %>
<asp:Content ID="Content2" ContentPlaceHolderID="Main_placeholder" runat="server">
    <asp:DataList ID="dlCategory" runat="server" OnSelectedIndexChanged="dlCategory_SelectedIndexChanged" RepeatColumns="3" RepeatDirection="Horizontal" Width="710px" Height="582px">
    <ItemTemplate>
        <table style="width:100%; height: auto;">
            <tr>
                <td colspan="2" style="height: 20px">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "images/" + Eval("img") %>' />
                </td>
            </tr>
            <tr>
                <td>Name :
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("product_name") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="height: 26px" colspan="2">Price&nbsp; :<asp:Label ID="Label2" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                    </td>
            </tr>
            <tr>
                <td style="height: 26px; text-align: center" colspan="2">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ProductDetail.aspx?product_id=" + Eval("product_id") %>' Text='<%# "More Details" %>'></asp:HyperLink>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
