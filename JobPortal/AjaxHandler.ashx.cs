using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using JobPortal.BusinessObjects.Utility;
using Newtonsoft.Json;

namespace JobPortal
{
    /// <summary>
    /// Summary description for AjaxHandler
    /// </summary>
    public class AjaxHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            var requestOperationQstr = context.Request.QueryString["RequestOperation"];
            if (requestOperationQstr != null)
            {
                Enums.RequestOperations requestOperation = (Enums.RequestOperations)Convert.ToInt32(requestOperationQstr);
                var db = new JobPortal.DataAccess.JobPortalContext();
                switch (requestOperation)
                { 
                    case Enums.RequestOperations.GetCities:
                        var countryId = Convert.ToInt32(context.Request.QueryString["CountryId"]);
                        
                        var cities = (from m in db.City
                                      where m.CountryId == countryId
                                      select m).ToList();
                        context.Response.ContentType = "application/json";
                        context.Response.Write(JsonConvert.SerializeObject(cities));
                        break;
                    case Enums.RequestOperations.GetDegreeTypes:
                        var degreeLevelId = Convert.ToInt32(context.Request.QueryString["DegreeLevelId"]);
                        var degreeTypes = (from m in db.DegreeType
                                      where m.DegreeLevelId == degreeLevelId
                                      select m).ToList();
                        context.Response.ContentType = "application/json";
                        context.Response.Write(JsonConvert.SerializeObject(degreeTypes));
                        break;
                    case Enums.RequestOperations.GetJobRoles:
                        var functionalAreaId = Convert.ToInt32(context.Request.QueryString["FunctionalAreaId"]);
                        var jobRoles = (from m in db.JobRole
                                           where m.FunctionalAreaId == functionalAreaId
                                           select m).ToList();
                        context.Response.ContentType = "application/json";
                        context.Response.Write(JsonConvert.SerializeObject(jobRoles));
                        break;
                }

            }              
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}