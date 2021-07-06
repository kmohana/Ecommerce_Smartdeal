<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site1.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="Ecommerce_Smartdeal.ProductDetail" %>
<asp:Content ID="Content2" ContentPlaceHolderID="Main_placeholder" runat="server">
    <asp:DataList ID="dlProduct" runat="server"  RepeatColumns="3" Height="231px" Width="418px" RepeatDirection="Horizontal" style="margin-top: 10px">
        <ItemTemplate>
            <table style="width:93%; height: 305px; margin-top: 47px;" border="0">
                <tr>
                    <td style="height: 131px; width: 130px">
                        <asp:Image ID="Image1" runat="server" Height="166px" ImageUrl='<%# "images/"+ Eval("img") %>' style="margin-top: 0px" Width="185px" />
                    </td>
                    <td style="height: 131px; width: 144px;"></td>
                </tr>
                <tr>
                    <td style="width: 130px; color: #000066; height: 27px; text-align: center;" class="auto-style6"><strong>Product :</strong></td> 
                    <td style="width: 144px; height: 27px; text-align: center;">
                        <strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("product_name") %>'></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td style="width: 130px; color: #000066; height: 27px; text-align: center;" class="auto-style6"><strong>Price :</strong></td>
                    <td style="width: 144px; height: 27px; text-align: center;">
                        <strong>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style6" Text='<%# Eval("price") %>'></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td style="width: 130px; color: #000066; text-align: center;" class="auto-style6"><strong>SKU :</strong></td>
                    <td style="width: 144px; text-align: center;">
                        <strong>
                        <asp:Label ID="lbl_sku" runat="server" CssClass="auto-style6" Text='<%# Eval("SKU") %>'></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td style="width: 130px; color: #000066; text-align: center;" class="auto-style6"><strong>AvailableQty:</strong></td>
                    <td style="width: 144px; text-align: center;">
                        <strong>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text='<%# Eval("stock_qty") %>'></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" style="width: 130px; color: #000066; text-align: center;"><strong>Description :</strong></td>
                    <td style="width: 144px; text-align: center;"><strong>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Text='<%# Eval("desc") %>'></asp:Label>
                        </strong></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
     <table style="margin-left: 13px">
          <tr>
               <td style="width: 394px; height: 40px; text-align: center;">
                    <span class="auto-style6" style="color: #000066"><strong>&nbsp; Quantity</strong></span><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtqty" runat="server" Height="22px" Width ="99px" style="margin-left: 49px; font-weight: bold;" CssClass="auto-style6"></asp:TextBox>
                    </strong>
                </td>
         </tr>
          <tr>
               <td style="text-align: center; width: 394px; height: 26px;">
                   <h3>
                   <asp:Label ID="lblerror" ForeColor ="#990000" runat="server" CssClass="auto-style6"></asp:Label>
                   </h3>
               </td>
         </tr>
          <tr>
               <td style="text-align: center; width: 394px; height: 43px;">
                    <strong>
                    <asp:Button ID="btncart" runat="server" OnClick="Btncart_Click" Text="Add to Cart" Width="230px" Height="39px" BackColor="#CCCCCC" style="font-weight: bold" />
                    </strong>
               </td>
         </tr>
                              
      </table>
</asp:Content>
