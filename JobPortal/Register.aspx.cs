using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using JobPortal.DataAccess;

namespace JobPortal
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var db = new JobPortalContext();
            var query = (from m in db.AccountType select m).ToList();


            ddlAccount.DataTextField = "AccountType1";
            ddlAccount.DataValueField = "Id";

            ddlAccount.DataSource = query;
            ddlAccount.DataBind();

            
        }
    }
}