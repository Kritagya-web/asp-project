<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="telephonebillpay.aspx.cs" Inherits="login2.telephonebillpay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Telephone Bill Payment</title>
<style type="text/css">
        *{
            padding:0px;
            margin:0px;
        }
        body{
            width:100vw;
            height:100vh;
            color:black;
            background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
          
           background: rgb(242,209,124);
           background: radial-gradient(circle, rgba(242,209,124,1) 0%, #673AB7 100%);
           //background: url("y-so-serious.png") center center content-box;
           background-size: 100% 100%;
           background-repeat: no-repeat;
           font-family: 'Baloo 2', cursive;
           }
        .reg-box{      /*external div*/
            width:600px;
            height: 415px;
            position:absolute;
            top:40%;
            left:50%;  
            color:white;
            transform: translate(-50%,-50%); 
            background: linear-gradient(0deg, rgba(34,193,195,1) 0%, rgb(128,87,198)100%);
            //background: url("y-so-serious-white.png") center center/cover;
            border-radius: 40px 5px 40px 5px;
            box-shadow: 8px 8px 8px rgb(96,61,157);
            cursor: pointer;
            //z-index:-1;
        }
        #Panel1{
            position: absolute;
            left: 550px;
            top: 290px;
            z-index: 11;
        }
        #Button3{
            width:245px;
        }
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
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
.myButton:hover {
	background:linear-gradient(to bottom, #bab1ba 5%, #ededed 100%);
	background-color:#bab1ba;
}
.myButton:active {
	position:relative;
	top:1px;
}
input[type=text]{
            background:transparent;
            width:200px;
            border-radius:3px;
              border-bottom:3px solid rgb(255,165,0);
              border-left:none;
              border-right:none;
              border-top:none;
              color:white;
              text-align:center;
          }
    </style>
</head>
    <link rel="icon" 
      type="image/png" 
      href="../Images/favicon.png" />
<body onload="myfunction()">
    <form id="form1" runat="server">
         <div id="loading">
            <!--<div id="ring"></div>
             <div id="text1">LOADING</div>-->
         <span class="loader"></span>
         <span></span>
         <span class="loader1">Loading</span>
        </div>
   
        <asp:Button ID="Button4" class="myButton" runat="server" Text="Back to Home Page" CausesValidation="False" PostBackUrl="homepage.aspx"/>
                <asp:Button ID="Button7" class="myButton" runat="server" Text="Log Out" CausesValidation="False" PostBackUrl="loginpage.aspx"/>
            
        <div class="auto-style1 reg-box">
            <h3 style="margin-top:35px">Telephone Bill Payment</h3><br />
            <br />
            <table class="auto-style2">
                <tr>
                    <td>Enter Customer ID:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="This is Required" ForeColor="#000099" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Enter Valid Customer ID" ForeColor="#000099" SetFocusOnError="True" ValidationExpression="^(ESB)\d{5}"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="Button1" runat="server" CssClass="myButton" OnClick="Button1_Click" Text="Fetch Details" />
                        <br />
                        <asp:Label ID="Label1" runat="server" ForeColor="#000099"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <div class="auto-style1">
                <asp:Button ID="Button2" runat="server" CssClass="myButton" OnClick="Button2_Click" Text="Balance Check" />
                <br />
                <asp:Label ID="Label2" runat="server" ForeColor="#000099"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button3" runat="server"  CssClass="myButton" Text="" OnClick="Button3_Click" />
                <br />
                <asp:Label ID="Label3" runat="server" ForeColor="#000099"></asp:Label>
                <asp:Label ID="Label4" runat="server"></asp:Label>
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </div>
        </asp:Panel>
    </form>
     <script>
        var preloader = document.getElementById('loading');
        function myfunction() {
            preloader.style.display = 'none';
        }
     </script>
</body>
</html>
