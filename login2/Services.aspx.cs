using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace login2
{
    public partial class Services : System.Web.UI.Page
    {
        static string name = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Request.QueryString["custid"];

        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("electricitybillpay.aspx?custid=" +name + "");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {

            Response.Redirect("telephonebillpay.aspx?custid=" + name + "");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {

            Response.Redirect("Credit_Card_Request.aspx?custid=" +name + "");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {

            Response.Redirect("Debit_Card_Request.aspx?custid=" + name + "");
        }
        protected void Button5_Click(object sender, EventArgs e)
        {

            Response.Redirect("ChequeRequest.aspx?custid=" + name + "");
        }
    }
}