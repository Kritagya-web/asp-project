<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="login2.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://fonts.googleapis.com/css2?family=Baloo+2:wght@700&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Sansita+Swashed:wght@600&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
     <link href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2:wght@700&display=swap" rel="stylesheet"/>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
   
    <title> Registeration Page- ESB</title>
    <script>
        function getModal() {
            p = document.getElementById('myModal');
          
            p.innerText = "You have been registered successfully.";
    </script>
    <style>
         *{
            padding:0px;
            margin:0px;
        }
        body{
            width:100vw;
            height:100vh;
            background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
          
           background: rgb(242,209,124);
           background: radial-gradient(circle, rgba(242,209,124,1) 0%, rgba(54,219,219,1) 100%); 
           background-size:100% 100% ;
            background-repeat: no-repeat;
            font-family: 'Baloo 2', cursive;
           }
        .reg-box{      /*external div*/
            width:600px;
            height: 450px;
            position:absolute;
            top:50%;
            left:50%;  
            color:white;
            transform: translate(-50%,-50%); 
            background: linear-gradient(0deg, rgba(34,193,195,1) 0%, rgba(161,117,24,1) 100%);  
            border-radius: 40px 5px 40px 5px;
            box-shadow: 8px 8px 8px rgba(201, 104, 13, 0.788);
            cursor:pointer;
        }
          .user{     /* image*/
            width:150px;
            height:150px;
            position: absolute;
            border-radius: 50%;
            overflow: hidden;
            top:calc(-150px/2);
            left:calc(46% - 50px);
        }
          .reg-box h2{                /* heading*/
            box-sizing: border-box;
            display: block;
            width:100%;
            float:left;
            margin-top: 90px;
            text-align: center;
            padding-bottom: 10px;
            color:white;
            border-bottom: 3px solid orange;
            border-radius: 4px;
            text-shadow: 5px 5px 20px rgb(15, 15, 15);
            margin-bottom: 10px;
            font-family: 'Sansita Swashed', cursive;
        }/*
          .table1{
              display: block;
              
          }
          .table1 tr{
              margin:10px 0px;
          }*/
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
         
           input[type=password]{
              background:transparent;
              width:200px;
              border-radius:3px;
              border-bottom:3px solid rgb(255,165,0);
              border-left:none;
              border-right:none;
              text-align:center;
              border-top:none;
              color:white;
          }
          
         
           #Button1{
               height: 30px;
               width: 150px;
               border: 2px solid white;
               font-size: 17px;
               text-align: center;
               margin-left: 208px;
               margin-top: 20px;
               border-radius: 10px;
               background-color: orange;
               color: white;
               font-family: 'Baloo 2', cursive !important;
           }
           #label5{
               color:white;
               font-size:20px;
           }
        .auto-style1 {
            text-align:center;
        }
        .table td{
            padding:0.6rem;
        }
        ::-webkit-input-placeholder{
            color:orange;
            font-size:14px;
            font-family:  'Sansita Swashed', cursive !important;
        }.table1{
             color:white;
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
        <div class="reg-box">
            <img src="../Images/usericon.jpg" alt=""  class="user" />
            <h2>Registration Form</h2>
            &nbsp;<br />
            <table class="table1 table">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label4" runat="server" Text="Customer_id " Font-Italic="True" ToolTip="enter the customer-id"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="20px" placeholder="Enter CustomerID"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Enter valid Customer ID" Font-Bold="True" Font-Italic="True" ForeColor="Cyan" SetFocusOnError="True" ValidationExpression='^(ESB)\d{5}'></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter CustomerID" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="cyan"  Font-Italic="True" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
               
                 <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="Account No." ToolTip="enter account number" Font-Italic="True"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="20px"  placeholder="Enter Account No."></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter valid Account Number " ControlToValidate="TextBox2" Display="Dynamic" Font-Bold="True" Font-Italic="True" ForeColor="Cyan" SetFocusOnError="True" ValidationExpression='\d{10}'></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Account No."  ControlToValidate="TextBox2" Display="Dynamic" Font-Bold="True" Font-Italic="True" ForeColor="Cyan" SetFocusOnError="True"></asp:RequiredFieldValidator>
                       
                        </td> 
                </tr>
                 <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Password " Font-Italic="True" ToolTip="enter password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"  Height="20px" TextMode="Password" placeholder="Enter password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Please Enter password"  ForeColor="cyan" Font-Bold="True" Font-Italic="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                       
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Please Select password as per our policy" Font-Bold="True" Font-Italic="True" ForeColor="Cyan" SetFocusOnError="True" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label3" runat="server" Text="Confirm Password " Font-Italic="True" ToolTip="enter the conform password "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Height="20px" TextMode="Password" placeholder="Enter Confirm password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter Confirm Password" ControlToValidate="TextBox4" Display="Dynamic"  ForeColor="cyan" Font-Bold="True" Font-Italic="True"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TextBox4" ControlToCompare="TextBox3" Display="Dynamic" ErrorMessage="Confirm Password &amp; Password should match" Font-Bold="True" Font-Italic="True" ForeColor="Cyan" SetFocusOnError="True"></asp:CompareValidator>
                    </td>
                </tr>
            </table>

            <asp:Button ID="Button1" runat="server" Text="Register Now" Width="150px" height="30px" OnClick="Button1_Click" onClientClick="getModal()"  data-toggle="modal" href="#ignismyModal"  />
            
            <br />
            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
        </div>
        <div class="homebutton">
                
                <asp:Button ID="Button2" class="myButton" runat="server" Text="Back to Home Page" CausesValidation="False" PostBackUrl="homepage.aspx"/>
            </div>
          <!-- ********************modal starts**************** -->
        <div class="container">
    <div class="row">
       
        <div class="modal fade" id="ignismyModal" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label=""><span>×</span></button>
                     </div>
					
                    <div class="modal-body">
                       
						<div class="thank-you-pop" >
							
							<h1>Welcome To ESB Family!</h1>
							
                            
							<h3 style="text-align:center" class="cupon-pop" id="myModal"></h3>
                            <img src="../Images/success.png" />
							<p style="text-align:center; font-size:20px"> Thank you for registering</p>
 						</div>
                         
                    </div>
					
                </div>
            </div>
        </div>
    </div>
</div>
         <!-- ********************modal ends**************** -->
    </form>
    <script>
        var preloader = document.getElementById('loading');
        function myfunction() {
            preloader.style.display = 'none';
        }
    </script>
</body>
</html>
