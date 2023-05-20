using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DB.Models
{
    [Table(name: "CARE")]
    public class Care
    {
        public int CareID { get; set; }

        [Required]
        [Column(TypeName = "DATE")]
        public DateTime ContractStartDate { get; set; }

        [Required]
        [Column(TypeName = "DATE")]
        public DateTime ContractEndDate { get; set; }

        public string TypeOfCare { get; set; }

    }
}
