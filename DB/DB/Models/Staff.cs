using DB.Enums;
using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DB.Models
{
    [Table(name: "STAFF")]
    public class Staff
    {
        public int StaffID { get; set; }

        [Required]
        public string FullName { get; set; }

        [Required]
        public string Address { get; set; }

        [Required]
        [Column(TypeName = "DATE")]
        public DateTime DOB { get; set; }

        [Required]
        public string Phone { get; set; }

        [Required]
        [Precision(8,2)]
        public decimal Salary { get; set; }

        [Required]
        [EnumDataType(typeof(StaffType))]
        public StaffType StaffType { get; set; }
    }
}
