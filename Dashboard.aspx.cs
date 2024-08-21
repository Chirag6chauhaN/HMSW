using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Reflection.Emit;

namespace HMSW
{
    public partial class Dashboard : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            getPatientsCount();
            getRegistaredUserCount();
            getAppointmentCount();
        }

        // User Define function

        void getPatientsCount()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("SELECT * From prescription", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dtAppointment = new DataTable();
            da.Fill(dtAppointment);

            Label1.Text = dtAppointment.Rows.Count.ToString();
            //Label2.Text = dt.Rows[0]["treatment"].ToString().Trim();
            //Label3.Text = dt.Rows[0]["treatmentCost"].ToString().Trim();
            //Label4.Text = dt.Rows[0]["medicines"].ToString().Trim();
            //Label5.Text = dt.Rows[0]["medicinesQty"].ToString().Trim();
        }

        void getRegistaredUserCount()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("SELECT * From [user]", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dtUser = new DataTable();
            da.Fill(dtUser);

            Label3.Text = dtUser.Rows.Count.ToString();
        }


        void getAppointmentCount()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("SELECT * From appointment", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dtUser = new DataTable();
            da.Fill(dtUser);

            Label4.Text = dtUser.Rows.Count.ToString();
        }

        //void getDoctorCount()
        //{
        //    SqlConnection con = new SqlConnection(strcon);
        //    if (con.State == ConnectionState.Closed)
        //    {
        //        con.Open();
        //    }

        //    SqlCommand cmd = new SqlCommand("SELECT * FROM [user] WHERE permission= doctor", con);
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);

        //    int result  = dt.Rows[0]["permission"].ToString().Count("");

        //    if(result>1)
        //    {

        //    }
        //    Label3.Text 
        //}
    }
}