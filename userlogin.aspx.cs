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
    public partial class userlogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //user login
        protected void Button1_Click(object sender, EventArgs e)
        {


            //Response.Write("<script>alert('Button click');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT id, email, fullname, password, permission FROM [user] where email='" + TextBox1.Text.Trim() + "' AND password='" + TextBox2.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();

                // Set the visibility of menu items (Hide or show menu items) based on user's permissions.
                //SqlCommand cmd1 = new SqlCommand("SELECT userId, permission FROM userPermissionPair where userId=@UserId");

                if (dr.HasRows)
                {
                    dr.Read();
                    string userId = dr["id"].ToString();
                    Session["userId"] = userId;
                    Session["email"] = dr["email"].ToString();
                    Session["fullname"] = dr["fullname"].ToString();
                    Session["permission"] = dr["permission"].ToString();
                    //Session["role"] = dr["role"].ToString();


                    if (Session["permission"].ToString() == null && DropDownList1.SelectedValue == "")
                    {
                        Session["role"] = null;
                    }
                    else if (Session["permission"].ToString() == "admin" && DropDownList1.SelectedValue == "admin")
                    {
                        Session["role"] = "admin";
                    }
                    else if (Session["permission"].ToString() == "doctor" && DropDownList1.SelectedValue == "doctor")
                    {
                        Session["role"] = "doctor";
                    }
                    else if (Session["permission"].ToString() == "user" && DropDownList1.SelectedValue == "user")
                    {
                        Session["role"] = "user";
                    }
                    else if(Session["permission"].ToString() == "user, admin" && DropDownList1.SelectedValue == "user")
                    {
                        Session["role"] = "user";
                    }
                    else if (Session["permission"].ToString() == "user, admin" && DropDownList1.SelectedValue == "admin")
                    {
                        Session["role"] = "admin";
                    }
                    else if (Session["permission"].ToString() == "user, doctor" && DropDownList1.SelectedValue == "doctor")
                    {
                        Session["role"] = "doctor";
                    }
                    else if (Session["permission"].ToString() == "user, doctor" && DropDownList1.SelectedValue == "user")
                    {
                        Session["role"] = "user";
                    }
                    else
                    {
                        Response.Write("<script>alert('Please select role');</script>");
                    }


                    Response.Redirect("Homepage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid details');</script>");

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }
    }
}