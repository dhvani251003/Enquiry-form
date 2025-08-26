using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace EnquiryForm
{
	public partial class EnquiryList : System.Web.UI.Page
	{
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DB1ConnectionString"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
		{
            if (!Page.IsPostBack)
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();


                }


                string q = "select * from Enquiry";
                cmd = new SqlCommand(q, con);
                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                cmd.ExecuteNonQuery();
                da.Fill(ds, "Enquiry");
                if (ds.Tables["Enquiry"].Rows.Count > 0)
                {
                    GridView1.DataSource = ds.Tables["Enquiry"];
                    GridView1.DataBind();


                }
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            ImageButton imgbtn;
            imgbtn = (ImageButton)sender;
            string q = "delete from Enquiry where Eid = '" + imgbtn.CommandArgument.ToString() + "'";
            cmd = new SqlCommand(q, con);
            int i = cmd.ExecuteNonQuery();
            Response.Write("<script> alert('Record Deleted'); window.location = 'EnquiryList.aspx'; </script>");

        }
    }
}