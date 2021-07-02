<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site1.Master" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="Ecommerce_Smartdeal.ViewCart" %>
<asp:Content ID="Content2" ContentPlaceHolderID="Main_placeholder" runat="server">

    <table style="width: 58%;">
        <tr>
            <td style="text-align: right">
                <div style="text-align: center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True" Height="114px" style="margin-left: 0px; margin-top: 65px;" Width="563px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Product_id">
                            <EditItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("product_id") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("product_id") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Description">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("description") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Price">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("price") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Quantity">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("quantity") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Operations">
                            <EditItemTemplate>
                                <div style="text-align: left">
                                    <asp:LinkButton ID="Update" runat="server" CommandName="Update">Update</asp:LinkButton>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:LinkButton ID="Cancel" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                                </div>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="Edit" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                                &nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="Delete" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                 
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:MyConnection %>" DeleteCommand="DELETE FROM [shopping_cart] WHERE [cart_id] = @original_cart_id AND (([session_id] = @original_session_id) OR ([session_id] IS NULL AND @original_session_id IS NULL)) AND (([product_id] = @original_product_id) OR ([product_id] IS NULL AND @original_product_id IS NULL)) AND (([desc] = @original_desc) OR ([desc] IS NULL AND @original_desc IS NULL)) AND (([quantity] = @original_quantity) OR ([quantity] IS NULL AND @original_quantity IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL))" InsertCommand="INSERT INTO [shopping_cart] ([session_id], [product_id], [desc], [quantity], [price]) VALUES (@session_id, @product_id, @desc, @quantity, @price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [cart_id], [session_id], [product_id], [description], [quantity], [price] FROM [shopping_cart]" UpdateCommand="UPDATE [shopping_cart] SET [session_id] = @session_id, [product_id] = @product_id, [desc] = @desc, [quantity] = @quantity, [price] = @price WHERE [cart_id] = @original_cart_id AND (([session_id] = @original_session_id) OR ([session_id] IS NULL AND @original_session_id IS NULL)) AND (([product_id] = @original_product_id) OR ([product_id] IS NULL AND @original_product_id IS NULL)) AND (([desc] = @original_desc) OR ([desc] IS NULL AND @original_desc IS NULL)) AND (([quantity] = @original_quantity) OR ([quantity] IS NULL AND @original_quantity IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_cart_id" Type="Int32" />
                        <asp:Parameter Name="original_session_id" Type="String" />
                        <asp:Parameter Name="original_product_id" Type="Int32" />
                        <asp:Parameter Name="original_desc" Type="String" />
                        <asp:Parameter Name="original_quantity" Type="Int32" />
                        <asp:Parameter Name="original_price" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="session_id" Type="String" />
                        <asp:Parameter Name="product_id" Type="Int32" />
                        <asp:Parameter Name="desc" Type="String" />
                        <asp:Parameter Name="quantity" Type="Int32" />
                        <asp:Parameter Name="price" Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="session_id" Type="String" />
                        <asp:Parameter Name="product_id" Type="Int32" />
                        <asp:Parameter Name="desc" Type="String" />
                        <asp:Parameter Name="quantity" Type="Int32" />
                        <asp:Parameter Name="price" Type="Decimal" />
                        <asp:Parameter Name="original_cart_id" Type="Int32" />
                        <asp:Parameter Name="original_session_id" Type="String" />
                        <asp:Parameter Name="original_product_id" Type="Int32" />
                        <asp:Parameter Name="original_desc" Type="String" />
                        <asp:Parameter Name="original_quantity" Type="Int32" />
                        <asp:Parameter Name="original_price" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:Label ID="Label6" runat="server"></asp:Label>
     <asp:Button ID="btn_checkout" runat="server" Height="33px"  Text="Checkout" Width="207px" style="margin-left: 157px" OnClick="btn_checkout_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
