<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cust_after_login.aspx.cs" Inherits="login2.cust_after_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Client Dashboard</title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2:wght@700&display=swap" rel="stylesheet"/>

    <style>
        *{
            padding:0;
            margin:0;
            color:black;
            font-size:15px;
            font-family: 'Baloo Bhai 2', cursive;
        }
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
        body{
            background: rgb(242,209,124);
background: radial-gradient(circle, rgba(242,209,124,1) 0%, rgba(54,219,219,1) 100%);
        }
        .main{
             position: absolute;
            top:40%;
            left:50%;
            transform: translate(-50%,-50%);
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
        } 
        .mainButtons:hover{
           background-color:#50d1c0;
            color:white;
            transform:translateY(10);
        }
.hello{
       display: block;
    font-weight: bold;
    font-size: 40px;
    text-align: center;
    margin-bottom: 24px;
}       
      /*footer css starts*/
        
.footersection{
    width:100%;
    height:auto;
    padding:70px 0 15px 0;
  background-image: url("2.png")!important; 
  background-size:cover;
  position: relative;
  top:400px;
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
/*footer css ends*/
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
    
      <a class="nav-link " href="#"><i class="fa fa-address-book"></i>Reach Us</a>
      <a class="nav-link " href="#"><i class="fa fa-question-circle"></i>Queries & Suggestions</a>
        
    </div>
  </div>
</nav>
            </div>

        <!-- ********************dashboard starts**************** -->
        <div class="main">
           
            <asp:Label ID="Label1" class="hello" runat="server" Text=""></asp:Label>
                  <asp:Label ID="Label2" class="hello" runat="server" Text="" Visible="false"></asp:Label>

            <asp:Button ID="Button1" class="mainButtons" runat="server" Text="Deactivate UserID" OnClick="Button1_Click"  />
            <asp:Button ID="Button2" class="mainButtons"  runat="server" Text="Update Profile" OnClick="Button2_Click" />
            <asp:Button ID="Button4" class="mainButtons"  runat="server" Text="Transactions" OnClick="Button4_Click" />
                     <asp:Button ID="Button3" class="mainButtons" runat="server" Text="Back to Home Page" CausesValidation="False" PostBackUrl="homepage.aspx" Visible="false"/>
        <br />
        <br />

        <br />

        <br />
        <br />
        <br />
            
           
            </div>
        
        <!-- ********************dashboard ends**************** -->

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

