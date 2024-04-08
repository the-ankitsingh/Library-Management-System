<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
    <style type="text/css">
        *
        {
            margin:0;
            padding:0;
            font-family:Sans-Serif;
        }
        .banner
        {
            width:100%;
            height:100vh;
            background-image:linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),url("image/1.png");
            background-size: cover;
            background-position:center;
        }
        .navbar
        {
            width:85%;
            margin:auto;
            padding:35px 0;
            display:flex;
            align-items:center;
            justify-content:space-between;
        }
        .logo
        {
            width:120px;
            cursor:pointer;
        }
        .navbar ul li
        {
            list-style:none;
            display:inline-block;
            margin:0 20px;
            position:relative;
        }
        .navbar ul li a
        {
            text-decoration:none;
            color:#fff;
            text-transform:uppercase;
        }
         .navbar ul li::after
         {
             content:'';
             height:3px;
             width:0;
             background:#009688;
             position:absolute;
             left:0;
             bottom:0;
             transition:0.5s;
         }
         .navbar ul li:hover::after
         {
             width:100%;
         }
         .content
         {
             width:100%;
             position:absolute;
             top:50%;
             transform:translateY(-50);
             text-align:center;
             color:#fff;
         }
         .content h1
         {
             font-size:60px;
             margin-top:-50px;
             
         }
         .content p
         {
             margin:20px auto;
             font-weight:100;
             line-height:25px;
         }
         button
         {
             width:200px;
             padding:15px 0;
             text-align:center;
             margin:20px;
             border-radius:25px;
             font-weight:bold;
             border:2px solid #009688;
             background:transparent;
             color:#fff;
             cursor:pointer;
             position:relative;
             overflow:hidden;
         }
         span
         {
             background:#009688;
             height:100%;
             width:0;
             border-radius:25px;
             position:absolute;
             left:0;
             bottom:0;
             transition:0.5s;
             
         }
         button:hover span
         {
            width:100%; 
         }
          button:hover
          {
              border:none;
          }
        
    </style>
</head>
<body>
    <div class="banner">
    <div class="navbar">
    <img src="image/3.png"  class="logo" />
    <ul>
    <li><a href="">Home</a></li>
    <li><a href="">About</a></li>
    <li><a href="">Feedback</a></li>
    <li><a href="">Contact</a></li>
    </ul>
    </div>
    <div class="content">
    <h1>Library Management System</h1>
    <p>An integrated library management system (LMS) is ERP </p>
    <p>software that helps in simplifying the daily operations of the library. The purpose of a library management system is to manage & track the daily work </p>
    

    <div>
   <a href="login.aspx"> <button type="button"><span></span>LOG IN</button></a>
      <a href="registration.aspx"> <button type="button"><span></span>REGISTER</button></a>
    </div>
    </div>
    
    </div>
</body>
</html>
