using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EnquiryForm
{
	public partial class state1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnSUBMIT_Click(object sender, EventArgs e)
        {
			lbl1.Text = ddlSTATE.SelectedValue.ToString();
			lbl2.Text = ddlSTATE.SelectedItem.ToString();

        }
    }
}