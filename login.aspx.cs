using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace first_sharp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /*runs when sign-up button is clicked*/
        protected void Unnamed6_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }

        protected void Login(object sender, EventArgs e)
        {
            /* database connection code goes here
             * check for if username exist and password is correct
             */
            


            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM users WHERE email='"+tx1.Text.Trim()+ "' AND password='" + tx2.Text.Trim() + "' ", con);

                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.HasRows)
                {
                    while (dr.Read())
                    {

                       // Response.Write("<script>alert('Welcome +  dr.GetValue(2).ToString() ');</script>");

                        Session["username"] = dr.GetValue(0).ToString();
                        Session["email"] = dr.GetValue(2).ToString();
                    }
                    Response.Redirect("home.aspx");
                }
                else
                {
                    Label1.Visible = true;
                   // Response.Redirect("login.aspx");                    
                }


            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }

        }
    }
}