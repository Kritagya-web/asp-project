<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="electricitybillpay.aspx.cs" Inherits="login2.electricitybillpay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Electricity Bill Payment</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            Electricity Bill Payment<br />
            <br />
            <table class="auto-style2">
                <tr>
                    <td>Enter Customer ID:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="This is Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Enter Valid Customer ID" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^(ESB)\d{5}"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Fetch Details" />
                        <br />
                        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <div class="auto-style1">
                <br />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Balance Check" />
                <br />
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button3" runat="server" Text="" OnClick="Button3_Click" />
                <br />
                <asp:Label ID="Label3" runat="server" ForeColor="#00CC00"></asp:Label>
                <asp:Label ID="Label4" runat="server"></asp:Label>
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </div>
        </asp:Panel>
    </form>
</body>
</html>
