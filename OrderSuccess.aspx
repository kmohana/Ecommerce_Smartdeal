<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site1.Master" AutoEventWireup="true" CodeBehind="OrderSuccess.aspx.cs" Inherits="Ecommerce_Smartdeal.OrderSuccess" %>
<asp:Content ID="Content2" ContentPlaceHolderID="Main_placeholder" runat="server">
    <h1 style="height: 140px">&nbsp;</h1>
    <h1 style="height: 45px; margin-top: 0px">&quot;Order placed Successfully!!&quot;</h1>
    <h3>
        <strong>&nbsp; <span class="auto-style6">&nbsp;
        To continue shopping
        </span>
        <asp:HyperLink ID="lnk_success" runat="server" NavigateUrl="index.aspx" CssClass="auto-style6">Click here</asp:HyperLink>
        </strong>
    </h3>
</asp:Content>
