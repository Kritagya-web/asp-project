<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="login2.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact US</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
        integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw=="
        crossorigin="anonymous" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="Css_New/contactus.css" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="buttons">
            <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Go to Home" PostBackUrl="~/homepage.aspx" CausesValidation="False" />
        </div>
        <div id="container">
             <!-- ********************contact us starts**************** -->
    <section class="contactus" id="contactid">
        <div class="container headings text-center">
            <h1 class="text-center font-weight-bold ">Contact Us </h1>
            <p class="text-capitalize pt-10">We're here to help and answer any question you might have. We will ensure
                to contact you as early as possible &#128515; </p>


        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-10 offset-lg-2 offset-md-2 offset-1 ">
                    
                        <div class="form-group">
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter Username" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This is Required" Display="Dynamic" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Enter Email" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This is Required" Display="Dynamic" ControlToValidate="TextBox2" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Email" ControlToValidate="TextBox2" Display="Dynamic" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                        
                        </div>
                        <div class="form-group">

                            <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Enter Mobile" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This is Required" Display="Dynamic" ControlToValidate="TextBox3" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                       
                        </div>
                        <div class="form-group">

                            
                            <textarea id="TextArea1" class="form-control" runat="server" cols="20" rows="4" placeholder="Enter Your Message"></textarea>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This is Required" Display="Dynamic" ControlToValidate="TextArea1" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                       
                        </div>
                        <div class="d-flex justify-content-center ">
                            <asp:Button ID="Button1" runat="server" class="btn btn-primary form-button" Text="Submit" OnClick="Button1_Click" />
                        </div>
                            <asp:Label ID="Label1" runat="server" ForeColor="White" Font-Size="X-Large"></asp:Label>
                 
                </div>
            </div>
        </div>
    </section>
    <!-- ********************contact us ends**************** -->
        </div>
    </form>
</body>
</html>
