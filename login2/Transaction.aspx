<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transaction.aspx.cs" Inherits="login2.Transaction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    
    <style type="text/css">
          #accountstatement{
            display:flex;
            justify-content:center;
            
            height:300px;
            width:100vw;
            border:2px solid black;
            overflow:auto;
            text-align:center;
            align-items:center;

        }
        #DataList1{
        
        }
        .container{
            display:flex;
            flex-direction:column;
            align-items:center;
            justify-content:center;
        }
        .detailsdiv{
            display:none;
        }
       
        .auto-style1 {
            text-align: center;
        }
       .maintable{

       }
       .maintable tr{

       }
       .datalistmy{
              /* border: 2px solid black;*/
    height: 483px;
    overflow: auto;
    position: relative;
    top: -425px;
    left: -477px;
       }
       .accountlabel{
               position: relative;
    top: -439px;
    font-size: 26px;
    font-weight: 800;
    left: -475px;
       }
      /*.afterdetailsfetch{
          display:none;
       }
    #detailstable{
        display:none;
    }*/
    </style>
   
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
           
          <h1>Transfer Money </h1>

            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Check Your Balance" />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label16" runat="server"></asp:Label>

            <br />
            <table class="table maintable table-striped">
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
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RecAccount" Display="Dynamic" ErrorMessage="This is Required." ForeColor="Red" SetFocusOnError="True" ValidationGroup="maintable"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Amount To send:</td>
                    <td>
                        <asp:TextBox ID="Amount" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Amount" Display="Dynamic" ErrorMessage="This is Required." ForeColor="Red" SetFocusOnError="True" ValidationGroup="maintable"></asp:RequiredFieldValidator>
                    </td>
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
                    <td class="auto-style1" colspan="3">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Fetch Details" ValidationGroup="maintable" />
                    </td>
                </tr>
            </table>

        
        <p>

            <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:Label ID="Label15" runat="server" ForeColor="Red"></asp:Label>
        </p>
       <div class="afterdetailsfetch"> 
        <table class="table secondtable" id="detailstable">
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
                <td class="auto-style1" colspan="2">
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Generate OTP" Visible="False" />
                    <br />
                    <br />
                    <asp:TextBox ID="OTPTextBox" runat="server" Visible="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="OTPTextBox" Display="Dynamic" ErrorMessage="This is Required." ForeColor="Red" SetFocusOnError="True" ValidationGroup="otp"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                </td>
            </tr>
        </table>
           </div>
      
        
   <asp:Label ID="Label3" runat="server"></asp:Label>
      
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Confirm" Visible="False" ValidationGroup="otp" />
               
      
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Account Statement" />
               
        
<asp:Label ID="Label4" runat="server"></asp:Label>
            <asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="Label6" runat="server"></asp:Label>
       <br />
       <br />
            <div class="accountlabel"><asp:Label ID="Label8" runat="server" Text="Your Account Statement" Visible="false"></asp:Label></div>
           <div class="datalistmy"> 
               
               <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="5" ForeColor="Black" CssClass="">
                <AlternatingItemStyle BackColor="PaleGoldenrod" />
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <ItemTemplate>
                    <table class="table datalisttable">
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
               
              </div>  
           <!--   <asp:GridView ID="GridView1" runat="server"></asp:GridView>
              -->
         
        
        <asp:Label ID="Label7" runat="server"></asp:Label>
            </div>
    </form>
     
</body>
</html>
