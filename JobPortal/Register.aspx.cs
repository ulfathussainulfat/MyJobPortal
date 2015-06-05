using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using JobPortal.DataAccess;
using JobPortal.BusinessObjects;

namespace JobPortal
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {      
            if (Page.IsPostBack == false)
            {
                Registration registration = new Registration();
                ddlAccount.DataTextField = "AccountType1";
                ddlAccount.DataValueField = "Id";

                ddlAccount.DataSource = registration.GetAccountTypes();
                ddlAccount.DataBind();
            }
                        
        }
    }
}