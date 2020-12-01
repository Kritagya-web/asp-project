<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="policies.aspx.cs" Inherits="login2.policies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Our Policies</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous" />
<style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;

        }
        body{
            background-image:url('../Images/servicebg.jpg');
      
            height:100vh;
            width:100vw;

        }
        #message {
    background: rgb(255, 189, 131);
    background-color:white;
    color: rgb(116, 54, 0);
    font-weight: bold;
    padding: 7px;
    display: block;
    margin: 10px 0px;
}

.wpanel_marquee {
    box-sizing: border-box;
    color: #39729f;
    font-weight: bold;
    margin: 12px 0 0;
    overflow: hidden;
    white-space: nowrap;
    height: 28px;
}

    .wpanel_marquee p {
        /* animation: 30s linear 0s normal none infinite running marquee; */
        animation: marquee 60s linear infinite;
        display: inline-block;
        padding-left: 100%;
    }

p {
    margin: 0 0 10px;
}
@keyframes marquee {
    0% {
        transform: translate(0, 0);
    }

    100% {
        transform: translate(-100%, 0);
    }
}
.buttons{
    position:relative;
    top:10px;
    left:10px;
}
    </style>
</head>
    
<body>
    <form id="form1" runat="server">
         <div class="buttons">
            <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Go to Home" PostBackUrl="~/homepage.aspx" CausesValidation="False" />
        </div>
        <h1 class="text-center">Our Policies</h1>
        
          <div class="wpanel_marquee" id="message">
                  <p>ESB is upgrading its Internet Banking platform for better customer experience. During this activity, there may be some intermittent issues on 10-Dec-2020. We regret the inconvenience caused.  &nbsp;&nbsp;|&nbsp;&nbsp;  Attention Retail/Corporate INB Users, transaction OTP will be made mandatory for all merchant related transactions, hence please have your mobile number registered if the same has not been done until now.  &nbsp;&nbsp;|&nbsp;&nbsp;  <span style="color: #0070c0;">For enhanced secure banking experience, ESB Internet Banking website is migrating to its own generic Top Level Domain “.esb”.</span> &nbsp; <span style="color: #ff0000;">The new ESB Internet Banking URL for Retail users will be “retail.onlineesb.esb”. </span>  &nbsp;&nbsp;|&nbsp;&nbsp;  Dear Customer, if you have donated for PM CARES through ESB Internet Banking, you can download the Receipt from PMCares portal of govt. using the reference number available with you.  &nbsp;&nbsp;|&nbsp;&nbsp;  Have you tried our new simplified and intuitive business banking platform? Log in to <a href="https://yonobusiness.esb/"><u>yonobusiness.esb</u></a> to avail business banking services.</p>
               </div>
        <div class="container">
              <h1 class="text-center ">SB Interest Rates</h1>
            <br />
            <p>ESB Bank provides information on the various Interest rates offered by it on various loans and deposit schemes.</p>
       <p>"Please call our 24X7 helpline through Toll free 1800 11 2211, 1800 425 3800 or Toll number 080-26599990 These are accessible from all landlines and mobile phones in the country</p>
         
                          
        <img src="../Images/sbinterest.png"  class="img-fluid"/>
            <br />
            <br />
             <h1 class="text-center ">FD Interest Rates</h1>
                  
        <img src="../Images/fdinterest.png"  class="img-fluid"/>
        </div>
    </form>
</body>
</html>
