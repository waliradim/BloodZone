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
    public partial class regestation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bbds"].ConnectionString);


            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }


            string str = imageFileUpload.FileName;
            imageFileUpload.PostedFile.SaveAs(Server.MapPath(".") + "//image//" + str);
            string file = "~//image//" + str.ToString();




            string query = @" INSERT INTO [dbo].[regesterDonerList]
           ([name]
           ,[mobile]
           ,[mail]
           ,[date of barth]
           ,[weight]
           ,[gender]
           ,[image]
           ,[blood group]
           ,[address]
           ,[district]
           ,[city]
            ,[conutry])
     VALUES
           ( '" + dname.Text + "', '" + dmobile.Text + "', '" + dEmail.Text + "', '" + dDOF.Text + "', '" + dweight.Text + "', '" + genderlist.Text + "', '" + file + "', '" + bloodgroupList.Text + "', '" + adresTextBox.Text + "', '" + districtTextBox.Text + "', '" + cityTextBox.Text + "','"+ CounTextBox .Text+ "') ";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();


            dname.Text = "";
            dmobile.Text = "";
            dEmail.Text = "";
            dDOF.Text = "";
            dweight.Text = "";
            adresTextBox.Text = "";
            districtTextBox.Text = "";
            cityTextBox.Text = "";
            CounTextBox.Text = "";
        }

        protected void homebtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
    }
}