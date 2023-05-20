using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DB.Models
{
    [Table(name: "CARE_MANAGER")]
    public class CareManager
    {
        public int StaffID { get; set; }

        [Precision(8,2)]
        public decimal Bonus { get; set; }

        [Required]
        public int YearsOfExperience { get; set; }

        public virtual ICollection<PersonalCarer> personalCarers { get; set; }
        public virtual ICollection<Nurse> Nurses { get; set; }
        public virtual ICollection<Room> Rooms { get; set; }
    }
}
