using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;

namespace login2
{
    public partial class loginpage : System.Web.UI.Page
    {
        //string CS = ConfigurationManager.ConnectionStrings["BankDB"].ConnectionString;
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename =|DataDirectory|\registration_page.mdf; Integrated Security = True");
        static string passwrd = "";
        static string email = "";

        protected void Page_Load(object sender, EventArgs e)
        {
           // display();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.Parameters.AddWithValue("@userid", USERID.Text);
                cmd.Parameters.AddWithValue("@Password", PASSWORD.Text);
                cmd.CommandText = "Select count(*) from Cust_Register where customer_id=@userid  and Password=@Password ;";
                int pass = (int)cmd.ExecuteScalar();
              //  Response.Write(pass);
                cmd.CommandText = "Select count(*) from Cust_Register where customer_id=@userid ;";
                int check = (int)cmd.ExecuteScalar();

                if (pass == 1 && check != 0)
                {

                    Label1.Text=("Login Successfully!");

                    Response.Redirect("cust_after_login.aspx?custid="+ USERID.Text + "");

                }
                else if (check == 0)
                {
                    Label1.Text = ("INVALID USERID");
                }
                else
                {
                    Label1.Text = ("Login declined! Wrong Password");
                }
                USERID.Text = "";
                PASSWORD.Text = "";
            }
            catch
            {
                Label1.Text = ("Login Failed");
            }
            finally
            {
                con.Close();
            }


        }
        //sending email function
        public static int sendEmail(string subject, string body, string name, string recieverEmail)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new System.Net.NetworkCredential("esmartbanker@gmail.com", "thisisapwdesb");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = subject;
            msg.Body = name + "\n " + body;
            string toaddress = recieverEmail;
            msg.To.Add(toaddress);
            string fromaddress = "eSmartBanker <esmartbanker@gmail.com>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);
                return 1;

            }
            catch (Exception)
            {
                return 0;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // fetching password of user id 
            if (USERID.Text == "")
            {
                Label1.Text = "Please Enter User Id to proceed";
            }
            else
            {
                try
                {
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.Parameters.AddWithValue("@userid", USERID.Text);
                    cmd.Parameters.AddWithValue("@Password", PASSWORD.Text);
                    cmd.CommandText = "Select password from Cust_Register where customer_id=@userid;";
                    SqlDataReader r = cmd.ExecuteReader();
                    if (r.Read())
                    {
                        passwrd = r.GetString(0);

                    }
                    cmd.CommandText = "Select Email from Cust_Profile where Cust_ID=@userid;";
                    r.Close();
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.Read())
                    {
                        email = rd.GetString(0);

                    }
                    string subject = "Forgot Password";
                    string body = "We have recovered your password. Please update your password after logging in to " +
                        "secure your account." + "\n" +
                        "Your Customer ID: " + USERID.Text + "\n" +
                        "Your Password is: " + passwrd + "\n" +
                        "Thank You for Banking with us." + "\n" +
                        "Have a Great Day";
                    string name = "Hello, " + USERID.Text;
                    int t = sendEmail(subject, body, name, email);
                    if (t == 1)
                    {
                        Label1.Text = "Please check email for password";
                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
                finally
                {
                    con.Close();
                }
            }

        }
        void display()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\registration_page.mdf;Integrated Security=True");

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            //cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Cust_Register";
            //SqlCommand cmd = new SqlCommand("select * from RegisterTable", con);
            //SqlDataReader dataFinal = cmd.ExecuteReader();
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter sa = new SqlDataAdapter(cmd);
            sa.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }
    }
}