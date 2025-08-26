using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.Common;
using System.IO;

namespace EnquiryForm
{
	public partial class EnquriFormCreate : System.Web.UI.Page
	{
		SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DB1ConnectionString"].ConnectionString);
        SqlCommand cmd;
		DataAdapter da;
		DataSet ds;
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnSUBMIT_Click(object sender, EventArgs e)
        {
            if(rbMALE.Checked == true)
            {

            }
            else
            {

            }
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
                string gender = rbMALE.Checked ? "Male" : "Female";
                string q = "insert into Enquiry(Ename,Econtact,Eemail,Egender,Ecity,Emessage) values ('" + txtNAME.Text + "','" + txtCONTACT.Text + "','" + txtEMAIL.Text + "','" + gender + "','" + ddlCITY.SelectedItem.Text + "','" + txtMESSAGE.Text + "')";
                cmd = new SqlCommand(q, con);
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('Enquiry Form create sucessfully!!');window.location = 'EnquiryList.aspx';</script>");
                }
                else
                {
                    Response.Write("<script>alert('Enquiry Form create error!!');</script>");
                }
            }
        }

        protected void btnRESET_Click(object sender, EventArgs e)
        {
            txtNAME.Text = "";
            txtCONTACT.Text = "";
            txtEMAIL.Text = "";
            txtMESSAGE.Text = "";
            rbMALE.Checked = false;
            rbFEMALE.Checked = false;
            ddlCITY.SelectedIndex = 0;
        }
    }
}