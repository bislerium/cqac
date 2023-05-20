using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DB.Models
{
    [Table(name: "EXTERNAL_STAFF")]
    public class ExternalStaff
    {
        public int ExternalStaffID { get; set; }

        [Required]
        public string FullName { get; set; }

        [Required]
        public string Address { get; set; }

        [Required]
        public string Phone { get; set; }

        [Required]
        public string TradeLicenceNo { get; set; }

        [Required]
        public string TypeOfTrade { get; set; }

        [Required]
        [Precision(6,2)]
        public decimal HourlyRate { get; set; }

        public virtual ICollection<RepairJobs> RepairJobs { get; set; }
    }
}
