using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace login2
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\registration_page.mdf;Integrated Security=True");
                try
                {
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "insert into cust_register values(@cus, @acc, @pass)";
                    cmd.Parameters.AddWithValue("@cus",TextBox1.Text);
                    cmd.Parameters.AddWithValue("@acc", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@pass", TextBox3.Text);            
                    cmd.ExecuteNonQuery();
                    Label5.Text = "Successfully Registered!!";
                    Label6.Text = "1";
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                  //  Server.Transfer("homepage.aspx");

                }
                catch
                {
                    Label5.Text = "Sorry, but this account is already registered!";
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                }
                finally
                {
                    con.Close();
                }
          
            }
        }
    }
}