<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="login2.Services" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            Services<br />
            <br />
            <br />
            <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" ImageUrl="../Images/electricity.jpg" />
&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton2" runat="server" Height="100px" ImageUrl="../Images/telephone.png" />
&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton3" runat="server" Height="100px" ImageUrl="../Images/atm.jpg" />
        </div>
    </form>
</body>
</html>
