<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="telephonebillpay.aspx.cs" Inherits="login2.telephonebillpay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Telephone Bill Payment</title>
    <link rel="stylesheet" href="Css_New/telephonebillpay.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous" />
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
   
        <asp:Button ID="Button4" runat="server" class="btn btn-success ml-3 mr-3" Text="Back To Home Page" CausesValidation="False" PostBackUrl="homepage.aspx"/>
        <asp:Button ID="Button5" CssClass="btn btn-danger" runat="server" Text="Logout" CausesValidation="False" PostBackUrl="loginpage.aspx" />
        <h1 class="mt-3 mb-5 text-center">Telephone Bill Payment</h1>

        <div class="container">
            
            
            <table class="table ">
                <tr>
                    <td>Enter Customer ID:</td>
                    <td>
                        <asp:TextBox ID="TextBox1"  class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="This is Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Enter Valid Customer ID" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^(ESB)\d{5}"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;</td>
                </tr>
                
            </table>
                        <asp:Button ID="Button1" class="btn btn-primary align-middle" runat="server" OnClick="Button1_Click" Text="Fetch Details" />
                        <asp:Label ID="Label1" class="align-middle" runat="server" ForeColor="Red"></asp:Label>
        
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <div class="panel">
                <br />
                <asp:Button ID="Button2" CssClass="btn btn-success" runat="server" OnClick="Button2_Click" Text="Balance Check" />
                <br />
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button3" CssClass="btn btn-danger" runat="server" Text="" OnClick="Button3_Click" />
                <br />
                <asp:Label ID="Label3" runat="server" ForeColor="#00CC00"></asp:Label>
                <asp:Label ID="Label4" runat="server"></asp:Label>
                <asp:Label ID="Label5" runat="server"></asp:Label>
            
            </div>
               </asp:Panel>
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
