//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace JobPortal.DataAccess
{
    using System;
    using System.Collections.Generic;
    
    public partial class Academic
    {
        public int Id { get; set; }
        public Nullable<int> UserId { get; set; }
        public Nullable<int> DegreeLevelId { get; set; }
        public Nullable<int> DegreeTypeId { get; set; }
        public string DegreeTitle { get; set; }
        public Nullable<int> CompletionYear { get; set; }
        public string InstitutionName { get; set; }
        public Nullable<int> CityId { get; set; }
        public Nullable<int> CountryId { get; set; }
    }
}
