<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site1.Master" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="Ecommerce_Smartdeal.Success" %>
<asp:Content ID="Content2" ContentPlaceHolderID="Main_placeholder" runat="server">
    <p>
        Successfully Registered!!!
        <asp:HyperLink ID="hyp_login" runat="server" NavigateUrl="Login.aspx">Please Login to continue</asp:HyperLink>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
