<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="login2.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About US</title>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous" />

<link rel="stylesheet" href="Css_New/aboutus.css" />
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
 <div id="bg"></div>
        <div class="container">
            <h1>Overview</h1>
            <h4>About ESmartBanker :</h4>
            <p>ESmartBanker is a Scheduled Commercial Bank. Established in Bengaluru in 2008, it has been recognized globally as one of the most innovative financial institutions working on financial inclusion.</p>
<p>
As on September 30, 2019, the Bank’s distribution network was at 270 banking outlets (including 25 business correspondence outlets), 298 asset centres and 120 ATMs. Of the total banking outlets, 43% are in semi-urban and rural areas. Number of employees were at 14,452 as of Sep 30, 2019.
</p>
    <p>

For more information please log on to: www.ESmartBanker.com</p>
            <p>Awards and recognition:</p>
            
            <ul>
                <li>In 2018, Capital Finance International (CFI.co) adjudged the ESmartBanker as The Best Inclusive Financial Services – India 2018 in London</li>
                <li>In 2017, JFS was featured in ‘Fortune – The Top 500’ as the largest corporations in India and was awarded as India’s Distinctive
                    Goodwill Brand for 2017. In the same year, CNBC awarded JFS for Best Financial Sector Transaction ADB Private Sector.</li>
                <li>In 2016, VC Circle awarded JFS with the ‘Best Financial Services firm in India’</li>
            </ul>
                
            <br />
            <br />
            <h1>
                Our Story
            </h1>
            <p>ESmartBanker has a long and distinguished history, 
                which stands as a testament to who we are today. For more than 
                a decade, we have actively listened and responded to the needs
                of our customers. We strive hard every day to deliver value 
                through our competitive and thoughtful financial services,
                thus helping our customers lead better lives.</p>
            <h1>Our Vision & Mission</h1>
            <br />

            <img src="../Images/vision.jpg" class="img-fluid simple"/>
            <br />
            <br />
            <h1>Our Values</h1>
            <br />
            <img src="../Images/values.jpg" class="img-fluid simple" />
            <br />
            <br />
            <h1>Corporate Identity</h1>
            <p>We are ESmartBanker, and since inception, 
                our sole purpose has been to make every Indian prosperous, 
                bringing about a positive difference and improving the lives of the urban unserved!
<p>We strive hard to undertake various activities to deepen the understanding of the various challenges to financial inclusion, addressing policy issues via education, skill development, community connectivity, and financial advisory initiatives, and so on.

Our values and vision, and our beliefs that drive ESmartBanker are reflected in our corporate identity as well.</p>
</p>
            <br />
            <p>The logo also amplifies the Brand Promise of ESmartBanker, captured in the statement ‘Likho Apni Kahani’ or ‘Write Your Destiny’.</p>
<p>The logo is relevant to all the customer segments that the bank targets: the underserved,
    as well as those who are financially healthier. The lines also reflect the spirit of the
    company in another manner: no line can ever be drawn without effort and initiative by individuals,
    to walk their individual journeys or make the connections between people.</p>
            <p>The lines are, therefore, visual extensions of the handwritten stories of real people
                impacted by the work of ESmartBanker, and of the networks of connections
                being enabled by ESmartBanker. Derived from stories and connections, they
                form the graphic element for all communication.</p>
            <br />
            <img src="logonewnew.png" class="img-fluid logo" />
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
