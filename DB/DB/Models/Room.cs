using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DB.Models
{
    [Table(name: "ROOM")]
    public class Room
    {
        public int RoomID { get; set; }

        [ForeignKey(nameof(CareManager))]
        public int CareManagerID { get; set; }

        public string Type { get; set; }

        public int DailyRental { get; set; }

        public string RoomSize { get; set; }

        public DateTime DateAvailable { get; set; }

        public string? RoomPhoto { get; set; }

        public virtual ICollection<Care> Cares { get; set; }

        public virtual ICollection<RepairJobs> RepairJobs { get; set; }

        public virtual ICollection<Application> Applications { get; set; }
    }
}
