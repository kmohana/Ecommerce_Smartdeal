<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="Ecommerce_Smartdeal.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Contact Us</title>
    <style type="text/css">
        
        
        .header{
            font-family :'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-style :normal;
  
        }
        .contact .body{
          
            font-family :'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin : 4px 7px 2px 4px;
            padding : 4px 7px 2px 4px;
        }
        
        
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {}
        
        .auto-style4 {
            text-align: center;
            margin-left: 0px;
        }
        
    </style>
</head>
<body style="width: 514px; height: 612px; margin-left: 497px">
    <form id="form1" runat="server">
        
        <div class ="contact">
        <div class ="header">
             <h2 class="auto-style2">Contact Us</h2>
             <p class="auto-style1">Need assistance ? Please leave ur message below.We wil get back to you at the earliest!!</p>
        </div>
        <div class ="body" style="width: 494px">
        <asp:Label ID="messageus" runat="server" Text="Message" CssClass="auto-style3"></asp:Label>
        <p>
            <asp:TextBox ID="TxtMessage" placeholder ="Type your message" runat="server" CssClass="auto-style4" Height="132px" Width="487px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="name" runat="server" Text="Your name"></asp:Label>
            :</p>
        <p>
            <asp:TextBox ID="username" placeholder ="Enter your username" runat="server" CssClass="auto-style1" Width="487px" Height="33px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="email" runat="server" Text="Email :"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TextBox1" placeholder ="Enter your email" runat="server"  Width="487px" Height="29px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Send" runat="server" Text="Send" BackColor="#3366FF" ForeColor ="White" Height="49px" Width="487px" />
        </p>
       </div>
      </div>
    </form>
</body>
</html>

