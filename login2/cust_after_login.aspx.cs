using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace login2
{
    public partial class cust_after_login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename =|DataDirectory|\registration_page.mdf; Integrated Security = True");


        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Request.QueryString["custid"];
            Label2.Text = name;


            try
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                String s = "er";
                cmd.CommandText = "Select Name from cust_profile where Cust_ID=@nam";
                cmd.Parameters.AddWithValue("@nam", name);
                SqlDataReader r = cmd.ExecuteReader();
                if (r.Read())
                {
                    s = r.GetString(0);
                }
                Label1.Text = "Hello " + s;


            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
            finally
            {
                con.Close();
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = Request.QueryString["custid"];

            try
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();

                cmd.CommandText = "delete from cust_register where customer_id=@nam";
                cmd.Parameters.AddWithValue("@nam", name);

                cmd.ExecuteNonQuery();
                Label1.Text = "Your account deactivated sucessfully!";

                Button1.Visible = false;
                Button2.Visible = false;
                Button3.Visible = true;


            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
            finally
            {
                con.Close();
            }

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateProfile.aspx?custid=" + Label2.Text + "");

        }
        protected void Button4_Click(object sender, EventArgs e)
        {
          
                       Response.Redirect("Transaction.aspx?custid=" + Label2.Text + "");
        }
        protected void Button5_Click(object sender, EventArgs e)
        {

            Response.Redirect("Services.aspx?custid=" + Label2.Text + "");
        }

    }
}