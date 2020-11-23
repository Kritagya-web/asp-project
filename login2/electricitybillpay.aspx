<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="electricitybillpay.aspx.cs" Inherits="login2.electricitybillpay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Electricity Bill Payment</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"/>
     <link rel="stylesheet" href="Css_New/electricitybillpay.css" />
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
            
  <div class="container">
         
        <div class="auto-style1 reg-box">
            <h3 style="margin-top:35px">Electricity Bill Payment</h3><br />
            <br />
            <table class="auto-style2">
                <tr>
                    <td>Enter Customer ID:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" ForeColor="#192A56"></asp:TextBox>
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
                        <asp:Button ID="Button1" class="btn btn-success" runat="server" OnClick="Button1_Click" Text="Fetch Details" />
                        <br />
                        <asp:Label ID="Label1" runat="server" ForeColor="#000099"></asp:Label>
                    </td>
                </tr>
            </table>
         <asp:Panel ID="Panel1" runat="server" Visible="False">
            <div class="auto-style1">
                <br />
                <asp:Button ID="Button2" class="btn btn-primary" runat="server" OnClick="Button2_Click" Text="Balance Check" />
                <br />
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button3" class="btn btn-danger" runat="server" Text="" OnClick="Button3_Click" />
                <br />
                <asp:Label ID="Label3" runat="server" ForeColor="#000099"></asp:Label>
                <asp:Label ID="Label4" runat="server"></asp:Label>
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </div>
        </asp:Panel>
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
</html>