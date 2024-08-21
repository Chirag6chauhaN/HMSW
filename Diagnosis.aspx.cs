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
    public partial class Diagnosis : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDropDownList1();
            }
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


        //fetch user(patientId)
        void BindDropDownList1()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }

            string query = "select userId from Appointment";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr["userId"].ToString());
                DropDownList1.DataMember = (dr["userId"].ToString());
                DropDownList1.DataValueField = (dr["userId"].ToString());
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }

            string query2 = "select fullName from [user] where id = '" + DropDownList1.SelectedItem + "'";
            SqlCommand cmd = new SqlCommand(query2, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[0].ToString();
            }
        }


        //add button
        //Diagnostics before Prescription
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "" || TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox5.Text == "")
            {
                Response.Write("<script>alert('No Empty Fill Accepted !');</script>");
            }
            else
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO diagnosis(patientId, patientName, symptoms, diagnosis, medicines) values(@PatientId, @PatientName, @Symptoms, @Diagnosis, @Medicines)", con);
                cmd.Parameters.AddWithValue("@PatientId", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@PatientName", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Symptoms", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Diagnosis", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@Medicines", TextBox3.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();

                GridView1.DataBind();
                Response.Write("<script>alert('Diagnosis Saved Sucessfully');</script>");
                ClearForm();
            }
        }



        //update button
        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmdupdate = new SqlCommand("UPDATE diagnosis SET symptoms=@Symptoms, diagnosis=@Diagnosis, medicines=@Medicines, WHERE patientId=@PatientId", con);
            cmdupdate.Parameters.AddWithValue("@Symptoms", TextBox2.Text.Trim());
            cmdupdate.Parameters.AddWithValue("@Diagnosis", TextBox5.Text.Trim());
            cmdupdate.Parameters.AddWithValue("@Medicines", TextBox3.Text.Trim());
            cmdupdate.ExecuteNonQuery();
            con.Close();

            GridView1.DataBind();
            Response.Write("<script>alert('Diagnosis Updated Sucessfully');</script>");
            ClearForm();
        }

        void ClearForm()
        {
            TextBox1.Text = "";
            //DropDownList1.SelectedItem.Value = "-1";
            //DropDownList2.Text = "-1";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox5.Text = "";
        }
    }
}