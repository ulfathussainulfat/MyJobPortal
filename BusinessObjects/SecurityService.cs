using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Security;
using JobPortal.DataAccess;
using System.Web;

namespace JobPortal.BusinessObjects
{
    public class SecurityService
    {
        //We have to add the reference of System.Web to make it work

        public static HttpCookie CreateAuthenticationCookie(User user,bool isPersistent)
        {
            string userData = string.Join("|", user.Email,user.AccountType);

            FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(
              1,                                     // ticket version
              user.Email,                              // authenticated username
              DateTime.Now,                          // issueDate
              DateTime.Now.AddMinutes(30),           // expiryDate
              isPersistent,                          // true to persist across browser sessions
              userData,                              // can be used to store additional user data
              FormsAuthentication.FormsCookiePath);  // the path for the cookie

            // Encrypt the ticket using the machine key
            string encryptedTicket = FormsAuthentication.Encrypt(ticket);

            // Add the cookie to the request to save it
            HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName, encryptedTicket);
            cookie.HttpOnly = true;
            return cookie;
        }
    }
}
