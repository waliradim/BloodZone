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
    public partial class postdelet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {

                post();

            }
        }
        public void post()
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bbds"].ConnectionString);


            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }


            string query = " select * from postreq ";

            SqlDataAdapter dadp = new SqlDataAdapter(query, con);

            DataTable dta = new DataTable();

            dadp.Fill(dta);

            postDataList.DataSource = dta;

            postDataList.DataBind();




        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bbds"].ConnectionString);

            if (con.State == ConnectionState.Closed)
            {
                con.Open();

            }
            String squeery = "select * from regesterDonerList where name='" + searchtBox.Text + "' ";

            SqlCommand cmd = new SqlCommand(squeery, con);

            SqlDataAdapter dadp = new SqlDataAdapter(squeery, con);

            DataTable dta = new DataTable();

            dadp.Fill(dta);

            postDataList.DataSource = dta;

            postDataList.DataBind();
            searchtBox.Text = "";
        }

        protected void delet_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bbds"].ConnectionString);
            string quer = "DELETE FROM postreq where name='"+ searchtBox.Text + "' ";

            SqlCommand cmd = new SqlCommand(quer, con);

            cmd.ExecuteNonQuery();

        }
    }
}