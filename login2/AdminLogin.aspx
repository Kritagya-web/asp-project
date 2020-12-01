<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="login2.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login Page</title>
    <link href="https://fonts.googleapis.com/css2?family=Baloo+2:wght@700&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Sansita+Swashed:wght@600&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Kalam:wght@700&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="Css_New/adminlogin.css" />
   
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
        <div class="landing">
        <div class="auto-style1">
            <h1>ADMIN LOGIN</h1>
            <table class="auto-style2">
                <tr class="styTr">
                    <td class="row1">
                        <asp:ImageButton ID="ImageButton3" runat="server" Enabled="False" ImageUrl="../Images/nameicon.png" ToolTip="User ID" />
                        User ID </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Please Enter User ID" ForeColor="Yellow" SetFocusOnError="True">Please Enter User ID</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="styTr">
                    <td class="row1">
                        <asp:ImageButton ID="ImageButton4" runat="server" Enabled="False" ImageUrl="../Images/password11icon.png" ToolTip="Password" />
                        Password </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Font-Size="Medium"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Please Enter Password" ForeColor="Yellow" SetFocusOnError="True">Please Enter Password</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="styTr">
                    <td colspan="3" class="btn">
                        <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Sign In" />
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
            <div class="homebutton">
                
                <asp:Button ID="Button3" class="myButton" runat="server" Text="Back to Home Page" CausesValidation="False" PostBackUrl="homepage.aspx"/>
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