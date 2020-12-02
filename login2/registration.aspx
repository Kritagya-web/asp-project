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
   <link rel="stylesheet" href="Css_New/registration.css" />
    <title> Registeration Page- ESB</title>
    <script>
        function getModal() {
            t = document.getElementById("Label6");
            let flag = t.innerText();
            if (flag == 1) {
                p = document.getElementById('myModal');

                p.innerText = "You have been registered successfully.";
            }
            else {
                t.innerText = "Please Check Again";
            }
                </script>
    
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
                <asp:Label ID="Label6" runat="server" Text="" Visible="False"></asp:Label>

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
