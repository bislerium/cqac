using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DB.Models
{
    [Table(name: "APPLICATION")]
    public class Application
    {
        public int ApplicationID { get; set; }

        [Required]
        [Column(TypeName = "DATE")]
        public DateTime SubmittedDate { get; set; }

        [Column(TypeName = "DATE")]
        public DateTime ProcessedDate { get; set; }


        [MaxLength(400)]
        public string? Comments { get; set; }

        [Required]
        public string Status { get; set; }

        [Required]
        public string CareNeeds { get; set; }
    }
}
