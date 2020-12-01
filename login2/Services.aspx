<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="login2.Services" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Services Page</title>
    
<link rel="stylesheet" href="Css_New/sevices.css" />

</head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous" />

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
    
        <div class="container">
            <h1 class="text-center mt-3 mb-5">Services
            </h1>
           

      

            <div class="ryp ">
                <div class="card col-md-3 mx-3 ">
  <div class="bg-image hover-overlay ripple" data-ripple-color="light">
    <img
      src="../Images/electricity.jpg"
      class="img-fluid"
    />
    <a href="electricitybillpay.aspx">
      <div class="mask" style="background-color: rgba(251, 251, 251, 0.15)"></div>
    </a>
  </div>
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">
      Some quick example text to build on the card title and make up the bulk of the
      card's content.
    </p>
      <asp:Button ID="Button1" runat="server" class="btn btn-secondary btn-lg btn-block btn-warning" Text="Proceed" OnClick="Button1_Click" />

     </div>
                    </div>
                    <div class="card col-md-3 mx-3 ">
  <div class="bg-image hover-overlay ripple" data-ripple-color="light">
    <img
      src="../Images/telephone.png"
      class="img-fluid"
    />
    <a href="telephonebillpay.aspx">
      <div class="mask" style="background-color: rgba(251, 251, 251, 0.15)"></div>
    </a>
  </div>
  <div class="card-body">
    <h5 class="card-title">Postpaid Payment</h5>
    <p class="card-text">
      Some quick example text to build on the card title and make up the bulk of the
      card's content.
    </p>
      <asp:Button ID="Button2" runat="server" class="btn btn-secondary btn-lg btn-block btn-warning" Text="Proceed"  OnClick="Button2_Click" />

    
  </div>
                    </div>
                     <div class="card col-md-3 mx-3 ">
  <div class="bg-image hover-overlay ripple" data-ripple-color="light">
    <img
      src="../Images/creditcard.png"
      class="img-fluid"
    />
    <a href="Credit_Card_Request.aspx">
      <div class="mask" style="background-color: rgba(251, 251, 251, 0.15)"></div>
    </a>
  </div>
  <div class="card-body">
    <h5 class="card-title">Credit Card Request</h5>
    <p class="card-text">
      Some quick example text to build on the card title and make up the bulk of the
      card's content.
    </p>
 <asp:Button ID="Button3" runat="server" class="btn btn-secondary btn-lg btn-block btn-warning" Text="Proceed" OnClick="Button3_Click"/>

   
  </div>
                    </div>

                </div>
            <div class="ryp">
                 <div class="card col-md-3 mx-3 ">
  <div class="bg-image hover-overlay ripple" data-ripple-color="light">
    <img
      src="../Images/debitcard.jpg"
      class="img-fluid"
    />
    <a href="Debit_Card_Request.aspx">
      <div class="mask" style="background-color: rgba(251, 251, 251, 0.15)"></div>
    </a>
  </div>
  <div class="card-body">
    <h5 class="card-title">Debit Card Request</h5>
    <p class="card-text">
      Some quick example text to build on the card title and make up the bulk of the
      card's content.
    </p>
<asp:Button ID="Button4" runat="server" class="btn btn-secondary btn-lg btn-block btn-warning" Text="Proceed" OnClick="Button4_Click" />

   
  </div>
                    </div>
                

                   <div class="card col-md-3 mx-3 ">
  <div class="bg-image hover-overlay ripple mx-auto" data-ripple-color="light">
    <img
      src="../Images/cheque.jpg"
      class="img-fluid"
    />
    <a href="ChequeRequest.aspx">
      <div class="mask" style="background-color: rgba(251, 251, 251, 0.15)"></div>
    </a>
  </div>
  <div class="card-body">
    <h5 class="card-title">Cheque Book Request</h5>
    <p class="card-text">
      Some quick example text to build on the card title and make up the bulk of the
      card's content.
    </p>
      <asp:Button ID="Button5" runat="server" class="btn btn-secondary btn-lg btn-block btn-warning" Text="Proceed" OnClick="Button5_Click"/>

  
  </div>
                    </div>
               


            </div>
            <!--<table class="table">
                <tr>
                    <td class="text-center">

            <asp:ImageButton ID="ImageButton1"  class="image" runat="server" Height="130px" ImageUrl="../Images/electricity.jpg" AlternateText="Electricity Bill Pay" DescriptionUrl="Electricity Bill Pay" PostBackUrl="~/electricitybillpay.aspx" />
                    </td>
                    <td>
            <asp:ImageButton ID="ImageButton2" class="image" runat="server" Height="130px" ImageUrl="../Images/telephone.png" PostBackUrl="~/telephonebillpay.aspx"/>
                    </td>
                    <td>
            <asp:ImageButton ID="ImageButton3" class="image" runat="server" Height="130px" ImageUrl="../Images/cheque.jpg" PostBackUrl="~/ChequeRequest.aspx" />
                    </td>
                </tr>
                <tr>
                    <td class="">

                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="text-center">Electricity Bill Pay</td>
                    <td>Telephone Bill Pay</td>
                    <td>Cheque Book Request</td>
                </tr>
                <tr>
                    <td class="">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-center">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
            <asp:ImageButton ID="ImageButton4" class="image" runat="server" Height="130px" ImageUrl="../Images/debitcard.jpg" PostBackUrl="~/Debit_Card_Request.aspx" />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="ImageButton5" class="image" runat="server" Height="130px" ImageUrl="../Images/creditcard.png" PostBackUrl="~/Credit_Card_Request.aspx" />

          </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>

                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">Debit Card Request&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Credit Card Request</td>
                </tr>
            </table>-->
                
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
