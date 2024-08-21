using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HMSW
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String email = TextBox1.Text;
            //try
            //{
            SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                //SqlCommand cmd = new SqlCommand("select * from user where email='" + TextBox1.Text + "'", con);
                SqlCommand cmd = new SqlCommand("select id, fullName from [user] where email = @Email", con);
                cmd.Parameters.AddWithValue("@Email", email);

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                //DataTable dt2 = new DataTable();
                if(dt.Rows.Count != 0)
                {
                    //String myGUID = Guid.NewGuid().ToString();
                    long userId = Convert.ToInt64(dt.Rows[0]["id"]);

                    SqlCommand cmdInsert = new SqlCommand("INSERT INTO forgotPassRequest (userId, requestDateTime) Output Inserted.id values(@UserId, getdate())", con);
                    cmdInsert.Parameters.AddWithValue("@UserId", userId);
                //cmdInsert.Parameters.AddWithValue("@requestDateTime", myGUID);
                //cmdInsert.ExecuteNonQuery();
                long forgotPassRequestId = Convert.ToInt64(cmdInsert.ExecuteScalar());

                //send email
                String userName = dt.Rows[0]["fullName"].ToString();
                String emailBody = "Hi " + userName + ",<br/><br/> Click the link below to reset your password <br/><br/> https://localhost:44301/ResetPassword.aspx?forgotPassRequestId=" + forgotPassRequestId;
                MailMessage PassRecMail = new MailMessage("chirag15.chauhan@gmail.com", email);
                PassRecMail.Body = emailBody;
                PassRecMail.IsBodyHtml= true;
                PassRecMail.Subject = "Reset Password";

                SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
                SMTP.DeliveryMethod = SmtpDeliveryMethod.Network;
                SMTP.UseDefaultCredentials = false;
                SMTP.Credentials = new NetworkCredential()
                {
                    UserName = "chirag15.chauhan@gmail.com",
                    Password = "ytgbqrhatfhxzmik"
                };
                SMTP.EnableSsl = true;
                SMTP.Send(PassRecMail);

                    Response.Write("<script>alert('Check your email to reset your password.');</script>");
                    TextBox1.Text = "";
                }
                else
                {
                    Response.Write("<script>alert('Oops This email id DOES NOT exist in our database !');</script>");
                    TextBox1.Text = "";
                }
        }
    }
}