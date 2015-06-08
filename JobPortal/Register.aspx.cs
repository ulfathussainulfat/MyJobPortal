using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using JobPortal.DataAccess;
using JobPortal.BusinessObjects;
using System.IO;

namespace JobPortal
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                FillFormFields();
                lblError.Visible = false;
            }
        }

        private void FillFormFields()
        {
            var registration = new UserRegistration();
            //Account Type
            BindDropDown(ddlAccountType, "Id", "AccountType1", registration.GetAccountTypes(), "-Select One-");

            //Personal Information/Country
            BindDropDown(ddlPICountry, "Id", "Country1", registration.GetCountries(), "-Select Country-");

            //Personal Information/City
            //TODO: 
            BindDropDown(ddlPICity, "Id", "City1", registration.GetCities(1), "-Select City-");

            //Academic/Degreel Level
            BindDropDown(ddlDegreeLevel, "Id", "DegreeLevel1", registration.GetDegreeLevels(), "-Select Degree Level-");

            //Academic/Degreel Type
            //TODO:
            BindDropDown(ddlDegreeType, "Id", "DegreeType1", registration.GetDegreeTypes(), "-Select Degree Type-");

            //Academic/Country
            BindDropDown(ddlACountry, "Id", "Country1", registration.GetCountries(), "-Select Country-");

            //Academic/City
            //TODO:
            BindDropDown(ddlACity, "Id", "City1", registration.GetCities(1), "-Select City-");

            //Academic/Completion Year
            ddlCompletionYear.DataSource = Enumerable.Range(1970, 51);
            ddlCompletionYear.DataBind();
            ddlCompletionYear.Items.Insert(0, new ListItem("--Select Year--", ""));

            //Professional Information/Work Experience
            BindDropDown(ddlWorkExperience, "Id", "WorkExperience1", registration.GetWorkExperiences(), "-Select Work Experience-");

            //Professional Information/Professional Industry
            BindDropDown(ddlProfessionalIndustry, "Id", "ProfessionalIndustry1", registration.GetProfessionalIndustries(), "-Select Professional Industry-");

            //Professional Information/Functional Area
            BindDropDown(ddlFunctionalArea, "Id", "FunctionalArea1", registration.GetFunctionalAreas(), "--Select Functional Area--");

            //Professional Information/Job Role
            BindDropDown(ddlJobeRole, "Id", "JobRole1", registration.GetJobRoles(), "--Select Job Role--");

            //Professional Information/Career Level
            BindDropDown(ddlCarerLevel, "Id", "CareerLevel1", registration.GetCareelLevels(), "--Select Career Level--");
        }

        private void BindDropDown<T>(System.Web.UI.HtmlControls.HtmlSelect element, string ValueField, string TextField, IList<T> DataSource, string defaultText = "")
        {
            element.DataTextField = TextField;
            element.DataValueField = ValueField;

            element.DataSource = DataSource;
            element.DataBind();
            if (!string.IsNullOrEmpty(defaultText))
            {
                element.Items.Insert(0, new ListItem(defaultText, ""));
            }
        }

        private void AddUser()
        {
            try
            {
                var db = new JobPortalContext();
                var newUser = db.Users.Create();
                newUser.AccountType = int.Parse(ddlAccountType.Value);
                newUser.Email = txtEmail.Value;
                newUser.Password = txtPassword.Value;
                newUser.FirstName = txtFirstName.Value;
                newUser.LastName = txtLastName.Value;
                newUser.Gender = rdGender.Checked;
                newUser.DOB = Convert.ToDateTime(dob.Value).Date;
                newUser.MobileNo = txtMobileNo.Value;
                newUser.ContactNo = txtHomeNo.Value;
                newUser.CityId = int.Parse(ddlPICity.Value);
                newUser.CountryId = int.Parse(ddlPICountry.Value);
                newUser.CNIC = txtCNIC.Value;
                newUser.ProfessionalIndustryId = int.Parse(ddlProfessionalIndustry.Value);
                newUser.FunctionalAreaId = int.Parse(ddlFunctionalArea.Value);
                newUser.JobRoleId = int.Parse(ddlJobeRole.Value);
                newUser.CareerLevelId = int.Parse(ddlCarerLevel.Value);
                db.Users.Add(newUser);
                db.SaveChanges();

                var academics = db.Academics.Create();
                academics.UserId = newUser.Id;
                academics.CountryId = int.Parse(ddlACountry.Value);
                academics.CityId = int.Parse(ddlACity.Value);
                academics.DegreeLevelId = int.Parse(ddlDegreeLevel.Value);
                academics.DegreeTypeId = int.Parse(ddlDegreeType.Value);
                academics.DegreeTitle = txtDegreeTitle.Value;
                academics.CompletionYear = int.Parse(ddlCompletionYear.Value);
                academics.InstitutionName = txtInstitution.Value;
                db.Academics.Add(academics);
                db.SaveChanges();

                HttpPostedFile file = Request.Files[fileCV.Name];

                if (file != null && file.ContentLength > 0)
                {
                    var resume = db.Resume.Create();
                    resume.UserId = newUser.Id;
                    resume.ResumeTitle = file.FileName;
                    db.Resume.Add(resume);
                    db.SaveChanges();

                    string fname = string.Format("{0}_{1}{2}", newUser.Id, resume.Id, Path.GetExtension(file.FileName));
                    file.SaveAs(Server.MapPath(Path.Combine("~/CVs/", fname)));
                }

                ClearFormFields();
            }
            catch (Exception)
            {
                lblError.Text = "There is an error with the application";
                lblError.Visible = true;
            }

        }

        private void ClearFormFields()
        {
            ClientScriptManager cs = Page.ClientScript;
            if (!cs.IsStartupScriptRegistered(this.GetType(), "ClearFormScript"))
            {
                string script = "<script type=text/javascript> document.getElementById('form1').reset(); </script>";
                cs.RegisterStartupScript(this.GetType(), "ClearFormScript", script);
            }
        }

        protected void btnSubmit_ServerClick(object sender, EventArgs e)
        {
            AddUser();
        }
    }
}