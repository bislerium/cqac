using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DB.Models
{
    [Table(name: "REPAIR_JOB")]
    public class RepairJobs
    {
        [Key]
        public int JobID { get; set; }

        [Required]
        [MaxLength(600)]        
        public string JobDetails { get; set; }

        public DateTime CompletionDate { get; set; }

        [Precision(10,2)]
        public decimal TotalRepairCost { get; set; }
    }
}
