<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site1.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="Ecommerce_Smartdeal.ProductDetail" %>
<asp:Content ID="Content2" ContentPlaceHolderID="Main_placeholder" runat="server">
    <asp:DataList ID="dlProduct" runat="server" OnSelectedIndexChanged="dlProduct_SelectedIndexChanged" RepeatColumns="3" Height="231px" Width="418px" RepeatDirection="Horizontal" style="margin-top: 10px">
        <ItemTemplate>
            <table style="width:78%; height: 100px; margin-top: 0px;" border="0">
                <tr>
                    <td style="height: 131px; width: 140px">
                        <asp:Image ID="Image1" runat="server" Height="147px" ImageUrl='<%# "images/"+ Eval("img") %>' style="margin-top: 0px" Width="159px" />
                    </td>
                    <td style="height: 131px; width: 144px;"></td>
                </tr>
                <tr>
                    <td style="width: 140px; color: #990000; height: 27px; text-align: center;"><strong>Product :</strong></td> 
                    <td style="width: 144px; height: 27px; text-align: center;">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("product_name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 140px; color: #990000; height: 27px; text-align: center;"><strong>Price :</strong></td>
                    <td style="width: 144px; height: 27px; text-align: center;">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 140px; color: #990000; text-align: center;"><strong>SKU :</strong></td>
                    <td style="width: 144px; text-align: center;">
                        <asp:Label ID="lbl_sku" runat="server" Text='<%# Eval("SKU") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 140px; color: #990000; text-align: center;"><strong>Available Qty :</strong></td>
                    <td style="width: 144px; text-align: center;">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("stock_qty") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 140px; color: #990000; text-align: center;"><strong>Description :</strong></td>
                    <td style="width: 144px; text-align: center;">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("desc") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="color: #990000;">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
     <table>
          <tr>
               <td style="width: 198px; height: 40px; text-align: center;">
                    <strong>Quantity:<asp:TextBox ID="txtqty" runat="server" Height="22px" Width ="72px" style="margin-left: 0px"></asp:TextBox>
                    </strong>
                </td>
         </tr>
          <tr>
               <td style="text-align: center; width: 198px;">
                   <asp:Label ID="lblerror" ForeColor ="Red" runat="server"></asp:Label>
               </td>
         </tr>
          <tr>
               <td style="text-align: center; width: 198px;">
                    <asp:Button ID="btncart" runat="server" OnClick="btncart_Click" Text="Add to Cart" Width="191px" Height="30px" />
               </td>
         </tr>
                              
      </table>
</asp:Content>
