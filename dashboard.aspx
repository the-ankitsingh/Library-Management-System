<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="dashboard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <style type="text/css">
        *
        {
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:josefin Sans Serif Collection;
           
        }
        header
        {
            width:100%;
            height:100vh;
            background-image:url('image/20.png');
            background-repeat:no-repeat;
            background-size:100% 100%;
           
        }
        .mainheader
        {
            width:98%;
            height:98px;
            display:flex;
            justify-content:space-between;
            align-items:center;
        }
        .mainheader .logo img
        {
            width:250px;
            height:249px;
            padding-left:13px;
            margin-top: 155px;
        }
        .mainheader nav
        {
            width:450px;
            display:flex;
            justify-content:space-around;
            align-items:center;
          
        
        }
        .mainheader nav a
        {
            text-decoration:none;
            color:Black;
            text-transform:uppercase;
            padding: 80px;
            font-size: 30px;
            color:red;
            border:3px solid yellow;
            margin-top:156px;
       
        }
        .menubtn
        {
            margin-right:60px;
        }
        .mainheader button
        {
            padding:10px 45px;
            text-align:center;
            font-size:14px;
            color:#fff;
            border:none;
            background-image: linear-gradient(to right,#649bff,#0070fa,#649bff); 
            cursor:pointer;
            border-radius:10px;
            padding-left:50px;
        }
        main
        {
            
            width:98%;
           
            display:flex;
            justify-content:space-between;
            align-items:center;
            
            margin-top: 96px;
            margin-left: 29px;

        }
        main .right-sec
        {
            padding-right:70px;
        }
        main .left-sec
        {
            padding-left:100px;
        }
        .left-sec h2
        {
            font-size:40px;
            text-transform:capitalize;
            font-weight:lighter;
            color:Maroon;
            margin-top:100px;
        }
        .left-sec h1
        {
            font-size:55px;
            font-weight:700;
            text-transform:capitalize;
            margin-top:12px;
        }
        .left-sec p
        {
            margin-bottom:20px;
        }
         .left-sec button
         {
             
            padding:15px 45px;
            text-align:center;
            font-size:20px;
            color:#fff;
            border:none;
            background-image: linear-gradient(to right,#649bff,#0070fa,#649bff); 
            cursor:pointer;
            border-radius:10px;
            padding-left:50px;
         }
    </style>
</head>
<body>
    <header>
    <div class="mainheader">
    <div class="logo">
    <img src="image/16.png" />
    </div>

    <nav>
    <a href="">Home</a>
     <a href="">Issue Book</a>
      <a href="">Books</a>
       <a href="">Student</a>
    </nav>

    <div class="menubtn">
    <button>Help</button>


    </div>
    </div>

    <main>
    <section class="left-sec">
    <h2>This Is The DashBoard</h2>
    <h1>Library Management System</h1>
    <p>An integrated library management system (LMS) is ERP software that helps in </p>
    <p>simplifying the daily operations of the library.</p>
    <button>Click Here</button>
    </section>
    <section class="right-sec">
    <figure>
    <img src="image/19.png" />
    </figure>
    </section>
    </main>
    </header>
</body>
</html>
