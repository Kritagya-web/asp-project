    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BillManager.aspx.cs" Inherits="login2.BillManager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous" />
    <title>Bill Manager - ESB</title>
        <link rel="stylesheet" href="Css_New/billmanager.css" />
   
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
 
        <div class="Container">
            <h1 class="text-center mt-3 mb-5">
            Bill Management Dashboard
                </h1><table class="table text-center ">
                <tr>
                    <td>Cust_ID:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="This is required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Electricity Bill:</td>
                    <td>
                        <asp:TextBox ID="TextBox2"  CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Telephone Bill:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Due Date_Electricity:</td>
                    <td>
                        <asp:TextBox ID="TextBox4" type="date" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
                    <td>
                      
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Enter Valid Date" ForeColor="Red" MinimumValue="18" SetFocusOnError="True" Type="Date" MaximumValue="120"></asp:RangeValidator>
                   
                    </td>
                </tr>
                <tr>
                    <td>Due Date_Telephone:</td>
                    <td>
                        <asp:TextBox ID="TextBox5"  type="date" CssClass="form-control"  runat="server"></asp:TextBox>
                    </td>
                    <td>
                      
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Enter Valid Date" ForeColor="Red" MinimumValue="18" SetFocusOnError="True" Type="Date" MaximumValue="120"></asp:RangeValidator>
                   
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" OnClick="Button1_Click" Text="Generate Bill" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                        <asp:Label ID="Label2" runat="server" ForeColor="#00CC00"></asp:Label>
                    </td>
                </tr>
            </table>
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
