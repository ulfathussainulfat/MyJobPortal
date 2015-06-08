using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using JobPortal.DataAccess;
using JobPortal.BusinessObjects;
using System.Web.Security;


namespace JobPortal
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var userLogin = new UserLogin();
            var user = userLogin.ValidateUser(txtEmail.Value, txtPassword.Value);
            if (user != null)
            {
                var cookie = SecurityService.CreateAuthenticationCookie(user, false);
                Response.Cookies.Add(cookie);

                // Your redirect logic
                Response.Redirect(FormsAuthentication.GetRedirectUrl(user.Email, false));
            }
            else
            {
                lblInvalidEmailPassword.InnerHtml = "Invalid Email or Password";
            }
        }

        protected User SomeFunction()
        {
            var userLogin = new UserLogin();
            var user = userLogin.ValidateUser(txtEmail.Value, txtPassword.Value);
            return user;
        }
    }
}