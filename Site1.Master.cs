using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace first_sharp
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {  
                if(Session["email"] == null)
                {
                    Response.Redirect("login.aspx");
                }
                else
                {
                    Label1.Text = "Hello " + Session["username"].ToString();
                }
                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + " ');</script>");
            }

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Response.Redirect("login.aspx");

        }
    }
}