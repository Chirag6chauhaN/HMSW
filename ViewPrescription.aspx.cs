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
    public partial class ViewPrescription : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"] == null)
            {
                //Response.Write("<script>alert('Session Expired Login Again');</script>");
                Response.Redirect("userlogin.aspx");
            }
            else
            {
                getUserPrescription();
            }
        }

        // Print button
        //protected void Button2_Click(object sender, EventArgs e)
        //{

        //}

        // User Define function

        // User Prescription Details
        void getUserPrescription()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("SELECT patientName, treatment, treatmentCost, medicines, medicinesQty FROM prescription WHERE patientId='" + Session["userId"].ToString() + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
                
            Label1.Text = dt.Rows[0]["patientName"].ToString().Trim();
            Label2.Text = dt.Rows[0]["treatment"].ToString().Trim();
            Label3.Text = dt.Rows[0]["treatmentCost"].ToString().Trim();
            Label4.Text = dt.Rows[0]["medicines"].ToString().Trim();
            Label5.Text = dt.Rows[0]["medicinesQty"].ToString().Trim();
        }

       
        //void printPage()
        //{
        //    var getpenal = document.getElementById("<%= Panel1.patientId%>");
        //    var getMainWindow = Window.Open()
        //}
    }
}