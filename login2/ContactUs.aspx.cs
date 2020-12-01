using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace login2
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

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
        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = "Dear, "+TextBox1.Text;
            string email = TextBox2.Text;
            string subject = "Thankyou for your feedback";
            string body = "We have received your query. We will contact you soon. Thanks for using ESB Bank Services.";

            int t = sendEmail(subject, body, name, email);
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            Label1.Text = "Query Received. We will contact you soon.";
        }
    }
}