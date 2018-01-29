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
    public partial class home : System.Web.UI.Page
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

        protected void postDataList_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }
    }
}