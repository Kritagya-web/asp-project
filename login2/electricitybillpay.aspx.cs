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
    public partial class electricitybillpay : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename =|DataDirectory|\registration_page.mdf; Integrated Security = True");

        static int billamt = 0;
        static int flag = 0;
        static int balance = 0;
        static int f = 0;
        static string date = DateTime.Now.ToString();
        static string email = "";

        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //fetching electricity bill 

            try
            {

                con.Open();
                SqlCommand cmd = con.CreateCommand();
                string custid = TextBox1.Text;


                cmd.Parameters.AddWithValue("@custid", custid);

                cmd.CommandText = "Select Electricity_Bill from Bill where Cust_Id=@custid";

                //Int64 s = 0;
                int amt = 0;
            

                bool p = int.TryParse(Convert.ToString(cmd.ExecuteScalar()),out amt) ;

                billamt = Convert.ToInt32(amt);
                if (amt == -1)
                {
                    billamt = -1;
                }
                //Response.Write(billamt);
               // Response.Write(p);
                if ( !p || billamt==-1 )
                {
                    Label1.Text = "Sorry Your Bill has not been generated yet.";
                    Panel1.Visible = false;
                    flag = 0;
                }
               
                else
                {
                  
                    flag = 1;
                }

              //  Response.Write(amt);
                //   Label16.Text = "Your Current balance is " + balancecheck;

            }
            catch (Exception ex)
            {
                // Label16.Text = ex.Message;
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }
            // if bill found then find due date
            if (flag == 1)
            {
                try
                {

                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    string custid = TextBox1.Text;


                    cmd.Parameters.AddWithValue("@custid", custid);

                    cmd.CommandText = "Select Due_Date_Electricity from Bill where Cust_Id=@custid";

                    //Int64 s = 0;

                    string date="Date";
                    SqlDataReader r = cmd.ExecuteReader();
                    if (r.Read())
                    {
                        date = r.GetString(0);
                    }

                    
                        Label1.Text = "Your Electricity Bill Amount is: " + billamt +" & due date is "+ date;
                    Panel1.Visible = true;
                    Button3.Text = "Pay Electricity Bill Worth Rs." + billamt;

                    //  Response.Write(amt);
                    //   Label16.Text = "Your Current balance is " + balancecheck;

                }
                catch (Exception ex)
                {
                    // Label16.Text = ex.Message;
                    Response.Write(ex.Message);
                }
                finally
                {
                    con.Close();
                }


            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //checking balance

        

            try
            {
               
                con.Open();
                SqlCommand cmd = con.CreateCommand();


                cmd.Parameters.AddWithValue("@custid", TextBox1.Text);
                // STORED PROCEDURE BalanceCheck for checking current account balance
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "BalanceCheck";
                SqlDataReader r = cmd.ExecuteReader();
                string s = "0";
                if (r.Read())
                {
                    s = r.GetString(0);
                }
                balance = Convert.ToInt32(s);

              
                Label2.Text = "Your Current balance is " + balance;

            }
            catch (Exception ex)
            {
                Label2.Text = ex.Message;
            }
            finally
            {
                con.Close();
            }
          
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
            protected void Button3_Click(object sender, EventArgs e)
        {
            //checking if required balance is maintained
            if (balance - 500 > billamt)
            {
                // updating bill table for electricity
                try
                {

                    con.Open();
                    SqlCommand cmd = con.CreateCommand();


                   

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "BillPaymentElectricity";
                    cmd.Parameters.AddWithValue("@custid", TextBox1.Text);
                    cmd.ExecuteNonQuery();
                    Label3.Text = "Your Transaction is Successful!!";



                }
                catch (Exception ex)
                {
                    Label3.Text = ex.Message;
                  
                }
                finally
                {
                    con.Close();
                }
                // adding entry to All_Transactions_New table
                try
                {

                    con.Open();
                    SqlCommand cmd = con.CreateCommand();




                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "All_Transactions_Entry";
                    cmd.Parameters.AddWithValue("@custid", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@creditaccount", "Electricity Board");
                    cmd.Parameters.AddWithValue("@debitaccount", "Your Account");
                    cmd.Parameters.AddWithValue("@date", date);
                    cmd.Parameters.AddWithValue("@amount", billamt);
                    cmd.Parameters.AddWithValue("@transactiontype", "DEBIT");
                    cmd.Parameters.AddWithValue("@firmname", "Not Supplied");
                    cmd.Parameters.AddWithValue("@transactiondetails", "Electricity Bill Payment");
                    cmd.ExecuteNonQuery();
                  //  Label4.Text = "Added entry";



                }
                catch (Exception ex)
                {
                    Label4.Text = ex.Message;

                }
                finally
                {
                    con.Close();
                }
                // updating account balance in Account_Details Table
                try
                {
                  
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "Account_Details_Table_Update";
                    balance = balance - billamt;
                    string balanceleft = balance.ToString();

                    cmd.Parameters.AddWithValue("@balance",balanceleft);
                    cmd.Parameters.AddWithValue("@custid", TextBox1.Text);
                    cmd.ExecuteNonQuery();
                 //   Label5.Text = "subtracted from sendder";

                }

                catch (Exception ex)
                {
                    Label5.Text = ex.Message;
                }
                finally
                {
                    con.Close();
                }

                //getting payers email
                try
                {

                    con.Open();
                    SqlCommand cmd = con.CreateCommand();


                    cmd.Parameters.AddWithValue("@senderid", TextBox1.Text);

                    cmd.CommandText = "Select Email from cust_profile where Cust_ID=@senderid";

                    string s = "sender";
                    
                    SqlDataReader r = cmd.ExecuteReader();
                    if (r.Read())
                    {
                        s = r.GetString(0);
                      
                    }

                    email = s;
         
                    //   Response.Write(senderEmailId);
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
                finally
                {
                    con.Close();
                }
                // sending email
                string subject = "Bill Payment Successful!!";
                string body = " Your recent Electricity Bill worth Rs." + billamt + " has been paid successfully.";
                string name = "Hello, " + TextBox1.Text + ":)";
                string receiverEmail = email;
              int t=  sendEmail(subject, body, name, receiverEmail);
                Response.Write(t);

            }
            else
            {
                Label3.Text = "Sorry Insufficient Funds to proceed!!";
            }
        }
    }
}