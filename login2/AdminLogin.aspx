<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="login2.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login Page</title>
    <link href="https://fonts.googleapis.com/css2?family=Baloo+2:wght@700&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Sansita+Swashed:wght@600&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Kalam:wght@700&display=swap" rel="stylesheet">
 
    <style type="text/css">
        @import "https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css";
        body{
            padding: 0;
            margin:0;
            font-family: sans-serif;
         
             background: rgb(242,209,124);
            background: radial-gradient(circle, rgba(242,209,124,1) 0%, rgba(54,219,219,1) 100%);
           
            font-family: 'Baloo 2', cursive;
        }
        .auto-style1{
            width:440px;
            height:320px;
            position: absolute;
            top:50%;
            left:50%;
            transform: translate(-50%,-50%);
            color: white;
            background-color: rgb(37, 36, 36);
             background: linear-gradient(0deg, rgb(85 134 81) 0%, #FF9800 100%);  
            box-shadow: 5px 5px 15px black;
            border-radius:30px 0px 30px 0px ;
        }
        .auto-style1 h1{
            font-size: 30px;
            border-bottom: 3px solid #96e973;
            text-align: center;
            font-family: 'Sansita Swashed', cursive;
            //font-family: 'Kalam', cursive;
            margin-bottom: 50px;
            padding: 13px 10px;
            word-spacing:3px;
        }
        .auto-style2 {
          width: 90%;
        height: 40%;
        margin-left: 50px;
        margin-top: 45px;
        margin-bottom: 28px;
        padding-left: 16px;
        padding-right: 25px
        }
        .auto-style3{
            width: 54%;
            margin: 18px 40px;
            overflow: hidden;
            padding: 5px 0px;
            font-size: 20px;
            border-bottom: 2px solid #96e973 ;        
        }
        
        .auto-style3 #USERID,.auto-style3 #PASSWORD{
            border:none;
            outline:none;
            background: none;
            color:white;
            font-size: 15px;
            width:80%;
            margin:0px 10px;
        }
        .styTr{
            width: 10%;
            margin-left: 10px;
            margin-bottom: 32px;
        }
        td{
            width:44%;
        }
        .row1{
            margin-left:5px;
        }
        .btn{
            width: 90%;
            text-align: center;
            padding: 5px;
            background: none;
            margin-left: 6px;
            font-family: 'Baloo 2', cursive!important;
        }
         .btn input[type='submit']{
             cursor:pointer;
             background: none;
             color:white;
             border:none;
             width:100px;
             padding: 7px 8px;
             margin-top:10px;
             font-size: 15px;
             box-sizing: border-box;
             border: 2px solid #4caf50;
             border-radius:10px ;
             background:linear-gradient(to right,#4caf50, #8bcc8d);
         }
         .btn input[type='submit']:hover{
             color:rgb(104, 76, 202);
             border-radius: 10px;
             font-size: 15px;

         }
         #ImageButton3{
             border-radius:8px;
         }
         #ImageButton4{
             border-radius:8px;
         }
         #GridView1{
             display:none;
         }
          .landing::before{
            content: ""; 
            position: fixed;
             top: 0;
            left: 0;
            width: 100%;
            height: 100%;
background: rgb(242,209,124);
background: radial-gradient(circle, rgba(242,209,124,1) 0%, rgb(85 134 81) 100%);

z-index:-1;


}
           .myButton {
	box-shadow: 3px 4px 0px 0px #899599;
	background:linear-gradient(to bottom, #ededed 5%, #bab1ba 100%);
	background-color:#ededed;
	border-radius:15px;
	border:1px solid #d6bcd6;
	display:inline-block;
	cursor:pointer;
	color:black!important;
    font-weight:bold;
	font-family:Arial;
	font-size:13px;
	padding:7px 25px;
	text-decoration:none;
	text-shadow:0px 1px 0px #e1e2ed;
    margin:5px 10px;
    width:172px;
  
}
           input{
               background:transparent;
              
              font-size:11px;
              color:white;
              font-weight:800;
              border-radius:20px;
           }
.myButton:hover {
	background:linear-gradient(to bottom, #bab1ba 5%, #ededed 100%);
	background-color:#bab1ba;
}
.myButton:active {
	position:relative;
	top:1px;
}
#loading{            /*loader starts*/
            display:flex;
            width:100%;
            height:100vh;
            z-index:9999999;
            position:absolute;
            justify-content:center;
            align-items:center;
            background: #fff no-repeat;
         }
         #ring{
            width:300px;
            height:300px;
            border-radius:50%;
            box-shadow:0 4px 0 #262626;
            background:transparent;
            animation: animate 1s linear infinite;
         }

        @keyframes animate{
            0%{
                transform:rotate(0 deg);
            }
            100%{
                transform:rotate(360deg);
            }
        }
        #text1{
            margin-left:-50px;
            color:black;
            font-family:Verdana;
            font-size:20px;
            font-weight:800;
            margin-left:-180px;
        }    
        .loader {
            width: 48px;
            height: 48px;
            border-radius: 50%;
            display: inline-block;
            position: relative;
            border: 3px solid;
            border-color: rgba(54,219,219,1) rgba(54,219,219,1) transparent;
            box-sizing: border-box;
            animation: rotation 1s linear infinite;
            }
            .loader::after {
            content: '';  
            box-sizing: border-box;
            position: absolute;
            left: 0;
            right: 0;
            padding:5px;
            top: 0;
            bottom: 0;
            margin: auto;
            border: 3px solid;
            border-color: transparent rgba(242,209,124,1) rgba(242,209,124,1);
            width: 24px;
            height: 24px;
            border-radius: 50%;
            animation: rotationBack 0.5s linear infinite;
            transform-origin: center center;
            }

            @keyframes rotation {
                0% {
                    transform: rotate(0deg);
                }
                100% {
                    transform: rotate(360deg);
                }
                } 
                    
                @keyframes rotationBack {
                0% {
                    transform: rotate(0deg);
                }
                100% {
                    transform: rotate(-360deg);
                }
            }
                /*For Loading*/
            .loader1 {
            font-size: 28px;
            padding-left:5px;
            display: inline-block;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            color: #263238;
            box-sizing: border-box;
            text-shadow: 0 0 2px #FFF, 0 0 1px #FFF, 0 0 1px #FFF;
            letter-spacing: 2px;
            position: relative;
            }
            .loader1::after {
            content: 'Loading';
            position: absolute;
            left: 5px;
            top: 0;
            color: rgba(54,219,219,1);
            width: 100%;
            height: 100%;
            overflow: hidden;
            box-sizing: border-box;
            animation: animloader 2s linear infinite;
            }

            @keyframes animloader {
                0% {
                    width: 0%;
                }
                100% {
                    width: 100%;
                }
            }
        /* loader ends */
    </style>
</head>
<body onload="myfunction()">
    <form id="form2" runat="server">
         <div id="loading">
             <!--<div id="ring"></div>
             <div id="text1">LOADING</div>-->
             <span class="loader"></span>
             <span></span>
             <span class="loader1">Loading</span>
         </div>
        <div class="landing">
        <div class="auto-style1">
            <h1>ADMIN LOGIN</h1>
            <table class="auto-style2">
                <tr class="styTr">
                    <td class="row1">
                        <asp:ImageButton ID="ImageButton3" runat="server" Enabled="False" ImageUrl="../Images/nameicon.png" ToolTip="User ID" />
                        User ID </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Please Enter User ID" ForeColor="Yellow" SetFocusOnError="True">Please Enter User ID</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="styTr">
                    <td class="row1">
                        <asp:ImageButton ID="ImageButton4" runat="server" Enabled="False" ImageUrl="../Images/password11icon.png" ToolTip="Password" />
                        Password </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Font-Size="Medium"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Please Enter Password" ForeColor="Yellow" SetFocusOnError="True">Please Enter Password</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="styTr">
                    <td colspan="3" class="btn">
                        <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Sign In" />
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
            <div class="homebutton">
                
                <asp:Button ID="Button3" class="myButton" runat="server" Text="Back to Home Page" CausesValidation="False" PostBackUrl="homepage.aspx"/>
            </div>
            </div>
    </form>
    <script>
        var preloader = document.getElementById('loading');
        function myfunction() {
            preloader.style.display = 'none';
        }
    </script>
</body>
</html>