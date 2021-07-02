<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Ecommerce_Smartdeal.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
    <script src="Scripts/LoginFormValidation.js" type="text/javascript"></script>
   

    <style type="text/css">
        
        .auto-style12 {
            text-decoration: none;
            color: #99CCFF;
        }
              
     
        input:hover {
            box-shadow: 0 0 5px 1px blue;
        }


        .auto-style13 {
            width: 195px;
            height: 174px;
        }
              


        .auto-style14 {
            font-size: medium;
        }
              


    </style>
</head>
<body class="auto-style2">

    <form id="form_login" runat="server">

    
        <asp:Panel ID="Login" runat="server" CssClass="auto-style8" Height="604px" Width="491px"  BorderColor="White" style="margin-left: 481px; margin-bottom: 0px;">
            <div class ="head">
            <img alt="small logo" class="auto-style13" src="images/Smar%20Deals%20-%20small.PNG" />
            <h2 class="auto-style10">
                Welcome!!!</h2>
                <p class="auto-style11">
                    Don&#39;t miss!! Sign in to stay tuned to updates &amp; offers!!!</p>
            
             </div>
        
            <div class="auto-style9">
                    <asp:Label ID="Label1" runat="server" style="text-align: left; font-size: medium; color: #FFCC66;" placeholder="Enter your username" ForeColor="White"></asp:Label><br />
                    <asp:TextBox ID="Login_user" runat="server" BackColor="White" CssClass="auto-style5" Height="36px" Width="481px" ForeColor="Silver" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            </div>

            <div>
                <div class="auto-style4">
                <asp:Label ID="Label2" runat="server" style="font-size: medium; color: #FFCC66; text-align: left" placeholder="Enter your password" ForeColor="White"></asp:Label><br />
                <p>
                <asp:TextBox ID="Login_Password" TextMode ="Password" runat="server" CssClass="auto-style3" Height="36px" Width="436px" ForeColor="Silver"></asp:TextBox>
                    <button id="show_password" class="btn btn-primary" type="button">
                        <span class="fa fa-eye-slash icon"></span>
                    </button>
                </p>
                </div>  
            </div>

        <p>
            <asp:Button ID="Login_button" runat="server" BackColor="#3366FF" ForeColor="White" Height="48px" Text="Log In" Width="481px" OnClick="Login_button_Click" CssClass="auto-style14" />
        </p>
        <p>
            <span class="auto-style11">New User?</span><a class="auto-style7" href="Newuser.aspx">Sign up here</a></p>
        
        </asp:Panel>
    </form>
</body> 
</html>

