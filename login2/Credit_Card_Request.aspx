<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Credit_Card_Request.aspx.cs" Inherits="login2.Credit_Card_Request" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Credit Card Request</title>
      <link rel="stylesheet" href="Css_New/creditcardrequest.css" />
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
     <div class="buttons">
         <asp:Button ID="Button3" class=" btn btn-success" runat="server" Text="Back to Dashboard" OnClick="Button3_Click" CausesValidation="False"   />
    
         <asp:Button ID="Button4" class=" btn btn-danger" runat="server" Text="Logout" PostBackUrl="~/loginpage.aspx" CausesValidation="False" />
     </div>
    
        <div class="container">
           <h1 class="text-center">Credit Card Request</h1>
            <br />
            <br />

            Your Customer Id is:&nbsp;
            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" OnTextChanged="TextBox1_TextChanged" ReadOnly="True"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Fetch Details" OnClick="Button2_Click" />
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" Font-Strikeout="False" Visible="False">
            <table class="table">
                <tr>
                    <td>Your Account No:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" CausesValidation="True" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="This is Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Name (on Credit card):</td>
                    <td>
                        <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="This is Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Firm name (if any):</td>
                    <td>
                        <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Mode of Delivery:</td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem>Branch</asp:ListItem>
                            <asp:ListItem>Home Address</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList1" Display="Dynamic" ErrorMessage="This is Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Credit Card Type</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Rupay</asp:ListItem>
                            <asp:ListItem>Visa</asp:ListItem>
                            <asp:ListItem>MasterCard</asp:ListItem>
                            <asp:ListItem>Maestro</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" Display="Dynamic" ErrorMessage="This is Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="Button1" class="btn btn-primary" runat="server" OnClick="Button1_Click" Text="Submit" />
                        <br />
                        <asp:Label ID="Label1" runat="server" ForeColor="#00CC00"></asp:Label>
                    </td>
                </tr>
            </table>
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
