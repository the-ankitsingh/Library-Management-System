<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style type="text/css">
        body
        {
            margin:0;
            padding:0;
            background-image:url('image/5.png');
            background-size: cover;
            font-family:Sans-Serif;
            
        }
        .loginbox
        {
            position:absolute;
            top:50%;
            left:50%;
            transform:translate(-50%,-50%);
            width: 488px;
            height : 594px;
            padding:80px 40px;
            box-sizing:border-box;
            background:rgba(0,0,0,0.5);
        }
        .user
        {
            width: 100px;
            height : 100px;
            
            overflow:hidden;
            top:calc(-100px/2);
            left:calc(50% - 50px);
            position:absolute;
            
        }
        h2
        {
            padding:0;
            margin:0;
            text-align:center;
            color:rgb(255,217,9);
        }
        .lblemail
        {
            font-weight:bold;
            color:#fff;
        } 
        .lblpass
        {
            font-weight:bold;
            color:#fff;
        }
        .drp
        {
            margin-bottom:20px;
            font-size:20px;
            margin-top: 31px;
            border-radius:20px;
            color:black;
            background-color:Aqua;
        }
        .txtemail
        {
            width:100%;
            margin-bottom:20px;
        }
        .txtpass
        {
            width:100%;
            margin-bottom:20px;
        }
        .btnsub
        {
            width:100%;
            margin-bottom:20px;
            
        }
        .btnfor
        {
            margin-bottom:20px;
        }
         .txtemail, .txtpass
         {
             border:none;
             border-bottom:3px solid #fff;
             outline:none;
             height:40px;
             color:#fff;
             font-size:16px;
             background-color:transparent;
         }
         ::placeholder
         {
             color:rgba(255,255,255,.5);
         }
         .btnsub
         {
             border:none;
             outline:none;
             height:40px;
             font-size:16px;
             color:#fff;
             background-color:pink;
             border-radius:20px;
             margin-top: 29px;

         }
         .btnsub:hover
         {
             background-color:Red;
         }
         .btnfor
         {
             font-size:26px;
             font-weight:700;
             text-decoration:none;
             color:#fff;
         }
         .btnforget:hover
         {
             text-decoration:underline;
             color:Yellow;
             
         }
    </style>
</head>
<body>
    <div class="loginbox">
    <img src="image/6.png" class="user" />
    <h2>Login Here</h2>
    <form runat="server">
    <asp:Label ID="Label1" runat="server" Text="Username" CssClass="lblemail"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="txtemail"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="Password" CssClass="lblpass"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="txtpass"></asp:TextBox>
    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="drp">
    <asp:ListItem>-- Enter Your Designation--</asp:ListItem>
    <asp:ListItem>Admin</asp:ListItem>
     <asp:ListItem>User</asp:ListItem>
      <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btnsub" 
        onclick="Button1_Click"/>
    <asp:LinkButton Text="forget password" runat="server" CssClass="btnfor"></asp:LinkButton>
    </form>
    </div>
</body>
</html>
