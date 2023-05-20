using System;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DB.Migrations
{
    /// <inheritdoc />
    public partial class initial : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterDatabase()
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "EXTERNAL_STAFF",
                columns: table => new
                {
                    ExternalStaffID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    FullName = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    Address = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    Phone = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    TradeLicenceNo = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    TypeOfTrade = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    HourlyRate = table.Column<decimal>(type: "decimal(6,2)", precision: 6, scale: 2, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_EXTERNAL_STAFF", x => x.ExternalStaffID);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "RESIDENT",
                columns: table => new
                {
                    ResidentId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    FullName = table.Column<string>(type: "varchar(255)", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    Address = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    Phone = table.Column<string>(type: "varchar(255)", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    DOB = table.Column<DateTime>(type: "DATE", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_RESIDENT", x => x.ResidentId);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "STAFF",
                columns: table => new
                {
                    StaffID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    FullName = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    Address = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    DOB = table.Column<DateTime>(type: "date", nullable: false),
                    Phone = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    Salary = table.Column<decimal>(type: "decimal(8,2)", precision: 8, scale: 2, nullable: false),
                    StaffType = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_STAFF", x => x.StaffID);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "CARE_MANAGER",
                columns: table => new
                {
                    StaffID = table.Column<int>(type: "int", nullable: false),
                    Bonus = table.Column<decimal>(type: "decimal(8,2)", precision: 8, scale: 2, nullable: false),
                    YearsOfExperience = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CARE_MANAGER", x => x.StaffID);
                    table.ForeignKey(
                        name: "FK_CARE_MANAGER_STAFF_StaffID",
                        column: x => x.StaffID,
                        principalTable: "STAFF",
                        principalColumn: "StaffID",
                        onDelete: ReferentialAction.Cascade);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "NURSE",
                columns: table => new
                {
                    StaffID = table.Column<int>(type: "int", nullable: false),
                    EducationLevel = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    SpecializedIn = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    CareManagerID = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_NURSE", x => x.StaffID);
                    table.ForeignKey(
                        name: "FK_NURSE_CARE_MANAGER_CareManagerID",
                        column: x => x.CareManagerID,
                        principalTable: "CARE_MANAGER",
                        principalColumn: "StaffID",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_NURSE_STAFF_StaffID",
                        column: x => x.StaffID,
                        principalTable: "STAFF",
                        principalColumn: "StaffID",
                        onDelete: ReferentialAction.Cascade);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "PERSONAL_CARER",
                columns: table => new
                {
                    StaffID = table.Column<int>(type: "int", nullable: false),
                    EducationLevel = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    ShiftHours = table.Column<int>(type: "int", nullable: false),
                    CareManagerID = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PERSONAL_CARER", x => x.StaffID);
                    table.ForeignKey(
                        name: "FK_PERSONAL_CARER_CARE_MANAGER_CareManagerID",
                        column: x => x.CareManagerID,
                        principalTable: "CARE_MANAGER",
                        principalColumn: "StaffID",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_PERSONAL_CARER_STAFF_StaffID",
                        column: x => x.StaffID,
                        principalTable: "STAFF",
                        principalColumn: "StaffID",
                        onDelete: ReferentialAction.Cascade);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "ROOM",
                columns: table => new
                {
                    RoomID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    CareManagerID = table.Column<int>(type: "int", nullable: false),
                    Type = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    DailyRental = table.Column<int>(type: "int", nullable: false),
                    RoomSize = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    DateAvailable = table.Column<DateTime>(type: "datetime(6)", nullable: false),
                    RoomPhoto = table.Column<string>(type: "longtext", nullable: true)
                        .Annotation("MySql:CharSet", "utf8mb4")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ROOM", x => x.RoomID);
                    table.ForeignKey(
                        name: "FK_ROOM_CARE_MANAGER_CareManagerID",
                        column: x => x.CareManagerID,
                        principalTable: "CARE_MANAGER",
                        principalColumn: "StaffID",
                        onDelete: ReferentialAction.Cascade);
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "APPLICATION",
                columns: table => new
                {
                    ApplicationID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    SubmittedDate = table.Column<DateTime>(type: "DATE", nullable: false),
                    ProcessedDate = table.Column<DateTime>(type: "DATE", nullable: false),
                    Comments = table.Column<string>(type: "varchar(400)", maxLength: 400, nullable: true)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    Status = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    CareNeeds = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    ResidentId = table.Column<int>(type: "int", nullable: true),
                    RoomID = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_APPLICATION", x => x.ApplicationID);
                    table.ForeignKey(
                        name: "FK_APPLICATION_RESIDENT_ResidentId",
                        column: x => x.ResidentId,
                        principalTable: "RESIDENT",
                        principalColumn: "ResidentId");
                    table.ForeignKey(
                        name: "FK_APPLICATION_ROOM_RoomID",
                        column: x => x.RoomID,
                        principalTable: "ROOM",
                        principalColumn: "RoomID");
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "CARE",
                columns: table => new
                {
                    CareID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    ContractStartDate = table.Column<DateTime>(type: "DATE", nullable: false),
                    ContractEndDate = table.Column<DateTime>(type: "DATE", nullable: false),
                    TypeOfCare = table.Column<string>(type: "longtext", nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    ResidentId = table.Column<int>(type: "int", nullable: true),
                    RoomID = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CARE", x => x.CareID);
                    table.ForeignKey(
                        name: "FK_CARE_RESIDENT_ResidentId",
                        column: x => x.ResidentId,
                        principalTable: "RESIDENT",
                        principalColumn: "ResidentId");
                    table.ForeignKey(
                        name: "FK_CARE_ROOM_RoomID",
                        column: x => x.RoomID,
                        principalTable: "ROOM",
                        principalColumn: "RoomID");
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateTable(
                name: "REPAIR_JOB",
                columns: table => new
                {
                    JobID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("MySql:ValueGenerationStrategy", MySqlValueGenerationStrategy.IdentityColumn),
                    JobDetails = table.Column<string>(type: "varchar(600)", maxLength: 600, nullable: false)
                        .Annotation("MySql:CharSet", "utf8mb4"),
                    CompletionDate = table.Column<DateTime>(type: "datetime(6)", nullable: false),
                    TotalRepairCost = table.Column<decimal>(type: "decimal(10,2)", precision: 10, scale: 2, nullable: false),
                    ExternalStaffID = table.Column<int>(type: "int", nullable: true),
                    RoomID = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_REPAIR_JOB", x => x.JobID);
                    table.ForeignKey(
                        name: "FK_REPAIR_JOB_EXTERNAL_STAFF_ExternalStaffID",
                        column: x => x.ExternalStaffID,
                        principalTable: "EXTERNAL_STAFF",
                        principalColumn: "ExternalStaffID");
                    table.ForeignKey(
                        name: "FK_REPAIR_JOB_ROOM_RoomID",
                        column: x => x.RoomID,
                        principalTable: "ROOM",
                        principalColumn: "RoomID");
                })
                .Annotation("MySql:CharSet", "utf8mb4");

            migrationBuilder.CreateIndex(
                name: "IX_APPLICATION_ResidentId",
                table: "APPLICATION",
                column: "ResidentId");

            migrationBuilder.CreateIndex(
                name: "IX_APPLICATION_RoomID",
                table: "APPLICATION",
                column: "RoomID");

            migrationBuilder.CreateIndex(
                name: "IX_CARE_ResidentId",
                table: "CARE",
                column: "ResidentId");

            migrationBuilder.CreateIndex(
                name: "IX_CARE_RoomID",
                table: "CARE",
                column: "RoomID");

            migrationBuilder.CreateIndex(
                name: "IX_NURSE_CareManagerID",
                table: "NURSE",
                column: "CareManagerID");

            migrationBuilder.CreateIndex(
                name: "IX_PERSONAL_CARER_CareManagerID",
                table: "PERSONAL_CARER",
                column: "CareManagerID");

            migrationBuilder.CreateIndex(
                name: "IX_REPAIR_JOB_ExternalStaffID",
                table: "REPAIR_JOB",
                column: "ExternalStaffID");

            migrationBuilder.CreateIndex(
                name: "IX_REPAIR_JOB_RoomID",
                table: "REPAIR_JOB",
                column: "RoomID");

            migrationBuilder.CreateIndex(
                name: "IX_RESIDENT_FullName_Phone",
                table: "RESIDENT",
                columns: new[] { "FullName", "Phone" });

            migrationBuilder.CreateIndex(
                name: "IX_ROOM_CareManagerID",
                table: "ROOM",
                column: "CareManagerID");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "APPLICATION");

            migrationBuilder.DropTable(
                name: "CARE");

            migrationBuilder.DropTable(
                name: "NURSE");

            migrationBuilder.DropTable(
                name: "PERSONAL_CARER");

            migrationBuilder.DropTable(
                name: "REPAIR_JOB");

            migrationBuilder.DropTable(
                name: "RESIDENT");

            migrationBuilder.DropTable(
                name: "EXTERNAL_STAFF");

            migrationBuilder.DropTable(
                name: "ROOM");

            migrationBuilder.DropTable(
                name: "CARE_MANAGER");

            migrationBuilder.DropTable(
                name: "STAFF");
        }
    }
}
