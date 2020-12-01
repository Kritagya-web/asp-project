<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="login2.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://fonts.googleapis.com/css2?family=Baloo+2:wght@700&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Sansita+Swashed:wght@600&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous" />
    <title>MANAGER DASHBOARD - ESB</title>
    <link rel="stylesheet" href="Css_New/adminpage.css" />
</head>
        <link rel="icon" 
      type="image/png" 
      href="../Images/favicon.png" />
<body onload="myfunction()">
    <form id="form2" runat="server">
         <div id="loading">
            <!--<div id="ring"></div>
             <div id="text1">LOADING</div>-->
         <span class="loader"></span>
         <span></span>
         <span class="loader1">Loading</span>
        </div>
        <div class="reg-box">
            <img src="../Images/usericon.jpg" alt=""  class="user" />
            <h2>MANAGER DASHBOARD - ESB</h2>
            &nbsp;<br />
            <table class="table1 table">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="Customer_id " Font-Italic="True" ToolTip="enter the customer-id"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="CustID" runat="server" Height="20px" placeholder="Enter CustomerID"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="CustID" Display="Dynamic" ErrorMessage="Enter valid Customer ID" Font-Bold="True" Font-Italic="True" ForeColor="Cyan" SetFocusOnError="True" ValidationExpression='^(ESB)\d{5}'></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter CustomerID" ControlToValidate="CustID" Display="Dynamic" ForeColor="cyan"  Font-Italic="True" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
               
                 <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Account No." ToolTip="enter account number" Font-Italic="True"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="Account" runat="server" Height="20px"  placeholder="Enter Account No."></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter valid Account Number " ControlToValidate="Account" Display="Dynamic" Font-Bold="True" Font-Italic="True" ForeColor="Cyan" SetFocusOnError="True" ValidationExpression='\d{10}'></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Account No."  ControlToValidate="Account" Display="Dynamic" Font-Bold="True" Font-Italic="True" ForeColor="Cyan" SetFocusOnError="True"></asp:RequiredFieldValidator>
                       
                        </td> 
                </tr>
                 <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label3" runat="server" Text="Amount to Add " Font-Italic="True" ToolTip="Enter Amount to Add"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="Amount" runat="server"  Height="20px" placeholder="Enter Amount to Add"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Amount" Display="Dynamic" ErrorMessage="Please Enter Amount to Add"  ForeColor="cyan" Font-Bold="True" Font-Italic="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Test" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            </table>

            <asp:Button ID="Button1" runat="server" Text="Confirm Add" Width="150px" height="30px" OnClick="Button1_Click"/>
            <br />
            <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
        </div>
        <div class="homebutton">
                
                <asp:Button ID="Button3" class="myButton" runat="server" Text="Back to Home Page" CausesValidation="False" PostBackUrl="homepage.aspx"/>
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