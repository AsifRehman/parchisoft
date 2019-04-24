using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using static ParchiSystem.DBHelper;

namespace ParchiSystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserName"] = "Public";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (email.Value == "admin@admin.com" && password.Value == "dm123")
            {
                Response.Redirect("~/default", false);
                Session["UserName"] = "Member";
                DbHelper.ConnectionString = WebConfigurationManager.ConnectionStrings["DbConnectionString"].ConnectionString;
            }

        }
    }
}