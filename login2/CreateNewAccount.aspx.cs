using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Sockets;
using System.Net;
using System.Net.Mail;

namespace login2
{
    public partial class CreateNewAccount : System.Web.UI.Page
    {
        static int flag = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            RangeValidator1.MinimumValue = DateTime.Now.AddYears(-100).ToShortDateString();
            RangeValidator1.MaximumValue = DateTime.Now.AddYears(-18).ToShortDateString();
        }



        protected void TextLN_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextMN_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextCust_TextChanged(object sender, EventArgs e)
        {
            Random rand = new Random();
            int n = rand.Next(0, 100000);
            TextCust.Text = "ESB" + n;

        }

        protected void TextCpass_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("homepage.aspx");
        }

        protected void TextMob_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox10_TextChanged(object sender, EventArgs e)
        {
            Random rand = new Random();
            int number = rand.Next(100000);
            TextAccount.Text = "36547" + (number);
        }
        //Sending Email Function
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
            Panel1.Visible = false;
            //  Label1.Text = "Added entry to Account_Details table";
            TextFN.Text = "";
            TextDOB.Text = "";
            RadioButtonList1.Text = "";
            TextMob.Text = "";
            TextMail.Text = "";
            Address.Text = "";
            TextAdc.Text = "";
            TextPan.Text = "";

        }
        protected void Button2_Click(object sender, EventArgs e)
        {

            Random rand = new Random();
            int n = rand.Next(0, 100000);
            string custid = "ESB" + n;
            //         TextCust.Text = "ESB" + n;
            int number = rand.Next(100000);
            string account = "36547" + (number);
            //      TextAccount.Text = "36547" + (number);

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\registration_page.mdf;Integrated Security=True");
            try
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                string DOB = Convert.ToString(TextDOB.Text);
                // Response.Write(DOB);
                // Response.Write(DOB);
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into cust_profile values(@name,@dob,@actype," +
                    "@mob,@email,@address,@aadhar,@pan,@custid,@account)";
                cmd.Parameters.AddWithValue("@name", TextFN.Text);
                cmd.Parameters.AddWithValue("@dob", DOB);
                cmd.Parameters.AddWithValue("@actype", RadioButtonList1.Text);
                cmd.Parameters.AddWithValue("@mob", TextMob.Text);
                cmd.Parameters.AddWithValue("@email", TextMail.Text);
                cmd.Parameters.AddWithValue("@address", Address.Text);
                cmd.Parameters.AddWithValue("@aadhar", TextAdc.Text);
                cmd.Parameters.AddWithValue("@pan", TextPan.Text);
                cmd.Parameters.AddWithValue("@custid", custid);
                cmd.Parameters.AddWithValue("@account", account);
                cmd.ExecuteNonQuery();

                TextAccount.Text = "36547" + (number);
                TextCust.Text = "ESB" + n;
                //  sendEmail(subject,body,)
                string subject = "Welcome to ESB Family!!";
                string body = "Your Account has been created Successfully." +
                    "Your Account no. is " + account + " & Cust ID is " + custid + " . Click on Register Now button to continue";
                string name = TextFN.Text;
                string email = TextMail.Text;
                int t = sendEmail(subject, body, name, email);

                flag = 1;
            }
            catch (Exception ex)
            {
                TextCust.Text = "Sorry Pls Try Again";
                TextAccount.Text = ex.Message;
            }
            finally
            {
                con.Close();
            }
            if (flag == 1)
            {
                //adding entry to Account_Details table
                try
                {

                    con.Open();
                    SqlCommand cmd2 = con.CreateCommand();
                    cmd2.CommandType = CommandType.Text;
                    cmd2.Parameters.AddWithValue("@accountno", account);
                    cmd2.Parameters.AddWithValue("@custid", custid);
                    cmd2.Parameters.AddWithValue("@amt", "5000");


                    cmd2.CommandText = "Insert into Account_Details values (@custid,@accountno,@amt)";

                    cmd2.ExecuteNonQuery();

                  

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
            Panel1.Visible = true;
        }
    }
    
}