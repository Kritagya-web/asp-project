using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace login2
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "ESBADM1981" && TextBox2.Text == "Test@123")
            {
                Response.Redirect("admindashboard.aspx?adm=9f90en39n92nd9h39h3x23");
            }
            else
            {
                Response.Write("Unrestricted Activity Detected");
            }
        }
    }
}