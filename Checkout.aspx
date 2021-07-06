<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site1.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Ecommerce_Smartdeal.Checkout" %>
<asp:Content ID="Content2" ContentPlaceHolderID="Main_placeholder" runat="server">
    <div style="text-align: center; width: 812px;">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="3" DataSourceID="SqlDataSource2" Height="16px" style="margin-top: 33px" Width="619px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
            <Columns>
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="zipcode" HeaderText="zipcode" SortExpression="zipcode" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnection %>" SelectCommand="SELECT [username], [mobile], [address], [zipcode] FROM [user_details] WHERE ([username] = @username)">
            <SelectParameters>
                <asp:SessionParameter Name="username" SessionField="id" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="cart_id"  AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" style="margin-top: 13px" Width="618px" Height="37px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnection %>" SelectCommand="SELECT * FROM [shopping_cart] WHERE ([session_id] = @session_id)">
        <SelectParameters>
            <asp:SessionParameter Name="session_id" SessionField="id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <table style="width:88%;">
        <tr>
            <td style="text-align: left; height: 32px; width: 619px;">
                <strong><em><span class="auto-style6">
                <br />
                Save with below&nbsp; Offers :<br />
                </span></em></strong><br />
                <asp:RadioButtonList ID="RdoOffers" runat="server" AutoPostBack="True" CssClass="auto-style6" >
                    <asp:ListItem>Credit Card 10%</asp:ListItem>
                    <asp:ListItem>UPI offer 3%</asp:ListItem>
                    <asp:ListItem>Get 5% discount on orders above $1000</asp:ListItem>
                </asp:RadioButtonList>
                <br />
            </td>
        </tr>
        <tr>
            <td style="text-align: left; height: 28px; width: 619px;">
                <strong>
                    <asp:Label ID="lbl_total" runat="server" Text="Order Total =" CssClass="auto-style6"></asp:Label>
                    </strong>
                    <span class="auto-style6"><strong>&nbsp;$</strong></span><strong><asp:Label ID="total" runat="server" style="color: #000000" CssClass="auto-style6"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td style="width: 619px; text-align: left; height: 29px;">
                <strong><span class="auto-style6">Order Total after discount = $</span><asp:Label ID="LblOff" runat="server" CssClass="auto-style6"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td style="width: 619px; text-align: left;">
               <asp:Button ID="btn_placeorder" runat="server" OnClick="Btn_placeorder_Click" Text="Place Order" Height="47px" Width="247px" BackColor="#006600" ForeColor="White" />
            </td>
        </tr>
    </table>
</asp:Content>
