using DB.Models;
using Microsoft.EntityFrameworkCore;
using System.Xml;

namespace DB.DbContexts
{
    public class SchoolContext : DbContext
    {
        public DbSet<Staff> Staffs { get; set; }
        public DbSet<Nurse> Nurses { get; set; }
        public DbSet<PersonalCarer> PersonalCarers { get; set; }

        public DbSet<CareManager> careManagers { get; set; }

        public DbSet<Room> Rooms { get; set; }

        public DbSet<Care> Cares { get; set; }
        public DbSet<Resident> Residents { get; set; }

        public DbSet<Application> Applications { get; set; }

        public DbSet<RepairJobs> RepairJobs { get; set; }

        public DbSet<ExternalStaff> ExternalStaffs { get; set; }


        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            var connectionString = @"Server=localhost;Port=3306;Database=RentalDB;User=root;Password=admin;";
            optionsBuilder.UseMySql(connectionString, ServerVersion.AutoDetect(connectionString));
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            var staff = modelBuilder.Entity<Staff>();
            staff.Property(e => e.StaffType)
                .HasConversion<string>(); // Convert enum to string for storage

            staff.Property(e => e.DOB)
                .HasColumnType("date");


            var personalCarer = modelBuilder.Entity<PersonalCarer>();
            personalCarer.HasKey(x => x.StaffID);
            personalCarer.HasOne<Staff>()
                .WithOne()
                .HasForeignKey<PersonalCarer>(x => x.StaffID);

            var careManager = modelBuilder.Entity<CareManager>();
            careManager.HasKey(x => x.StaffID);
            careManager.HasOne<Staff>()
                .WithOne()
                .HasForeignKey<CareManager>(x => x.StaffID);

            var nurses = modelBuilder.Entity<Nurse>();
            nurses.HasKey(x => x.StaffID);
            nurses.HasOne<Staff>()
                .WithOne()
                .HasForeignKey<Nurse>(x => x.StaffID);

            modelBuilder.Entity<Resident>()
                .HasIndex(x => new { x.FullName, x.Phone });
                
        }
    }
}
