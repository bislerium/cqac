using System.ComponentModel.DataAnnotations.Schema;

namespace DB.Models
{
    [Table(name: "NURSE")]
    public class Nurse
    {
        public int StaffID { get; set; }
        public string EducationLevel { get; set; }
        public string SpecializedIn { get; set; }

        [ForeignKey(nameof(CareManager))]
        public int CareManagerID { get; set; }
    }
}
