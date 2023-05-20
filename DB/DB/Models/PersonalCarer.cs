using System.ComponentModel.DataAnnotations.Schema;

namespace DB.Models
{
    [Table(name: "PERSONAL_CARER")]
    public class PersonalCarer
    {
        public int StaffID { get; set; }
        public string EducationLevel { get; set; }
        public int ShiftHours { get; set;}

        [ForeignKey(nameof(CareManager))]
        public int CareManagerID { get; set; }
    }
}
