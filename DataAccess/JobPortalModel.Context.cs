﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace JobPortal.DataAccess
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class JobPortalContext : DbContext
    {
        public JobPortalContext()
            : base("name=JobPortalContext")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Academic> Academics { get; set; }
        public DbSet<AccountType> AccountTypes { get; set; }
        public DbSet<CareerLevel> CareerLevels { get; set; }
        public DbSet<City> Cities { get; set; }
        public DbSet<Country> Countries { get; set; }
        public DbSet<DegreeLevel> DegreeLevels { get; set; }
        public DbSet<DegreeType> DegreeTypes { get; set; }
        public DbSet<Experience> Experiences { get; set; }
        public DbSet<FunctionalArea> FunctionalAreas { get; set; }
        public DbSet<JobRole> JobRoles { get; set; }
        public DbSet<ProfessionalIndustry> ProfessionalIndustries { get; set; }
        public DbSet<Resume> Resumes { get; set; }
        public DbSet<User> Users { get; set; }
        public DbSet<WorkExperience> WorkExperiences { get; set; }
    }
}
