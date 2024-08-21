using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection;

namespace HMSW
{
    public partial class UserProfile : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["fullname"] == null)
                {
                    //Response.Write("<script>alert('Session Expired Login Again');</script>");
                    Response.Redirect("userlogin.aspx");
                }
                else
                {
                    getUserAppointmentData();
                    if(!Page.IsPostBack) 
                    {
                        getUserPersonalDetails();
                    }
                    //if(!IsPostBack) 
                    //{
                    //    getUserPersonalDetails();
                    //}
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                //Response.Write("<script>alert('Session Expired Login Again');</script>");
                //Response.Redirect("userlogin.aspx");
            }
        }

        // Update button 
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["fullname"] == null)
            {
                Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("userlogin.aspx");
            }
            else
            {
                updateUserPersonalDetails();
            }
            //getUserPersonalDetails();
        }

        // User define functions

        //void getUserData()
        //{
        //    SqlConnection con = new SqlConnection(strcon);
        //    if (con.State == ConnectionState.Closed)
        //    {
        //        con.Open();
        //    }

        //    SqlCommand cmd = new SqlCommand("SELECT id, email, fullname, dateOfBirth, gender, bloodGroup, phoneNo, address, password, FROM [user] where id='" + Session["userId"].ToString() + "'", con);
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);

        //    GridView1.DataSource = dt;
        //    GridView1.DataBind();
          
        //}

        // Get user personal data
        void getUserPersonalDetails()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT id, email, fullName, dateOfBirth, gender, bloodGroup, phoneNo, address, password, accountStatus FROM [user] where id='" + Session["userId"].ToString() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                TextBox1.Text = dt.Rows[0]["fullName"].ToString();
                TextBox2.Text = dt.Rows[0]["dateOfBirth"].ToString();
                DropDownList1.SelectedValue = dt.Rows[0]["gender"].ToString().Trim();
                DropDownList2.SelectedValue = dt.Rows[0]["bloodGroup"].ToString().Trim();
                TextBox3.Text = dt.Rows[0]["phoneNo"].ToString();
                TextBox5.Text = dt.Rows[0]["address"].ToString();
                TextBox8.Text = dt.Rows[0]["email"].ToString();
                TextBox7.Text = dt.Rows[0]["password"].ToString();


                Label1.Text = dt.Rows[0]["accountStatus"].ToString().Trim();

                //if (dt.Rows[0]["accountStatus"].ToString().Trim() == "active")
                //{
                //    Label1.BackColor = System.Drawing.Color.LightGreen;
                //    //Label1.Attributes.Add("class", "badge rounded-pill text-bg-success");
                //}
                //else if (dt.Rows[0]["accountStatus"].ToString().Trim() == "pending")
                //{
                //    Label1.Attributes.Add("class", "badge rounded-pill text-bg-warning");
                //}
                //else if (dt.Rows[0]["accountStatus"].ToString().Trim() == "deactive")
                //{
                //    Label1.Attributes.Add("class", "badge rounded-pill text-bg-danger");
                //}
                //else
                //{
                //    Label1.Attributes.Add("class", "badge rounded-pill text-bg-info");
                //}


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

           
            
            }

        protected void GridView1_RowDataBound1(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                //Check your condition here
                DateTime dt = Convert.ToDateTime(e.Row.Cells[4].Text);
                DateTime today = DateTime.Today;
                if (today > dt)
                {
                    e.Row.BackColor = System.Drawing.Color.PaleVioletRed;
                }
            }
        }

        // Get user Appointment data

        void getUserAppointmentData()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT appointment.id, appointment.userId, [user].fullName, appointment.helthIssue, appointment.date, appointment.time FROM appointment INNER JOIN[user] ON appointment.userId = [user].id WHERE appointment.userId = '" + Session["userId"].ToString() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);


                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }



        void updateUserPersonalDetails()
        {
            string password;

            if (TextBox4.Text.Trim() == "")
            {
                password = TextBox7.Text.Trim();
            }
            else
            {
                password = TextBox4.Text.Trim();
            }

            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmdUpdate = new SqlCommand("UPDATE [user] SET fullName=@FullName, dateOfBirth=@DateOfBirth, gender=@Gender, bloodGroup=@BloodGroup, phoneNo=@PhoneNo, address=@Address, password=@Password, accountStatus=@AccountStatus WHERE id='" + Session["userId"].ToString() + "'", con);

            cmdUpdate.Parameters.AddWithValue("@FullName", TextBox1.Text.Trim());
            cmdUpdate.Parameters.AddWithValue("DateOfBirth", TextBox2.Text.Trim());
            cmdUpdate.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Value);
            cmdUpdate.Parameters.AddWithValue("@BloodGroup", DropDownList2.SelectedItem.Value);
            cmdUpdate.Parameters.AddWithValue("@PhoneNo", TextBox3.Text.Trim());
            cmdUpdate.Parameters.AddWithValue("@Address", TextBox5.Text.Trim());
            cmdUpdate.Parameters.AddWithValue("@Email", TextBox8.Text.Trim());
            cmdUpdate.Parameters.AddWithValue("@Password", password);
            //cmd.Parameters.AddWithValue("@Permission", "user");
            cmdUpdate.Parameters.AddWithValue("@AccountStatus", "panding");


            // error occur hear
            int result = cmdUpdate.ExecuteNonQuery();
            con.Close();
            if (result > 0)
            {
                Response.Write("<script>alert('Your Details Updated Sucessfully');</script>");
                getUserPersonalDetails();
                getUserAppointmentData();
            }
            else
            {
                Response.Write("<script>alert('User Id Does Not Exists');</script>");
            }
        }


    }
}