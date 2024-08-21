using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HMSW
{
    public partial class Prescription : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
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

            string query = "select patientId from diagnosis";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while(dr.Read())
            {
                DropDownList1.Items.Add(dr["patientId"].ToString());
                DropDownList1.DataMember = (dr["patientId"].ToString());
                DropDownList1.DataValueField = (dr["patientId"].ToString());
            }
        }


        //fetch user name(patient)



        //add prescription button
        protected void Button2_Click(object sender, EventArgs e)
        {
            //if(DropDownList1.SelectedValue == "-1")
            //{
            //    Response.Write("<script>alert('please select a patient');</script>");
            //}
            //new code start

            //new code end

            if (DropDownList1.Text == "" ||TextBox5.Text == "" || TextBox3.Text == "" || TextBox4.Text == "")
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

                SqlCommand cmd = new SqlCommand("INSERT INTO prescription(patientId, patientName, treatment, treatmentCost, medicines, medicinesQty) values(@PatientId, @PatientName, @Treatment, @TreatmentCost, @Medicines, @MedicinesQty)", con);
                cmd.Parameters.AddWithValue("@PatientId", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@PatientName", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Treatment", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@TreatmentCost", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@Medicines", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@MedicinesQty", TextBox4.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();

                GridView1.DataBind();
                Response.Write("<script>alert('Prescription Saved Sucessfully');</script>");
                ClearForm();
            }
        }


        //SelectIndexChanges is not work properly so I do AutoPostBack propery true of DropDownList1
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //string selectedvalue = DropDownList1.SelectedValue.ToString();
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



        //update button
        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmdupdate = new SqlCommand("UPDATE prescription SET treatment=@Treatment, treatmentCost=@TreatmentCost, medicines=@Medicines, medicinesQty=@MedicinesQty WHERE patientId=@PatientId", con);
            cmdupdate.Parameters.AddWithValue("@PatientId", DropDownList1.SelectedItem.Value);
            cmdupdate.Parameters.AddWithValue("@Treatment", DropDownList2.SelectedItem.Value);
            cmdupdate.Parameters.AddWithValue("@TreatmentCost", TextBox5.Text.Trim());
            cmdupdate.Parameters.AddWithValue("@Medicines", TextBox3.Text.Trim());
            cmdupdate.Parameters.AddWithValue("@MedicinesQty", TextBox4.Text.Trim());

            cmdupdate.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Prescription Updated Sucessfully');</script>");
            GridView1.DataBind();
            ClearForm();
        }

        void ClearForm()
        {
            TextBox1.Text = "";
            //DropDownList1.SelectedItem.Value = "-1";
            //DropDownList2.Text = "-1";
            TextBox5.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
    }
}