<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transaction.aspx.cs" Inherits="login2.Transaction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 25px;
        }
        .auto-style3 {
            height: 25px;
            text-align: center;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           
          

            <br />
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Recipient&#39;s Account No: </td>
                    <td>
                        <asp:TextBox ID="RecAccount" runat="server" Height="25px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Amount To send:</td>
                    <td>
                        <asp:TextBox ID="Amount" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Recipient&#39;s Firm:</td>
                    <td>
                        <asp:TextBox ID="Firm" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Transfer Details:</td>
                    <td>
                        <asp:TextBox ID="Details" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Fetch Details" />
                    </td>
                    <td class="auto-style2"></td>
                </tr>
            </table>

        </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
&nbsp;<asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
        </p>
        <table class="auto-style1">
            <tr>
                <td>Sender&#39;s Name:</td>
                <td>
                    <asp:TextBox ID="Sendername" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Recipient&#39;s Name:</td>
                <td>
                    <asp:TextBox ID="Receivername" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Amount to Send:</td>
                <td>
                    <asp:TextBox ID="AmountToSend" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Generate OTP" />
                    <br />
                    <br />
                    <asp:TextBox ID="OTPTextBox" runat="server" Visible="False"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
        </table>
        <p class="auto-style4">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Confirm" Visible="False" />
                </p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server"></asp:Label>
&nbsp;<asp:Label ID="Label4" runat="server"></asp:Label>
            <asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="Label6" runat="server"></asp:Label>
            <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black">
                <AlternatingItemStyle BackColor="PaleGoldenrod" />
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td>Sent To:</td>
                            <td>
                                <asp:Label ID="Label10" runat="server" Text='<%# Eval("Credit_Account_No") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Amount: </td>
                            <td>
                                <asp:Label ID="Label11" runat="server" Text='<%# Eval("Amount") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Transaction Type:</td>
                            <td>
                                <asp:Label ID="Label12" runat="server" Text='<%# Eval("Transaction_Type") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Transaction Date:</td>
                            <td>
                                <asp:Label ID="Label13" runat="server" Text='<%# Eval("Transaction_Date") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Transaction Details:</td>
                            <td>
                                <asp:Label ID="Label14" runat="server" Text='<%# Eval("Transaction_Details") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            </asp:DataList>
        </p>
        <p id="datase">
            &nbsp;</p>
        <p>
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" />
        </p>
        <asp:Label ID="Label7" runat="server"></asp:Label>
    </form>
</body>
</html>
