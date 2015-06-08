using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using JobPortal.DataAccess;

namespace JobPortal.BusinessObjects
{
    public class UserLogin
    {
        public User ValidateUser(string email, string password)
        {
            var db = new JobPortalContext();
            var query = db.Users.Where(x => x.Email == email && x.Password == password).FirstOrDefault();
            return query;
        }
    }
}
