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
    public partial class donerbylocation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                donerlistview();

            }
        }


        public void donerlistview()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bbds"].ConnectionString);


            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }


            string query = "select * from regesterDonerList";

            SqlDataAdapter dadp = new SqlDataAdapter(query, con);

            DataTable dta = new DataTable();

            dadp.Fill(dta);

            donerGridView.DataSource = dta;
            donerGridView.DataBind();


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

            donerGridView.DataSource = dta;
            donerGridView.DataBind();
            searchtBox.Text = "";

        }
    }
}