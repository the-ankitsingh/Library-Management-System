<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bookupdate.aspx.cs" Inherits="bookupdate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style type="text/css">
        * 
        {
            margin:0px;
            padding:0px;
            }
       #header 
       {
             background-color: aqua;
    width: 79vw;
    margin-left: 371px;
    height: 4vh;
    display: block;
           }
       #header h2
       {
        padding:5px;
        font-family:Verdana;
        font-size:16pt;   
           }
       #section.left-panel
       {
             height: 100vh;
    width: 19vw;
    background-color: brown;
    display: block;
    margin-top: -48px;
           }
     
      img#Image1 
      {
    margin-top: 15px;
    margin-left: 20px;
          }
    span#Label1 
    {
        display: block;
    margin-left: 105px;
    color: white;
    font-size: 21pt;
    margin-top: -49px;
    font-family: sans-serif;
        }
     span#Label2 
    {
        display: block;
    margin-left: 155px;
    color: white;
    font-size: 20pt;
    font-family: sans-serif;
        }
    div.item1 
    {
        margin-top:175px;
        margin-left:15px;
        }
     div.item2 
    {
        margin-top:20px;
        margin-left:15px;
        }
     div.item3 
    {
        margin-top:20px;
        margin-left:15px;
        }
     div.item4 
    {
        margin-top:20px;
        margin-left:15px;
        }
     a#LinkButton1 
     {
    display: block;
    margin-top: -30px;
    margin-left: 70px;
    font-size: 21pt;
    color: white;
    font-family: verdana;
    text-decoration: none;
         }
     a#LinkButton2 
     {
    display: block;
    margin-top: -26px;
    margin-left: 70px;
    font-size: 21pt;
    color: white;
    font-family: verdana;
    text-decoration: none;
         }
     a#LinkButton3 
     {
    display: block;
    margin-top: -28px;
    margin-left: 70px;
    font-size: 21pt;
    color: white;
    font-family: verdana;
    text-decoration: none;
         }
     a#LinkButton4 
     {
    display: block;
    margin-top: -28px;
    margin-left: 70px;
    font-size: 21pt;
    color: white;
    font-family: verdana;
    text-decoration: none;
         }
    a#LinkButton8 
     {
    position:absolute;
    margin-top: 10px;
    margin-left: 15px;
    font-size: 21pt;
    color: white;
    font-family: verdana;
    text-decoration: none;
         }
    div.item5 
    {
        margin-top:140px;
        margin-left:15px;
        }
    img#Image6 
    {
         width: 65vh;
    height: 11vw;
    position: absolute;
    display: flex;
    margin-top: -575px;
    margin-left: 815px;
        }
   span#Label3 {
      position: absolute;
    display: inline-block;
    margin-top: -400px;
        margin-left: 470px;
    font-size: 26pt;
    color: darkblue;
   }
   input#TextBox1
   {
       position: absolute;
    display: inline-block;
    margin-top: -349px;
    margin-left: 417px;
    border: 4px solid pink;
    width: 238px;
    height: 28px;
    padding-left: 25px;
       }
   span#Label4 {
  position: absolute;
    display: inline-block;
    margin-top: -187px;
    margin-left: 462px;
    font-size: 23pt;
    color: blue;
    font-weight: bold;
   }
   input#TextBox2
   {    position: absolute;
    display: inline-block;
    margin-top: -143px;
    margin-left: 412px;
    border: 5px solid pink;
    width: 266px;
    height: 28px;
    padding-left: 6px;
       }
    span#Label5 {
   position: absolute;
       position: absolute;
    display: inline-block;
    margin-top: 26px;
    margin-left: 468px;
    font-size: 28pt;
    color: blue;
    font-weight: bold;
   }
   input#TextBox3
   {
          position: absolute;
    display: inline-block;
    margin-top: 82px;
    margin-left: 414px;
    border: 4px solid pink;
    width: 261px;
    height: 28px;
    padding-left: 6px;
       }
    span#Label6 {
     position: absolute;
    display: inline-block;
    margin-top: -297px;
    margin-left: 476px;
    font-size: 24pt;
    color: blue;
    font-weight: bold;
   }
   input#TextBox4
   {
       position: absolute;
    display: inline-block;
    margin-top: -250px;
    margin-left: 410px;
    border: 4px solid pink;
    width: 270px;
    height: 28px;
    padding-left: 6px;
       }
    span#Label7 {
  position: absolute;
    display: inline-block;
    margin-top: -78px;
    margin-left: 503px;
    font-size: 32pt;
    color: blue;
    font-weight: bold;
   }
   input#TextBox5
   {
       position: absolute;
    display: inline-block;
    margin-top: -21px;
    margin-left: 413px;
    border: 4px solid pink;
    width: 264px;
    height: 28px;
    padding-left: 6px;
       }
   input#Button1 
    {
          display: inline-block;
    position: absolute;
    margin-left: 481px;
    width: 222px;
    height: 48px;
    margin-top: 212px;
    background-color: blue;
    border: none;
    color: white;
    border-radius: 24px
        }
    input#Button1:hover 
    {
       
    background-color:orange;
   cursor:pointer;
        }
    input#Button2 
    {
          display: inline-block;
    position: absolute;
    margin-left: 710px;
    width: 122px;
    height: 42px;
    margin-top: 153px;
    background-color: green;
    border: none;
    color: white;
    border-radius: 24px;
        }
    input#Button2:hover 
    {
       
    background-color:orange;
   cursor:pointer;
        }
    input#Button3 
    {
           display: inline-block;
    position: absolute;
    margin-left: 528px;
    width: 154px;
    height: 42px;
    margin-top: 153px;
    background-color: magenta;
    border: none;
    color: white;
    border-radius: 38px;
        }
    input#Button3:hover 
    {
       
    background-color:orange;
   cursor:pointer;
        }
    input#Button4 
    {
          display: inline-block;
    position: absolute;
    margin-left: 383px;
    width: 135px;
    height: 37px;
    margin-top: 154px;
    background-color: red;
    border: none;
    color: white;
    border-radius: 34px;
        }
    input#Button4:hover 
    {
       
    background-color:orange;
   cursor:pointer;
        }
    div.grid {
   position: absolute;
    display: inline-block;
    margin-left: 474px;
    margin-top: -120px;
   }
   table#GridView1
   {
   color: Black;
    width: 128vh;
    text-align: center;
   }
   table#GridView1 tbody tr th
   {
   height:30px;
   }
    table#GridView1 tbody tr td
   {
   height:25px;
   }
   h5 
   {
      position: absolute;
    margin-top: 330px;
    font-size: 14pt;
    margin-left: 785px;
    color: red;
    font-weight: bold;
       }
         </style>
</head>
<body>
    <form id="form1" runat="server">
     <div id="header">
    <center>
    <h2> Book</h2>
    </center>
    </div>
    <div id="section" class="left-panel">
        <asp:Panel ID="Panel1" runat="server">
            <asp:Image ID="Image1" runat="server" Height="48px" 
                ImageUrl="image/21.gif" Width="58px" />
    <div class="content1">
        <asp:Label ID="Label1" runat="server" Text="Library Management"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="System"></asp:Label>
    </div>
   <div class="item1">
     <asp:Image ID="Image2" runat="server" Height="40px" 
                ImageUrl="image/22.gif" Width="50px" />
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/register.aspx">User Register</asp:LinkButton>
    </div>
    <div class="item2">
     <asp:Image ID="Image3" runat="server" Height="40px" 
                ImageUrl="image/23.gif" Width="50px" />
      <asp:LinkButton ID="LinkButton2" runat="server" 
            PostBackUrl="~/StudentDetail.aspx">Book Detail</asp:LinkButton>
    </div>
    <div class="item3">
     <asp:Image ID="Image4" runat="server" Height="40px" 
                
            ImageUrl="image/24.gif" 
            Width="50px" />
     <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/booksdetails.aspx">Books Update</asp:LinkButton>
    </div>
    <div class="item4">
     <asp:Image ID="Image5" runat="server" Height="40px" 
                ImageUrl="image/25.png"  Width="50px" />
     <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/issuebook.aspx">Book Delete</asp:LinkButton>
    </div>
        </asp:Panel>
     <div class="item5">
     <asp:Image ID="Image9" runat="server" Height="40px" 
                ImageUrl="image/27.gif" Width="50px" />
     <asp:LinkButton ID="LinkButton8" runat="server" PostBackUrl="~/homeadmin.aspx">Go Back</asp:LinkButton>
    </div>
    <div id="section-2">
        <asp:Image ID="Image6" runat="server" 
            ImageUrl="image/30.png"  />
        <asp:Label ID="Label3" runat="server" Text="Book_Name"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
         <asp:Label ID="Label4" runat="server" Text="Category"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Text="Author"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Text="Isbn"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
         <asp:Label ID="Label7" runat="server" Text="Price"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
       
        <asp:Button ID="Button2" runat="server" Text="DELETE" onclick="Button2_Click" />
        <asp:Button ID="Button4" runat="server" Text="SEARCH" onclick="Button4_Click" />
    </div>
     <div class="grid">
      <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" EnableTheming="True" ForeColor="black" 
            HorizontalAlign="Center" CellPadding="20" CellSpacing="40" PageSize="15">
            <AlternatingRowStyle BackColor="white" />
            <HeaderStyle BackColor="green" Font-Bold="true" Font-Size="medium" ForeColor="white" />
            <RowStyle BackColor="#f5f5f5" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="true" ForeColor="white" /> 
        </asp:GridView>
    </div>
    </div>
    </form>
</body>
</html>
