using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HMSW
{
    public partial class AdminMemberManagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();

            try
            {
                if (Session["userId"] == null)
                {
                    //Response.Write("<script>alert('Session Expired Login Again');</script>");
                    Response.Redirect("userlogin.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        // Member Id Go button
        protected void Button2_Click(object sender, EventArgs e)
        {
            //System.NullReferenceException: 'Object reference not set to an instance of an object.'
             getMemberById();

        }

        // Active button
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            updateMemberById("active");
        }

        // Pending button
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            updateMemberById("panding");
        }

        // Deactive button
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            updateMemberById("deactive");
        }

        // Delete button
        protected void Button3_Click(object sender, EventArgs e)
        {
            deleteMemberById();
        }

        // User define functon

        void getMemberById()
        {
            //string userId;

            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("SELECT * FROM [user] WHERE id='" + TextBox4.Text.Trim() + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    TextBox1.Text = dr.GetValue(1).ToString(); // Name textbox
                    TextBox2.Text = dr.GetValue(2).ToString(); // DoB textbox
                    TextBox10.Text = dr.GetValue(3).ToString(); // Gender textbox
                    TextBox9.Text = dr.GetValue(4).ToString(); // Blood Group textbox
                    TextBox3.Text = dr.GetValue(5).ToString(); // Phone no textbox
                    TextBox5.Text = dr.GetValue(6).ToString(); // Address textbox
                    TextBox8.Text = dr.GetValue(7).ToString(); // Email textbox

                    // System.IndexOutOfRangeException: 'Index was outside the bounds of the array.'(solved)

                    //TextBox6.Text = dr.GetValue(9).ToString(); // Permission textbox 
                    TextBox7.Text = dr.GetValue(10).ToString(); // Status textbox 
                }
            }
            else
            {
                Response.Write("<script>alert('Member Is Not Exists In Database');</script>");

            }
        }


        // Update Member Status & permission By id function
        void updateMemberById(string status)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("UPDATE [user] SET accountStatus='" + status + "', permission=@Permission WHERE id='" + TextBox4.Text.Trim() + "'", con);
            cmd.Parameters.AddWithValue("@Permission", DropDownList1.SelectedItem.Value);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            Response.Write("<script>alert('Member Updated Sucessfully');</script>");
        }

        // delete member By id function
        void deleteMemberById()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("DELETE FROM [user] WHERE id='" + TextBox4.Text.Trim() + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Member Deleted Sucessfully');</script>");
            clearForm();
            GridView1.DataBind();

        }

        // Clear Form
        void clearForm()
        {
            TextBox4.Text = ""; // id textbox
            TextBox1.Text = ""; // Name textbox
            TextBox2.Text = ""; // DoB textbox
            TextBox10.Text = ""; // Gender textbox
            TextBox9.Text = ""; // Blood Group textbox
            TextBox3.Text = ""; // Phone no textbox
            TextBox5.Text = ""; // Address textbox
            TextBox8.Text = ""; // Email textbox
            TextBox7.Text = ""; // Status textbox 
        }
    }
}