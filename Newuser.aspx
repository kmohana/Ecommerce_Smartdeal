<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Newuser.aspx.cs" Inherits="Ecommerce_Smartdeal.Newuser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
     <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.js"></script>
    <script src = "https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
    <script src = "https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/additional-methods.js"></script>
    <script src = "https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/additional-methods.min.js"></script>


        <link href="Stylesheets/FormValidation.css" rel="stylesheet" />
    <script src="Scripts/SignupFormValidation.js" type="text/javascript">
    </script>
   
    <style type="text/css">
        
        .auto-style4 {
            margin-left: 0px;
        }
        
        
        table {
                border-collapse: collapse;
            }
        th{
            background-color :white;
            color : #990000;
        }
        
        th, td {
            width:150px;
            text-align:center;
           
            padding:5px
              
            }
        
        
        .auto-style6 {
            width: 150px;
        }
        
        
        .container{
            padding : 16px;
        }
        .clearfix::after{
            content : " ";
            clear : both;
            display : table;
        }
       
        
        .auto-style7 {
            max-width: 1140px;
            min-width: 992px;
            height: 124px;
            width: 542px;
            margin-left: auto;
            margin-right: auto;
            padding: 16px;
        }
        .auto-style8 {
            color: #0000FF;
        }
       
        
        .auto-style9 {
            width: 37%;
            max-width: 1140px;
            min-width: 992px;
            margin-left: auto;
            margin-right: auto;
            padding: 16px;
            height: 680px;
        }
        .auto-style11 {
            width: 117px;
            height: 96px;
        }
        .auto-style12 {
            margin-left: 12;
        }
       
        
    </style>
</head>
<body>
    <form id="signup" runat="server" style="border:1px solid #d3d3d3;">
            
              <div class ="auto-style7">
                     <h1 class="auto-style8"><strong>&nbsp;<img alt="icon" class="auto-style11" src="images/Smar%20Deals%20-%20small.PNG" />Signup form</strong></h1>
                </div>
        <div class ="auto-style9">
                <table class="tblnew">
                <tr>
                <th class="auto-style6">
                    First Name</th>
                <td>
                    <asp:TextBox ID="firstname" name ="firstname" placeholder ="Enter your Firstname"  runat="server" CssClass="auto-style1" Width="380px" MaxLength="25"></asp:TextBox>
                </td>
                </tr>
                <tr>
                <th class="auto-style6">
                    Last Name</th>
                <td>
                    <asp:TextBox ID="lastname" name ="lastname" placeholder ="Enter your Lastname" runat="server" CssClass="auto-style1" Width="380px" MaxLength="20"></asp:TextBox>
                </td>
                </tr>
                <tr>
                 <th class="auto-style6">
                     Email</th>
                <td>
                    
                    <asp:TextBox ID="email"  name ="email" placeholder ="Enter your Email" runat="server" Width="380px" MaxLength="50" ></asp:TextBox>
                </td>
                </tr>
                <tr>
                 <th class="auto-style6">
                    Username</th>
                <td>
                    
                    <asp:TextBox ID="username" name ="username" placeholder ="Set a Username" runat="server" CssClass="auto-style2" Width="380px" MaxLength="25"></asp:TextBox>
                </td>
                </tr>
                <tr>
                <th class="auto-style6">
                    Password</th>
                <td>
                   
                    <asp:TextBox ID="password"  name ="new_pwd1" TextMode="Password"  placeholder ="Set Password" runat="server" CssClass="auto-style3"  Width="378px" MaxLength="10" ValidationGroup="SignInValidate"></asp:TextBox>
                </td>
                </tr>
                <tr>
                <th class="auto-style6">
                    Confirm Password</th>
                <td>
                   
                    <br />
                    <asp:TextBox ID="conf_password" name ="new_pwd1" TextMode="Password" placeholder ="Confirm your Password" runat="server" CssClass="auto-style3" MaxLength="10" Width="380px"></asp:TextBox>
                </td>
                </tr>

                <tr>
                <th class="auto-style6">
                    Mobile Number</th>
                <td>
                    
                    
                    
                    <asp:TextBox ID="mobilenum" name ="mobilenum" runat="server"  placeholder ="Enter Mobile number" CssClass="auto-style4" Height="27px" Width="380px" MaxLength="10" ></asp:TextBox>
                </td>
                </tr>
                <tr>
                <th class="auto-style6">
                    Address</th>
                <td>
                    
                    <asp:TextBox ID="addr" name ="addr" runat="server" placeholder ="Enter complete Address" Height="82px" Width="380px" MaxLength="100" ></asp:TextBox>
                </td>
                </tr>
                <tr>
                <th class="auto-style6">
                    Zip code </th>
                <td>
                    
                    <asp:TextBox ID="zip" name ="zip"  placeholder ="Enter zipcode" runat="server" Width="380px" MaxLength="8" ></asp:TextBox>
                </td>
                </tr>

                </table>
             
                <div class="clearfix" style="width: 544px; height: 101px; margin-top: 38px">
                   &nbsp;<asp:Button ID="reset" value ="reset" runat="server" BackColor="#990000" ForeColor="White" OnClick="Button1_Click1"  Text="Reset" Width="261px" CssClass="auto-style12" />
                    <asp:Button ID="new_cont" runat="server" BackColor="#006600" ForeColor="White" OnClick="Button1_Click" Text="Register" ValidationGroup="SignInValidate" CssClass="auto-style10" Width="270px" />
                </div>
             </div>
    </form>
</body>
</html>
