<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateProfile.aspx.cs" Inherits="login2.UpdateProfile" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile Update</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
     <link href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2:wght@700&display=swap" rel="stylesheet"/>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <script>
        function getModal() {
            p = document.getElementById('myModal');
            custid = document.getElementById('TextCust');
            account = document.getElementById('TextAccount');
           
            p.innerText = "Your Cust ID is " + custid.value + " & Account Number is "+account.value;
}
    </script>
    <style type="text/css">
        *{
            padding:0;
            margin:0;
            color:black;
            font-size:15px;
            font-family: 'Baloo Bhai 2', cursive;
        
           } 
        /*navbar CSS starts*/
         a img{
           width:227px;
        }
         
        .navbar{
            background-color:black;
            position:sticky;
        }
        .top{
            position:fixed;
            width:100%;
        }
        .nav-link{
              font-size: 18px;
             margin: 0px 23px;
            color: white;
             padding: 14px;
        }
        .navbar-nav{
            margin-left: 116px;
        }
        .nav-link:hover{
            font-weight:bold;
          box-shadow:0px 0px 5px #33ffff,0px 0px 5px #66ffff;
            border-radius:5px;
            color:cyan;
           }
        i{
            margin-right:8px;
        }
        .fa{
            color:white;
        }
        .fa:hover{
            color:cyan;
        }

        /*navbar CSS ends*/
     .landing{
         margin-top:97px;
        }
        .landing::before{
            content: ""; 
            position: fixed;
             top: 0;
            left: 0;
            width: 100%;
            height: 100%;
background: rgb(242,209,124);
background: radial-gradient(circle, rgba(242,209,124,1) 0%, rgba(54,219,219,1) 100%);

z-index:-1;


}
        .main{
  
            background:white;
        }
       
       
      
        td{
         
             font-size:16px;
        }
        input,textarea{
                background: transparent;
 width:402px;
    border-radius: 14px;
    text-align:center;
    border:3px solid black;
        }
        input:hover{
            border-radius:24px;
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
	font-size:17px;
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

       
       /*
.buttons{


  
    margin:auto;
 
    
}*/
.navbar{
    top:0;
   
    cursor:pointer;
}
        
.heading{
    text-align:center;
   
}


.footersection{
    width:100%;
    height:auto;
    padding:70px 0 15px 0;
  background-image: url("2.png")!important; 
  background-size:cover;
  position: relative;
}
.footersection p{
    color: white;
}
.footersection li a{
font-size: 0.9rem;
line-height: 1.6;
font-weight: 400;
color: white;
text-transform: capitalize;

}
.footersection h3{
    text-transform: uppercase;
    color: white;
    margin-bottom: 25px;
    font-size: 1.2rem !important;
    font-weight: 600;
    text-shadow: 0 2px 5px rgba(0,0,0,0.3);
}
.updatesection{
    display:flex;
    flex-direction:column;
    justify-content:center;
    align-items:center;
    margin-bottom:20px;
}
 .mainButtons{
                border: 1px solid #50d1c0;
    border-radius: 100px;
    margin: 0 5px;
    padding: 12px 35px;
    outline: none;
    color: #50d1c0;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.4;
    text-align: center;
    background-color:white;
        } 
        .mainButtons:hover{
           background-color:#50d1c0;
            color:white;
            transform:translateY(10);
        }
        .action{
            display:block;
            margin:61px 0px;
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
            animation: animloader 1s linear infinite;
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
        <div class="top">
            <nav class="navbar navbar-expand-lg stick">
  <a class="navbar-brand" href="#"><img src="logonewnew.png" /></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-link active " href="#"><i class="fa fa-home" aria-hidden="true" ></i>Home <span class="sr-only">(current)</span></a>
      <a class="nav-link " href="#"><i class="fa fa-users"></i>About Us</a>
      <a class="nav-link " href="#"><i class="fa fa-book"></i>Our Policies</a>
      <a class="nav-link " href="#"><i class="fa fa-exchange"></i>Transactions</a>
      <a class="nav-link " href="#"><i class="fa fa-address-book"></i>Reach Us</a>
      <a class="nav-link " href="#"><i class="fa fa-question-circle"></i>Queries & Suggestions</a>
     
    </div>
  </div>
</nav>
            </div>
        <br />
   <section class="landing">
      
       <div class="updatesection">
             <h2>Update Your Profile</h2>
           <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
           <asp:Label ID="Label1" runat="server" Text="Mobile Number: "></asp:Label>
       <asp:TextBox ID="TextMob" runat="server"></asp:TextBox>
       
      <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextMob" Display="Dynamic" ErrorMessage="Please enter valid Mobile No." Font-Bold="True" Font-Italic="False" Font-Size="Medium" ForeColor="#FF6600" SetFocusOnError="True" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                   
       <asp:Label ID="Label2" runat="server" Text="Email ID: "></asp:Label>
       <asp:TextBox ID="TextMail" runat="server"></asp:TextBox>
       
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextMail" Display="Dynamic" ErrorMessage="Please enter valid Email" Font-Bold="True" Font-Italic="False" Font-Size="Medium" ForeColor="#FF6600" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                  
       <asp:Label ID="Label3" runat="server" Text="Address: "></asp:Label>
       <asp:TextBox ID="TextAddress" runat="server"></asp:TextBox>


            <asp:Label ID="Label4" runat="server" Text="Password:  "></asp:Label>
       <asp:TextBox ID="TextPass" runat="server"></asp:TextBox>

          
                       
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextPass" Display="Dynamic" ErrorMessage="Please Select password as per our policy" Font-Bold="True" Font-Italic="True" ForeColor="Cyan" SetFocusOnError="True" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"></asp:RegularExpressionValidator>
                 
           <div class="action">
             <asp:Button ID="Button1" class="mainButtons" runat="server"  Text="Update Now" OnClick="Button1_Click"/>
         <asp:Button ID="Button2" class="mainButtons" runat="server"  Text="Cancel" OnClick="Button2_Click"/>
               </div>
       </div>

            </section>
        <br />
        <br />
        <br />
         
       
            <!-- ********************footer starts**************** -->
        <footer class="footersection" id="footerdiv">

        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 col-12 footeer-div">
                    <div>
                        <h3>
                            About eSmartBanker
                        </h3>
                        <p>eSmartBanker has a long and distinguished history, which stands as a testament to who we are today. For more than a decade, we have actively listened and responded to the needs of our customers. We strive hard every day to deliver value through our competitive and thoughtful financial services, thus helping our customers lead better lives.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-12 footer-div text-center">
                    <div>
                        <h3>
                            Navigation Links
                        </h3>
                        <div>

                            <li><a href="#">Home</a></li>
                            <li><a href="#servicediv">About Us</a></li>
                            <li><a href="#pricingdiv">Our Policies</a></li>
                            <li><a href="#contactid">Transactions</a></li>
                            <li><a href="#contactid">Reach Us</a></li>
                            <li><a href="#contactid">Queries & Suggestions</a></li>
                        </div>


                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-12 foteer-div">
                    <div>
                        <h3>
                            Newsletter
                        </h3>
                        <p>For business professionals caught between high OEM price and medicore print and graphic
                            output.</p>
                        <div class="container newsletter-main">
                            <div class="row">
                                <div class="col-lg-12 col-12">
                                    <div class="input-group mb-3">
                                        <input type="text" class="form-control news-input" placeholder="Your Email" />
                                        <div class="input-group-append">
                                            <span class="input-group-text">Subscribe</span>
                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="mt-5 text-center">
                <p>Copyright &copy;1987-2020 All rights reserved |  &#10084; 
                </p>
            </div>
            
        </div>

    </footer>

    <!-- ********************footer ends**************** -->
    </form>
    <script>
        var preloader = document.getElementById('loading');
        function myfunction() {
            preloader.style.display = 'none';
        }
    </script>
</body>
</html>