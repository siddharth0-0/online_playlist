using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace first_sharp
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        
       
        
       

        protected void Page_Load(object sender, EventArgs e)
        {
            Fill_Songs();

            if (!Page.IsPostBack)
            {
                AllSongs.DataBind();
            }
            Generate_Link();
           
            


        }

        void Fill_Songs()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT song_title FROM songs_master", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                AllSongs.DataSource = dt;
                AllSongs.DataValueField = "song_title";
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Add_Songs();
            Generate_Link();
        }


        void Add_Songs()
        {
            
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string user_email = Session["email"].ToString();

                SqlCommand cmd = new SqlCommand("INSERT INTO users_playlist(email,song_id) values(@email,@song_id)", con);
                cmd.Parameters.AddWithValue("@email", user_email);
                cmd.Parameters.AddWithValue("@song_id", TextBoxID.Text);
                //System.Diagnostics.Debug.WriteLine("@song_id = " + song_id);

                cmd.ExecuteNonQuery();
                con.Close();
                if(!Label1.Visible)
                {
                    Label1.Visible = true;
                }
                

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
       

        void Get_Id()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select song_link from songs_master WHERE song_title='" + AllSongs.SelectedItem.Text + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    Match id = Regex.Match(dt.Rows[0]["song_link"].ToString(), @"([A-Za-z0-9_\-]{11})");
                    TextBoxID.Text = id.Value;
                    //System.Diagnostics.Debug.WriteLine("song_id = ");
                }
                else
                {
                    Response.Write("<script>alert('No songs available');</script>");
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex);
            }
        }

       




        void Generate_Link()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from users_playlist WHERE email='" + Session["email"] + "';", con);

                SqlDataReader dr = cmd.ExecuteReader();

                //SqlDataAdapter da = new SqlDataAdapter(cmd);
                //DataTable dt = new DataTable();
                //da.Fill(dt);


               
                string[] id_array = new string[30];
                
                if (dr.HasRows)
                {
                    if (!HyperLink1.Visible)
                    {
                        HyperLink1.Visible = true;
                    }
                   
                    int i = 0;
                    while (dr.Read())
                    {
                        id_array[i] = dr["song_id"].ToString();
                        System.Diagnostics.Debug.WriteLine("row read= " + dr["song_id"].ToString());

                        System.Diagnostics.Debug.WriteLine("inserted in array = "+id_array[i] + "at index = " + i);
                        i++;

                    }
                    string s1 = string.Join(",", id_array);
                    System.Diagnostics.Debug.WriteLine("array join()" + s1);
                    string s1Trimed = s1.Trim(',');
                    System.Diagnostics.Debug.WriteLine("array trimmed" + s1Trimed);
                    HyperLink1.NavigateUrl = "https://www.youtube.com/watch_videos?video_ids=" + s1Trimed;
                }
                else
                {
                    HyperLink1.Visible = false;
                }                      
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex);
            }
        }

        protected void AllSongs_SelectedIndexChanged(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine("AllSongs_SelectedIndexChanged called.");
           Get_Id();
            if (Label1.Visible)
            {
                Label1.Visible = false;
            }
        }
    }


}