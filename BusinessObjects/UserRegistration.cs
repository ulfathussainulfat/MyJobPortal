using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using JobPortal.DataAccess;

namespace JobPortal.BusinessObjects
{
    public class UserRegistration
    {

        public List<AccountType> GetAccountTypes()
        {
            var db = new JobPortalContext();
            return (from m in db.AccountType select m).ToList();
        }

        public List<Country> GetCountries()
        {
            var db = new JobPortalContext();
            return (from m in db.Country select m).ToList();
        }

        public List<City> GetCities(int countryId)
        {
            var db = new JobPortalContext();
            return (from m in db.City where m.CountryId == countryId select m).ToList();
        }

        public List<DegreeLevel> GetDegreeLevels()
        {
            var db = new JobPortalContext();
            return (from m in db.DegreeLevel select m).ToList();
        }

        public List<DegreeType> GetDegreeTypes()
        {
            var db = new JobPortalContext();
            return (from m in db.DegreeType select m).ToList();
        }

        public List<WorkExperience> GetWorkExperiences()
        {
            var db = new JobPortalContext();
            return (from m in db.WorkExperience select m).ToList();
        }

        public List<ProfessionalIndustry> GetProfessionalIndustries()
        {
            var db = new JobPortalContext();
            return (from m in db.ProfessionalIndustry select m).ToList();
        }

        public List<FunctionalArea> GetFunctionalAreas()
        {
            var db = new JobPortalContext();
            return (from m in db.FunctionalArea select m).ToList();
        }

        public List<JobRole> GetJobRoles()
        {
            var db = new JobPortalContext();
            return (from m in db.JobRole select m).ToList();
        }

        public List<CareerLevel> GetCareelLevels()
        {
            var db = new JobPortalContext();
            return (from m in db.CareerLevel select m).ToList();
        }


    }
}
