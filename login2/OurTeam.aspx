<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OurTeam.aspx.cs" Inherits="login2.OurTeam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Our Team</title>
	<link href="css/bars.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/font-awesome.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2:wght@700&display=swap" rel="stylesheet"/>
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
  <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
   
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"
        integrity="sha512-CEiA+78TpP9KAIPzqBvxUv8hy41jyI3f2uHi7DGp/Y/Ka973qgSdybNegWFciqh6GrN2UePx2KkflnQUbUhNIA=="
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"
        integrity="sha512-d8F1J2kyiRowBB/8/pAWsqUl0wSEOkG5KATkVV4slfblq9VRQ6MyDZVxWl2tWd+mPhuCbpTB4M7uU/x9FlgQ9Q=="
        crossorigin="anonymous"></script>
	 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
	<style>
	   *{
            padding:0px;
            margin:0px;
            color:black;
            font-size:15px;
            font-family: 'Baloo Bhai 2', cursive;
        
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
     
	   .project-work{
    margin: 100px 0;

}
.project-work h1{
    font-size: 3rem;
    text-align: center;
}
.headings{
    margin-bottom:50px;

}
.headings h1{
    font-size: 4rem;
    font-weight: 600;
    text-transform: uppercase;
}

p{
    font-size: 2rem;
    line-height: 1.6;
    font-weight: 400;
    color:#606060

}
#bg{
	position:fixed;
background-image: url("logonewnew.png");
background-size: 150px;
margin-right:8px;
width:100vw;
height:100vh;
opacity: 0.15;
z-index:-1;
}
.title-w3{
	font-size:5rem;
}
h4{
	color:black!important;
}
 
            .mainButtons {
    border: 1px solid black;
    border-radius: 100px;
    margin: 40px;
    padding: 12px 35px;
    outline: none;
    color: black;
    font-size: 2rem;
    font-weight: 400;
    line-height: 1.4;
    text-align: center;
        } 
        .mainButtons:hover{
           background-color:black;
            color:red;
            
        }
        .container{
            position:relative;
            top:0px;
        }
        #Button2{
                position: relative;
     top: 0;
     margin: 0;
        }
        .progress{
                height: 22px;
                margin: 0px 60px;
        }
        .growthSection{
            padding-top:25px;
            padding-bottom:50px;
        }
   </style>
	
</head>
        <link rel="icon" 
      type="image/png" 
      href="../Images/favicon.png" />
<body  onload="myfunction()">
    <form id="form1" runat="server">
       <div id="bg">
		    </div> 
		
              <div id="loading">
            <!--<div id="ring"></div>
             <div id="text1">LOADING</div>-->
         <span class="loader"></span>
         <span></span>
         <span class="loader1">Loading</span>
     </div>


         
<!--team-->
<div class="team" id="team">
	<div class="container">
          <asp:HyperLink runat="server" NavigateUrl="homepage.aspx" class="mainButtons"><i class="fa fa-arrow-circle-left"></i>  Back To Home Page
          </asp:HyperLink>
         	<h4 class="title-w3">Our Team</h4>
		<div class="team-grids">
		<div class="col-md-3 team-gds wow fadeInLeft animated" data-wow-delay=".5s">
			<div class="gal-grid-rev vertical">
				<div class="img-box-content"><img src="Deeptaksh.jpg" alt=" " /></div>
					<div class="gal-text-box">
						<div class="info-gal-con">
							<div class="social-content">
								<ul>
									<li class="facebook"><a class=" hvr-underline-from-center" target="_blank" href="https://www.facebook.com"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
									<li class="twitter"><a class="ico2 hvr-underline-from-center" target="_blank" href="https://www.twitter.com"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
									<li class="pinterest"><a class="ico3 hvr-underline-from-center" target="_blank" href="https://www.instagram.com"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
									<li class="linkedin"><a class="ico4 hvr-underline-from-center" target="_blank" href="https://www.linkedin.com"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								</ul>				
							</div>
						</div>
					</div>
			</div>
			<h4>DEEPTAKSH GUPTA</h4>
		
		</div>
		<div class="col-md-3 team-gds wow fadeInUp animated" data-wow-delay=".5s">
			<div class="gal-grid-rev vertical">
				<div class="img-box-content"><img src="Eshan.jpg" alt=" " /></div>
					<div class="gal-text-box">
						<div class="info-gal-con">
							<div class="social-content">
								<ul>
									<li class="facebook"><a class=" hvr-underline-from-center" target="_blank" href="https://www.facebook.com"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
									<li class="twitter"><a class="ico2 hvr-underline-from-center" target="_blank" href="https://www.twitter.com"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
									<li class="pinterest"><a class="ico3 hvr-underline-from-center" target="_blank" href="https://www.instagram.com"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
									<li class="linkedin"><a class="ico4 hvr-underline-from-center" target="_blank" href="https://www.linkedin.com"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								</ul>				
							</div>
						</div>
					</div>
			</div>
			<h4>ESHAN VOHRA</h4>
		
		</div>
		<div class="col-md-3 team-gds wow fadeInDown animated three" data-wow-delay=".5s">
			<div class="gal-grid-rev vertical">
				<div class="img-box-content"><img src="harry.jpeg" alt=" " /></div>
					<div class="gal-text-box">
						<div class="info-gal-con">
							<div class="social-content">
								<ul>
									<li class="facebook"><a class=" hvr-underline-from-center" target="_blank" href="https://www.facebook.com"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
									<li class="twitter"><a class="ico2 hvr-underline-from-center" target="_blank" href="https://www.twitter.com"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
									<li class="pinterest"><a class="ico3 hvr-underline-from-center" target="_blank" href="https://www.instagram.com"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
									<li class="linkedin"><a class="ico4 hvr-underline-from-center" target="_blank" href="https://www.linkedin.com"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								</ul>				
							</div>
						</div>
					</div>
			</div>
			<h4>HENISH KUMAR</h4>
		
		</div>
		<div class="col-md-3 team-gds wow fadeInLeft animated" data-wow-delay=".5s">
			<div class="gal-grid-rev vertical">
				<div class="img-box-content"><img src="MyPic.jpg" alt=" " /></div>
					<div class="gal-text-box">
						<div class="info-gal-con">
							<div class="social-content">
								<ul>
									<li class="facebook"><a class=" hvr-underline-from-center" target="_blank" href="https://www.facebook.com"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
									<li class="twitter"><a class="ico2 hvr-underline-from-center" target="_blank" href="https://www.twitter.com"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
									<li class="pinterest"><a class="ico3 hvr-underline-from-center" target="_blank" href="https://www.instagram.com"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
									<li class="linkedin"><a class="ico4 hvr-underline-from-center" target="_blank" href="https://www.linkedin.com"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								</ul>			
							</div>
						</div>
					</div>
			</div>
			<h4>KRITAGYA KUMRA</h4>
		
		</div>
		<div class="clearfix"></div>
	</div>
	</div>
</div>
<!--//team-->
		 <section class="project-work">
        <div class="container headings text-center">
            <h1 class="text-center font-weight-bold">More than 2 Billon Satisfied Customers.</h1>


        </div>
        <div class="container d-flex justify-content-around align-items-center text-center">
            <div>
                <h1 class="count">15000</h1>
                <p>Branches PAN India</p>
            </div>
            <div>
                <h1 class="count">25000</h1>
                <p>ATMS Working</p>
            </div>
            <div>
                <h1 class="count">50000</h1>
                <p>Average Transactions</p>
            </div>
            <div>
                <h1 class="count">70</h1>
                <p>International Branches</p>
            </div>
        </div>

    </section>
        <div class="bg-light">
		 <div class="growthSection container">
             <h1 class="text-center font-weight-bold" style="font-size:4rem">Our Growth</h1>
             <div class="year ">
                 <h3 style="font-size:3rem">2020 :</h3>
              
                        <div class="progress" style="height:22px;">
                            <div class="progress-bar bg-secondary progress-bar-striped progress-bar-animated" role="progressbar"
                                aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"  style="width: 90%;height: 250px">100%</div>
                        </div>
             </div><br />
             <div class="year ">
                 <h3 style="font-size:3rem">2019 :</h3>
              
                        <div class="progress" style="height:22px;">
                            <div class="progress-bar bg-danger progress-bar-striped progress-bar-animated" role="progressbar"
                                aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"  style="width: 80%;height: 250px">100%</div>
                        </div>
             </div><br />
             <div class="year ">
                 <h3 style="font-size:3rem">2018 :</h3>
              
                        <div class="progress" style="height:22px;">
                            <div class="progress-bar bg-warning progress-bar-striped progress-bar-animated" role="progressbar"
                                aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"  style="width: 70%;height: 250px">100%</div>
                        </div>
             </div><br />
             <div class="year ">
                 <h3 style="font-size:3rem">2017 :</h3>
              
                        <div class="progress" style="height:22px;">
                            <div class="progress-bar bg-success progress-bar-striped progress-bar-animated" role="progressbar"
                                aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"  style="width: 60%;height: 250px">100%</div>
                        </div>
             </div><br />
             <div class="year ">
                 <h3 style="font-size:3rem">2016 :</h3>
              
                        <div class="progress" style="height:22px;">
                            <div class="progress-bar bg-dark progress-bar-striped progress-bar-animated" role="progressbar"
                                aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"  style="width: 55%;height: 250px">100%</div>
                        </div>
             </div>

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
	 <script>

         $('.count').counterUp({
             delay: 10,
             time: 3000
         });
    </script>
</html>