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
    public partial class BillManager : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename =|DataDirectory|\registration_page.mdf; Integrated Security = True");

        protected void Page_Load(object sender, EventArgs e)
        {
            ///  Response.Write(DateTime.Now.AddYears(100).ToShortDateString());
            // Response.Write(DateTime.Now.ToShortDateString());

            RangeValidator1.MaximumValue = DateTime.Now.AddYears(100).ToShortDateString();
            RangeValidator1.MinimumValue = DateTime.Now.ToShortDateString();
              RangeValidator2.MaximumValue = DateTime.Now.AddYears(100).ToShortDateString();
            RangeValidator2.MinimumValue = DateTime.Now.ToShortDateString();

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
        public void generateElectricityBill(string cust_Id, int electricity, string date)
        {
            try
            {

                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@custid",cust_Id);
                cmd.Parameters.AddWithValue("@bill", electricity);
                cmd.Parameters.AddWithValue("@duedate", date);
                // for checking if cust_id already exists in bill table
                cmd.CommandText = "Select count(Electricity_Bill) from Bill where Cust_Id=@custid";
                int t = (int)(cmd.ExecuteScalar());
                if (t == 0)
                {
                    cmd.CommandText = "insert into Bill (Cust_Id,Electricity_Bill,Due_Date_Electricity) values (@custid,@bill,@duedate)";
                    cmd.ExecuteNonQuery();
                    //Response.Write("New Bill Generated!!");
                }
                else
                {
                    cmd.CommandText = "update bill set Electricity_Bill=@bill , Due_Date_Electricity=@duedate where Cust_Id=@custid";
                    cmd.ExecuteNonQuery();
                  //  Response.Write("Old Bill Updated!!!");
                }
              //  Response.Write("Electricity Response "+t);

            }

            catch (Exception ex)
            {
                Response.Write( ex.Message);
            }
            finally
            {
                con.Close();
            }
        }
        public void generateTelephoneBill(string cust_Id, int electricity, string date)
        {
            try
            {

                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@custid", cust_Id);
                cmd.Parameters.AddWithValue("@bill", electricity);
                cmd.Parameters.AddWithValue("@duedate", date);
                // for checking if cust_id already exists in bill table
                cmd.CommandText = "Select count(Telephone_Bill) from Bill where Cust_Id=@custid ";
                int t = (int)(cmd.ExecuteScalar());
              //  Response.Write("Value of t is " + t);
                if (t == 0)
                {
                    cmd.CommandText = "insert into Bill (Cust_Id,Telephone_Bill,Due_Date_Telephone) values (@custid,@bill,@duedate)";
                    cmd.ExecuteNonQuery();
                   // Response.Write("New Telephone Bill Generated!!");
                }
                else 
                {
                    cmd.CommandText = "update Bill set Telephone_Bill=@bill , Due_Date_Telephone=@duedate where Cust_Id=@custid";
                    cmd.ExecuteNonQuery();
                  //  Response.Write("Old Telephone Bill Updated!!!");
                }
               // Response.Write("Telephone Response " + t);

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
        public string fetchEmail(string custid)
        {
            try
            {

                con.Open();
                SqlCommand cmd = con.CreateCommand();


                cmd.Parameters.AddWithValue("@senderid", custid);

                cmd.CommandText = "Select Email from cust_profile where Cust_ID=@senderid";

                string s = "sender@gmail.com";
           

                SqlDataReader r = cmd.ExecuteReader();
                if (r.Read())
                {
                    s = r.GetString(0);
                   
                }


                return s;
                //    Response.Write(senderEmailId);
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
            finally
            {
                con.Close();
            }
            return "0";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string custid = TextBox1.Text;
            string dateelectricity = TextBox4.Text;
            string datetelephone = TextBox5.Text;

            if (TextBox2.Text!="" & TextBox3.Text=="")
            {
                if (TextBox4.Text != "")
                {
                    int electricity = Convert.ToInt32(TextBox2.Text);
                    generateElectricityBill(custid, electricity, dateelectricity);
                    Label1.Text = "";
                    Label2.Text = "Bill generated successfully";
                    string email = fetchEmail(custid);
                    if (email != "0")
                    {
                        string subject = "New Bill Generated!!";
                        string body = "Your Electricity Bill has been generated amounting to Rs." + electricity +
                            " and due date is " + dateelectricity+". Please pay before due date to avoid fine.";
                        string name = custid;

                        sendEmail(subject, body, name, email);
                    }
                    else
                    {
                        Response.Write("Your email id is not registered in our records");
                    }
                    
                }
                else
                {
                    Label1.Text = "Please enter due date for electricity bill";
                }
            }
            else if (TextBox2.Text== "" & TextBox3.Text != "")
            {
                if (TextBox5.Text != "")
                {
                    int telephone = Convert.ToInt32(TextBox3.Text);
                    generateTelephoneBill(custid, telephone, datetelephone);
                    Label1.Text = "";
                    Label2.Text = "Bill generated successfully";
                    string email = fetchEmail(custid);
                    if (email != "0")
                    {
                        string subject = "New Bill Generated!!";
                        string body = "Your Telephone Bill has been generated amounting to Rs." + telephone +
                            " and due date is " + datetelephone + ". Please pay before due date to avoid fine.";
                        string name = custid;

                        sendEmail(subject, body, name, email);
                    }
                    else
                    {
                        Response.Write("Your email id is not registered in our records");
                    }
                }
                else
                {
                    Label1.Text = "Please enter due date for telephone bill";

                }

            }
            else if(TextBox2.Text != "" & TextBox3.Text != "")
            {
                if (TextBox4.Text != "" && TextBox5.Text != "")
                {
                    int electricity = Convert.ToInt32(TextBox2.Text);
                    int telephone = Convert.ToInt32(TextBox3.Text);
                    generateElectricityBill(custid, electricity, dateelectricity);
                    generateTelephoneBill(custid, telephone, datetelephone);
                    Label1.Text = "";
                    Label2.Text = "Bill generated successfully";
                    string email = fetchEmail(custid);
                    if (email != "0")
                    {
                        string subject = "New Bill Generated!!";
                        string body = "Your Electricity Bill  & Telephone Bill has been generated amounting to Rs." + electricity +
                            " & Rs."+telephone+" respectively.Due date for Electricity Bill is "+dateelectricity+" & due " +
                            "date for telephone bill is "+datetelephone+ ". Plese pay before due date to avoid fine";
                        string name = custid;

                        sendEmail(subject, body, name, email);
                    }
                    else
                    {
                        Response.Write("Your email id is not registered in our records");
                    }
                }
                else
                {
                    Label1.Text = "Please enter due dates";
                }

            }
            else
            {
                Label1.Text = "Please enter atleast one of electricity or telephone bill";
            }
        }
    }
}