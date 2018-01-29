using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace BloodZone
{
    public partial class bloodrequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Postbtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bbds"].ConnectionString);

            // for connection open
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }


            // for insert data in database from post page
            string query = @" INSERT INTO [dbo].[postreq]
           ([name]
           ,[mobile]
           ,[bgroup]
           ,[adres]
           ,[comnt])
     VALUES
           ('"+rname.Text +"','" +rmobil.Text +"', '" +bloodgroupList.Text +"', '" +adrs.Text +"', '" +comment.Text +"') ";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();


            //for clear post textbox
            rname.Text = "";
            rmobil.Text = "";
            bloodgroupList.Text = "";
            adrs.Text = "";
            comment.Text = "";

            Response.Redirect("home.aspx");



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}