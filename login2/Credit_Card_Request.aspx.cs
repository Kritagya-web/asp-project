
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

namespace login2
{


    public partial class Credit_Card_Request : System.Web.UI.Page
    {
        static string name = "";
        static string account = "";
        static string email = "";
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename =|DataDirectory|\registration_page.mdf; Integrated Security = True");

        protected void Page_Load(object sender, EventArgs e)
        {
            string n = Request.QueryString["custid"];
            TextBox1.Text = n;

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("cust_after_login.aspx?custid=" + TextBox1.Text + "");


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            try
           
            {

                con.Open();
                SqlCommand cmd = con.CreateCommand();

                string service = "Credit_Card_Type_" + DropDownList1.Text + "_Mode_" + RadioButtonList1.Text;
                string date = DateTime.Now.ToString();

                cmd.Parameters.AddWithValue("@custid", TextBox1.Text);
                cmd.Parameters.AddWithValue("@account", TextBox2.Text);
                cmd.Parameters.AddWithValue("@name", TextBox3.Text);
                cmd.Parameters.AddWithValue("@firmname", TextBox4.Text);
                cmd.Parameters.AddWithValue("@service", service);
                cmd.Parameters.AddWithValue("@date", date);

                cmd.CommandText = "Insert into Service_Requests (CustomerID,Name,Firm_Name,Account_No,Service_Requested,Date) values (@custid," +
                    "@name,@firmname,@account,@service,@date) ";
                cmd.ExecuteNonQuery();
                //   Response.Write("Success");
                //sending email
                string subject = "Credit Card Requested";
                string body = "You have successfully placed Credit Card request.This request will be processed " +
                    "within 7 working days." + "\n" +
                    "Thanks for Banking With ESB!!" + "\n" +
                    "Have a Great Day!!!";
                string receiverEmail = email;
                string salutation = "Dear " + name + " ,";
                int t = sendEmail(subject, body, salutation, receiverEmail);
                Label1.Text = "Success";
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
        
            protected void Button2_Click(object sender, EventArgs e)
        {
            // fetching name, email and account number from Account_Details Table
            // for getting sender's name and Email


           
            try
            {

                con.Open();
                SqlCommand cmd = con.CreateCommand();


                cmd.Parameters.AddWithValue("@senderid", TextBox1.Text);

                cmd.CommandText = "Select Name,Email,Account_No from cust_profile where Cust_ID=@senderid";




                SqlDataReader r = cmd.ExecuteReader();
                if (r.Read())
                {
                    name = r.GetString(0);
                    email = r.GetString(1);
                    account = r.GetString(2);
                }



                // Response.Write(name);
                // Response.Write(email);
                // Response.Write(account);
                Panel1.Visible = true;
                TextBox2.Text = account;
                TextBox3.Text = name;
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

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
        
    }
}