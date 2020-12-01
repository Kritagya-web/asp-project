
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admindashboard.aspx.cs" Inherits="login2.admindashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>
    
<link rel="stylesheet" href="Css_New/sevices.css" />
    <style>
    body{
        background-image:url("../Images/servicebg.jpg");
        background-size: 100% 100%;
    }
</style>
</head>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous" />

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
    
        <div class="container">
            <h1 class="text-center mt-3 mb-5">Admin Dashboard
            </h1>
           

      

            <div class="ryp ">
                <div class="card col-md-3 mx-3 ">
  <div class="bg-image hover-overlay ripple" data-ripple-color="light">
    <img
      src="../Images/addmoney.png"
      class="img-fluid"
    />
    <a href="AdminPage.aspx">
      <div class="mask" style="background-color: rgba(251, 251, 251, 0.15)"></div>
    </a>
  </div>
  <div class="card-body">
    <h5 class="card-title">Add/subtract Money</h5>
    <p class="card-text">
      Some quick example text to build on the card title and make up the bulk of the
      card's content.
    </p>
      <asp:Button ID="Button1" runat="server" class="btn btn-secondary btn-lg btn-block btn-warning" Text="Proceed"  PostBackUrl="~/AdminPage.aspx" />

     </div>
                    </div>
                    <div class="card col-md-3 mx-3 ">
  <div class="bg-image hover-overlay ripple" data-ripple-color="light">
    <img
      src="../Images/billmgmt.png"
      class="img-fluid"
    />
    <a href="BillManager.aspx">
      <div class="mask" style="background-color: rgba(251, 251, 251, 0.15)"></div>
    </a>
  </div>
  <div class="card-body">
    <h5 class="card-title">Bill Management</h5>
    <p class="card-text">
      Some quick example text to build on the card title and make up the bulk of the
      card's content.
    </p>
      <asp:Button ID="Button2" runat="server" class="btn btn-secondary btn-lg btn-block btn-warning" Text="Proceed"  PostBackUrl="~/BillManager.aspx" />

    
  </div>
                    </div>
                     <div class="card col-md-3 mx-3 ">
  <div class="bg-image hover-overlay ripple" data-ripple-color="light">
    <img
      src="../Images/ser.jpg"
      class="img-fluid"
    />
    <a href="ServiceRequest.aspx">
      <div class="mask" style="background-color: rgba(251, 251, 251, 0.15)"></div>
    </a>
  </div>
  <div class="card-body">
    <h5 class="card-title">All Service Requests</h5>
    <p class="card-text">
      Some quick example text to build on the card title and make up the bulk of the
      card's content.
    </p>
 <asp:Button ID="Button3" runat="server" class="btn btn-secondary btn-lg btn-block btn-warning" Text="Proceed"  PostBackUrl="~/ServiceRequest.aspx" />

   
  </div>
                    </div>

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
