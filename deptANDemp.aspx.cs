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
    public partial class deptANDemp : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DB1ConnectionString"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnSUBMIT_Click(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                    string q = "select * from Employee where Ename = '" + ddlEMPLOYEE.SelectedItem.Text + "'";
                    cmd = new SqlCommand(q, con);
                    da = new SqlDataAdapter(cmd);
                    ds = new DataSet();
                    cmd.ExecuteNonQuery();
                    da.Fill(ds, "Employee");
                    if (ds.Tables["Employee"].Rows.Count > 0)
                    {
                        GridView1.DataSource = ds.Tables["Employee"];
                        GridView1.DataBind();
                    }
                }
            }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}