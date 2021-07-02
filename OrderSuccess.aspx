<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site1.Master" AutoEventWireup="true" CodeBehind="OrderSuccess.aspx.cs" Inherits="Ecommerce_Smartdeal.OrderSuccess" %>
<asp:Content ID="Content2" ContentPlaceHolderID="Main_placeholder" runat="server">
    <h1>&quot;Order placed Successfully!!&quot;</h1>
    <p>
        To continue shopping
        <asp:HyperLink ID="lnk_success" runat="server" NavigateUrl="index.aspx">Click here</asp:HyperLink>
    </p>
</asp:Content>
