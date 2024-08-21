using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HMSW
{
    public partial class usersignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            //TextBox2.Text = "Date Of Birth (dd-mm-yyyy)";
        }

        //sign up button click event
        protected void Button1_Click(object sender, EventArgs e)
        {
            // Response.Write("<script>alert('Testing');</script>");
            //string fullName = TextBox1.Text.Trim();
           try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO [user] (fullName, dateOfBirth, gender, bloodGroup, phoneNo, address, email, password, permission, accountStatus) values(@FullName, @DateOfBirth, @Gender, @BloodGroup ,@PhoneNo, @Address ,@Email ,@Password, @Permission, @AccountStatus)", con);


                cmd.Parameters.AddWithValue("@FullName",TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("DateOfBirth",TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@BloodGroup", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@PhoneNo", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@Permission", "user" );
                cmd.Parameters.AddWithValue("@AccountStatus", "active" );

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign Up Sucessfull. Go to User Login to Login');</script>");
                ClearForm();
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        void ClearForm()
        {
            //DropDownList1.SelectedItem.Value = "-1";
            //DropDownList2.Text = "-1";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox5.Text = "";
            TextBox8.Text = "";
            TextBox7.Text = "";
        }
    }
}