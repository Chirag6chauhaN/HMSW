using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HMSW
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Session["role"] == null)
            {
                LinkButton1.Visible = true; //user login link button 
                LinkButton2.Visible = true; //sign up link button 

                LinkButton3.Visible = false; //logout link button 
                LinkButton7.Visible = false; //hello user link button 

                //                LinkButton4.Visible = true; //Admin login link button 
                LinkButton5.Visible = false; //book appointment link button 
                LinkButton6.Visible = false; //manage prescription link button 
                LinkButton8.Visible = false; //view prescription link button 
                //                LinkButton9.Visible = false; //manage treatment link button 
                LinkButton10.Visible = false; //manage diagnosis link button 
                LinkButton11.Visible = false; //manage Appointment link button 
                LinkButton12.Visible = false; // Member management button 
            }
            else if(Session["role"].Equals("user"))
            {
                LinkButton1.Visible = false; //user login link button 
                LinkButton2.Visible = false; //sign up link button 

                LinkButton3.Visible = true; //logout link button 
                LinkButton7.Visible = true; //hello user link button 
                LinkButton7.Text = "Hello " + Session["fullname"].ToString();

                LinkButton5.Visible = true; //book appointment link button 
                LinkButton6.Visible = false; //manage prescription link button 
                LinkButton8.Visible = true; //view prescription link button 
                //                LinkButton9.Visible = false; //manage treatment link button 
                LinkButton10.Visible = false; //manage diagnosis link button 
                LinkButton11.Visible = false; //manage Appointment link button 
                LinkButton12.Visible = false; // Member management button 
            }
            else if(Session["role"].Equals("admin"))
            {
                LinkButton1.Visible = false; //user login link button 
                LinkButton2.Visible = false; //sign up link button 

                LinkButton3.Visible = true; //logout link button 
                LinkButton7.Visible = true; //hello user link button 
                LinkButton7.Text = "Hello Admin";

                LinkButton5.Visible = false; //book appointment link button 
                LinkButton6.Visible = false; //manage prescription link button 
                LinkButton8.Visible = false; //view prescription link button 
                //                LinkButton9.Visible = false; //manage treatment link button 
                LinkButton10.Visible = false; //manage diagnosis link button 
                LinkButton11.Visible = false; //manage Appointment link button 
                LinkButton12.Visible = true; // Member management button 
            }
            else if (Session["role"].Equals("doctor"))
            {
                LinkButton1.Visible = false; //user login link button 
                LinkButton2.Visible = false; //sign up link button 

                LinkButton3.Visible = true; //logout link button 
                LinkButton7.Visible = true; //hello user link button 
                LinkButton7.Text = "Hello Dr." + Session["fullname"].ToString();

                LinkButton5.Visible = false; //book appointment link button 
                LinkButton6.Visible = true; //manage prescription link button 
                LinkButton8.Visible = false; //view prescription link button 
                //                LinkButton9.Visible = false; //manage treatment link button 
                LinkButton10.Visible = true; //manage diagnosis link button 
                LinkButton11.Visible = true; //manage Appointment link button 
                LinkButton12.Visible = false; // Member management button 
            }


        }

        //protected void LinkButton6_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("userlogin.aspx");
        //}

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Appointment.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        //logout button
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["email"] = null;
            Session["fullname"] = null;
            Session["role"] = null;

            LinkButton1.Visible = true; //user login link button 
            LinkButton2.Visible = true; //sign up link button 

            LinkButton3.Visible = false; //logout link button 
            LinkButton7.Visible = false; //hello user link button 

            //LinkButton4.Visible = true; //Admin login link button 
            LinkButton5.Visible = false; //book appointment link button 
            LinkButton6.Visible = false; //manage prescription link button 
            LinkButton8.Visible = false; //view prescription link button 
           // LinkButton9.Visible = false; //manage treatment link button 
            LinkButton10.Visible = false; //manage diagnosis link button 
            LinkButton11.Visible = false; //manage Appointment link button 
            LinkButton12.Visible = false; // Member management button 

            Response.Redirect("Homepage.aspx");
        }

        // Prescription
        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Prescription.aspx");
        }

        // Diagnosis
        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Diagnosis.aspx");
        }

        // Member management
        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminMemberManagement.aspx");
        }

        // User profile button
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserProfile.aspx");
        }

        // View Prescription
        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewPrescription.aspx");
        }
         
        // View Appointments
        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewAppointmentList.aspx");
        }
    }
}