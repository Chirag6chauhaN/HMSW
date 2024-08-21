using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HMSW
{
    public partial class Appointment : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        
        protected void Page_Load(object sender, EventArgs e)
        {
            //System.Threading.ThreadAbortException: 'Thread was being aborted.'

            try
            {
                if(Session["userId"] == null)
                {
                    //Response.Write("<script>alert('Session Expired Login Again');</script>");
                    Response.Redirect("userlogin.aspx");
                }
                //else
                //{
                //    Response.Write("<script>alert('Fill All Details to Book Appointment');</script>");
                //}
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        //book appointment butoon
        protected void Button2_Click(object sender, EventArgs e)
        {
                bookAppointment();
                ClearForm();     
        }


        // User Define function

        void bookAppointment()
        {
            string userId = Session["userId"].ToString();
            string fullName = Session["fullName"].ToString();
            string email = Session["email"].ToString();



            SqlConnection con = new SqlConnection(strcon);
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("INSERT INTO appointment(userId, helthIssue, date, time) values(@UserId, @HelthIssue, @Date, @Time)", con);

            //cmd.Parameters.AddWithValue("@ApointmentId", TextBox6.Text.Trim());
            cmd.Parameters.AddWithValue("@UserId", userId);
            //cmd.Parameters.AddWithValue("@FullName", fullName);
            cmd.Parameters.AddWithValue("@HelthIssue", DropDownList2.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Date", TextBox2.Text.Trim());
            cmd.Parameters.AddWithValue("@Time", DropDownList1.SelectedItem.Value);
            cmd.ExecuteNonQuery();
            con.Close();

            //GridView1.DataBind();
            Response.Write("<script>alert('Appointment Booked Sucessfully');</script>");
        }

        void ClearForm()
        {
            //DropDownList1.SelectedItem.Value = "-1";
            //DropDownList2.Text = "-1";
            //TextBox3.Text = "";
            TextBox2.Text = "";
        }


        //Delete button
        //protected void Button4_Click(object sender, EventArgs e)
        //{
        //    SqlConnection con = new SqlConnection(strcon);
        //    if (con.State == System.Data.ConnectionState.Closed)
        //    {
        //        con.Open();
        //    }

        //    SqlCommand cmdDelete = new SqlCommand("DELETE from appointment WHERE date = @Date",con);
        //    cmdDelete.ExecuteNonQuery();
        //    con.Close();

        //}

        //user define function
        //bool checkIfUserExists()
    }
}