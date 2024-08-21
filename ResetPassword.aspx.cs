using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HMSW
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        String forgotPassRequestId;
        DataTable dt = new DataTable();
        //long id;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            {
                con.Open();
            if(!IsPostBack)
            {
                forgotPassRequestId = Request.QueryString["forgotPassRequestId"];
                if (forgotPassRequestId != null)
                {
                    SqlCommand cmd = new SqlCommand("select userId from forgotPassRequest where id = @id", con);
                    cmd.Parameters.AddWithValue("@id", forgotPassRequestId);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    sda.Fill(dt);
                    if (dt.Rows.Count == 0)
                    {
                        Response.Write("<script>alert('Your password Reset Link is Expried or Invalid !');</script>");
                    }
                }
                else
                {
                    Response.Redirect("ForgotPassword.aspx");
                }
            }

            }
        }

        protected void btRecPass_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(strcon);
            {
                con.Open();

                if (IsPostBack)
                {
                    forgotPassRequestId = Request.QueryString["forgotPassRequestId"];
                    if (forgotPassRequestId != null)
                    {
                        SqlCommand cmd = new SqlCommand("select userId from forgotPassRequest where id = @id", con);
                        cmd.Parameters.AddWithValue("@id", forgotPassRequestId);
                        SqlDataAdapter sda = new SqlDataAdapter(cmd);
                        sda.Fill(dt);
                        if (dt.Rows.Count != 0)
                        {

                            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox1.Text == TextBox2.Text)
                            {
                                string userId = dt.Rows[0]["userId"].ToString();
                               
                                SqlCommand cmd1 = new SqlCommand("update [user] set password='" + TextBox1.Text + "' where id = @userId", con);
                                cmd1.Parameters.AddWithValue("@userId", userId);
                                
                                cmd1.ExecuteNonQuery();
                                SqlCommand cmdDelete = new SqlCommand("delete from forgotPassRequest where id = @id", con);
                                cmdDelete.Parameters.AddWithValue("@id", forgotPassRequestId);

                                cmdDelete.ExecuteNonQuery();
                                Response.Write("<script>alert('Password Reset Sucessfully');</script>");
                                Response.Redirect("userlogin.aspx");

                                con.Close();
                            }
                            else
                            {
                                Response.Write("<script>alert('Somthing Wants Wrong !');</script>");
                            }
                        }
                    }
                    
                }
               

            }
            
        }
    }
}