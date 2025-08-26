using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.Common;

namespace EnquiryForm
{
	public partial class Employee : System.Web.UI.Page
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
                string q = "select * from Employee";
                cmd = new SqlCommand(q, con);
                da = new SqlDataAdapter(cmd);
                ds = new DataSet();

                cmd.ExecuteNonQuery();
                da.Fill(ds, "Employee");
                if (ds.Tables["Employee"].Rows.Count > 0)
                {
                    int i = 0;
                    int count = ds.Tables["Employee"].Rows.Count;
                    while (i < count)
                    {
                        ddlEMPLOYEE.Items.Add(ds.Tables["Employee"].Rows[i].ToString());
                        i++;
                    }
                }
            }
        }

        protected void btnSUBMIT_Click(object sender, EventArgs e)
        {

        }
    }
}