using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ParchiSystem
{
    public partial class InsertParchi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["UserName"] == null) || (Session["UserName"].ToString() != "Member"))
            {
                Response.Redirect("~/login.aspx");
                return;
            }

            TextBox txb1 = FormView1.FindControl("VocNoTextBox") as TextBox;
            txb1.Focus();

        }
    }
}