using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ParchiSystem
{
    public partial class PendingDues : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["UserName"] == null) || (Session["UserName"].ToString() != "Member"))
            {
                Response.Redirect("~/login.aspx");
                return;
            }

            //double total = GridView1.Rows.Cast<GridViewRow>()
            //.Sum(r => double.Parse(((Label)r.FindControl("Amount")).Text));
            //this.totAmt.Text = total.ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}