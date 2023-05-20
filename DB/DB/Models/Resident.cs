using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DB.Models
{
    [Table(name: "RESIDENT")]
    public class Resident
    {
        public int ResidentId { get; set; }

        [Required]
        public string FullName { get; set; }

        [Required]
        public string Address { get; set; }

        [Required]
        public string Phone { get; set; }

        [Required]
        [Column(TypeName = "DATE")]
        public DateTime DOB { get; set; }

        public virtual ICollection<Care> Cares {get; set; }

        public virtual ICollection<Application> Applications { get; set; } 
    }
}
