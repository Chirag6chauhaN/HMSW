using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HMSW
{
    public partial class Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["role"] == null)
            //{
            //    Response.AddHeader("REFRESH", "05;URL=userlogin.aspx");
            //}
            //else if (Session["role"].Equals("user"))
            //{

            //}


            //if (string.IsNullOrEmpty(Convert.ToString(Session["user"])))
            //{
            //    Response.Redirect("userlogin.aspx? url=" + Server.UrlEncode(Request.Url.AbsoluteUri));
            //}
        }
    }
}