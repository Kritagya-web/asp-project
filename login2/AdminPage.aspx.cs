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
    public partial class AdminPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename =|DataDirectory|\registration_page.mdf; Integrated Security = True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // for checking receiver balance
            string receiverbalance = "1";

            try
            {

                con.Open();
                SqlCommand cmd = con.CreateCommand();


                cmd.Parameters.AddWithValue("@receiveract", Account.Text);

                cmd.CommandText = "Select Balance from Account_Details where Account_No=@receiveract";

                string s = "sender";

                SqlDataReader r = cmd.ExecuteReader();
                if (r.Read())
                {
                    s = r.GetString(0);
                }
                receiverbalance = s;




            }
            catch (Exception ex)
            {
                Test.Text = ex.Message;
            }
            finally
            {
                con.Close();
            }
            Test.Text = receiverbalance;
            //adding money to reveiver
            if (receiverbalance == "sender")
            {
                Test.Text = "Invalid Account NO.";
            }
            else
            {
                try
                {

                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@receiveract", Account.Text);

                    cmd.CommandText = "Update Account_Details set Balance=@amounttosend where Account_No=@receiveract";
                    receiverbalance = Convert.ToString(Convert.ToInt32(receiverbalance) + Convert.ToInt32(Amount.Text));

                    cmd.Parameters.AddWithValue("@amounttosend", receiverbalance);
                    cmd.ExecuteNonQuery();
                    Test.Text = "Credited to Receiver Successfully!! ";


                }

                catch (Exception ex)
                {
                    Test.Text = ex.Message;
                }
                finally
                {
                    con.Close();
                }
            }
        }
    }
}
