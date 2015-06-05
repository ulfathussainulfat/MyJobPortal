using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using JobPortal.DataAccess;

namespace JobPortal.BusinessObjects
{
    public class Registration
    {

        public List<AccountType> GetAccountTypes()
        {
            var db = new JobPortalContext();
            var query = (from m in db.AccountType select m).ToList();
            return query;
        }
       
    }
}
