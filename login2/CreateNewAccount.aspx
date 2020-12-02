<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateNewAccount.aspx.cs" Inherits="login2.CreateNewAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Account- ESB
    </title>
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
       <link rel="stylesheet" href="Css_New/createnewaccount.css" />
    
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
     <asp:HyperLink runat="server" NavigateUrl="homepage.aspx" class="nav-link "><i class="fa fa-home"></i>Home</asp:HyperLink>
      <asp:HyperLink runat="server" NavigateUrl="AboutUs.aspx" class="nav-link "><i class="fa fa-users"></i>About Us</asp:HyperLink>
   
    <asp:HyperLink runat="server" NavigateUrl="AdminLogin.aspx" class="nav-link "><i class="fa fa-users"></i>Admin Login</asp:HyperLink>
    <asp:HyperLink runat="server" NavigateUrl="policies.aspx" class="nav-link "><i class="fa fa-book"></i>Our Policies</asp:HyperLink>
    
      <asp:HyperLink runat="server" NavigateUrl="OurTeam.aspx" class="nav-link "><i class="fa fa-address-book"></i>Reach Us</asp:HyperLink>
      <asp:HyperLink runat="server" NavigateUrl="ContactUs.aspx" class="nav-link "><i class="fa fa-address-book"></i>Contact US</asp:HyperLink>

     
     
    </div>
  </div>
</nav>
            </div>
        <br />
   <section class="landing">
        <div class="container main">
            <br />
           <p class="h1 heading">New Account</p> <br />
            <table class="table table-striped">
                <tr>
                    <td class="text-center">Full Name:</td>
                    <td class="text-center">
                        <asp:TextBox ID="TextFN" runat="server"></asp:TextBox>
                    </td>
                    <td class="text-center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextFN" Display="Dynamic" ErrorMessage="Please Enter First Name" ForeColor="Black" SetFocusOnError="True" ToolTip="This is required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
               
                
                <tr>
                    <td class="text-center">DOB:</td>
                    <td class="text-center">
                        <asp:TextBox ID="TextDOB" type="date" runat="server" OnTextChanged="TextLN_TextChanged" ></asp:TextBox>
                    </td>
                    <td class="text-center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextDOB" Display="Dynamic" ErrorMessage="Please Enter DOB" ForeColor="Black" SetFocusOnError="True" ToolTip="This is required"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextDOB" Display="Dynamic" ErrorMessage="Age must be between 18 &amp; 100 years." ForeColor="Red" MinimumValue="18" SetFocusOnError="True" Type="Date" MaximumValue="120"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">Type of Account:</td>
                    <td class="text-center">
                        &nbsp;&nbsp;
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="155px">
                            <asp:ListItem>SB</asp:ListItem>
                            <asp:ListItem>Current</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="text-center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList1" Display="Dynamic" ErrorMessage="Please Select any one type" ForeColor="Black" SetFocusOnError="True" ToolTip="This is required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">Mobile Number:</td>
                    <td class="text-center">
                        <asp:TextBox ID="TextMob" runat="server" OnTextChanged="TextMob_TextChanged"></asp:TextBox>
                    </td>
                    <td class="text-center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextMob" Display="Dynamic" ErrorMessage="Please Enter Mobile No." ForeColor="Black" SetFocusOnError="True" ToolTip="This is required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextMob" Display="Dynamic" ErrorMessage="Please enter valid Mobile No." Font-Bold="True" Font-Italic="False" Font-Size="Medium" ForeColor="#FF6600" SetFocusOnError="True" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">Email Id:</td>
                    <td class="text-center">
                        <asp:TextBox ID="TextMail" runat="server"></asp:TextBox>
                    </td>
                    <td class="text-center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextMail" Display="Dynamic" ErrorMessage="Please Enter Email ID" ForeColor="Black" SetFocusOnError="True" ToolTip="This is required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextMail" Display="Dynamic" ErrorMessage="Please enter valid Email" Font-Bold="True" Font-Italic="False" Font-Size="Medium" ForeColor="#FF6600" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">Address</td>
                    <td class="text-center">
                        <asp:TextBox ID="Address" runat="server"></asp:TextBox>
                    </td>
                    <td class="text-center">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="text-center">Aadhar No:</td>
                    <td class="text-center">
                        <asp:TextBox ID="TextAdc" runat="server"></asp:TextBox>
                    </td>
                    <td class="text-center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextAdc" Display="Dynamic" ErrorMessage="Please Enter Aadhar No" ForeColor="Black" SetFocusOnError="True" ToolTip="This is required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextAdc" Display="Dynamic" ErrorMessage="Please enter valid Aadhar No." Font-Bold="True" Font-Italic="False" Font-Size="Medium" ForeColor="#FF6600" SetFocusOnError="True" ValidationExpression="^\d{4}\d{4}\d{4}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text-center">PAN No:</td>
                    <td class="text-center">
                        <asp:TextBox ID="TextPan" runat="server"></asp:TextBox>
                    </td>
                    <td class="text-center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextPan" Display="Dynamic" ErrorMessage="Please Enter PAN" ForeColor="Black" SetFocusOnError="True" ToolTip="This is required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextPan" Display="Dynamic" ErrorMessage="Please enter valid PAN" Font-Bold="True" Font-Italic="False" Font-Size="Medium" ForeColor="#FF6600" SetFocusOnError="True" ValidationExpression="(^([a-zA-Z]{5})([0-9]{4})([a-zA-Z]{1})$)"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" class="text-center">&nbsp;</td>
                </tr>
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                <tr>
                    <td colspan="2" class="text-center">Your Customer ID is:</td>
                    <td class="text-center">
                        <asp:TextBox ID="TextCust" runat="server"  ReadOnly="true" OnTextChanged="TextCust_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="text-center" colspan="2">Your Account No. is:</td>
                    <td class="text-center">
                        <asp:TextBox ID="TextAccount" runat="server"  ReadOnly="true" CssClass="" OnTextChanged="TextBox10_TextChanged" ></asp:TextBox>
                    </td>
                </tr>
                    </asp:Panel>
                </table>
        </div>
        <p>
            &nbsp;</p>
            <p>
                <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
            <p class="container text-center">
            <asp:Button ID="Button1" class="myButton" runat="server" CausesValidation="False" Text="Back to Home" OnClick="Button1_Click" />
                <asp:Button ID="Button2" class="myButton" runat="server" Text="Check" OnClick="Button2_Click"  />
                <asp:Button ID="Button3" class="myButton" runat="server" Text="Submit Data" data-toggle="modal" href="#ignismyModal" onClientClick="getModal()" OnClick="Button3_Click" CausesValidation="False"  />
                
             </p>
            </section>
        <br />
        <br />
        <br />
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
							
                            
							<h3 class="cupon-pop" id="myModal" ></h3>
							<p > Please Note CustID & Account No. for further processing.</p>
 						</div>
                         
                    </div>
					
                </div>
            </div>
        </div>
    </div>
</div>
         <!-- ********************modal ends**************** -->
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