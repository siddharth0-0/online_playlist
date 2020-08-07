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
    public partial class WebForm2 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString; 

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /*when login button is clicked*/
        protected void Unnamed7_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Sign_Up(object sender, EventArgs e)
        {
            /*insert values into the database and check if email already exist*/
            signUpUser();

        }
        protected void Unnamed1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txln_TextChanged(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {

        }


        void signUpUser()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO users(first_name,last_name,email,password) values(@first_name,@last_name,@email,@password)", con);

                cmd.Parameters.AddWithValue("@first_name", txfn.Text.Trim());
                cmd.Parameters.AddWithValue("@last_name", txln.Text.Trim());
                cmd.Parameters.AddWithValue("@email", txem.Text.Trim());
                cmd.Parameters.AddWithValue("@password", txps.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign Up successful');</script>");
                Response.Redirect("login.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}