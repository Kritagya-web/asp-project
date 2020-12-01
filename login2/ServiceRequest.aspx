<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServiceRequest.aspx.cs" Inherits="login2.ServiceRequest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Service Requests</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous" />

<style>
    *{
        margin:0px;
        padding:0px;
        box-sizing:border-box;
    }
    body{
        background-image:url("../Images/texture.png");

    }
    .auto-style1 {
        -ms-flex-line-pack: center!important;
        align-content: center!important;
        text-align: left;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1 class="text-center text-capitalize">Received Requests</h1>
            <br />
            <br />
            <div class="text-center align-content-center">
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Fetch all Requests" OnClick="Button1_Click" />
      </div>
            <br />
            <br />

                <asp:GridView ID="GridView1" runat="server"  class="table table-striped" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="9" ForeColor="Black" CellSpacing="2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
