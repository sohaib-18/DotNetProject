using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel;

namespace WebApplication10
{
    [Serializable]
    public class Constants
    {
        [Serializable]
        public enum MesageType
        {
            Error = 1,
            Warning = 2,
            Info = 3,
            Success = 4
        }

        [Serializable]
        public enum ChallanSearchType
        {
            All = 1,
            Pending = 2,
            Paid = 3
        }

        [Serializable]
        public enum SalaryStatus
        {
            All = 0,
            Approved = 1,
            Pending = 2,
            Draft = 3

        }
        [Serializable]
        public enum LeaveStatustype
        {

            Pending = 3,
            Approved = 1,
            Reject = 2

        }

        [Serializable]
        public enum UserType
        {
            Admin = 1,
            Author = 2,
            SuperAdmin = 3,
            Student = 4,
            oPublisherInfo
        }

        [Serializable]
        public enum ResultType
        {
            Pass = 1,
            Fail = 2,
            Promoted = 3,
            All = 0
        }

        [Serializable]
        public enum ExamType
        {
            Annual = 1,
            Monthly = 2,
            Weekly = 3,
            All = 0
        }

        [Serializable]
        public enum AttendanceStatus
        {
            [Description("Present")]
            Present = 1,
            [Description("Absent")]
            Absent = 2,
            [Description("Leave")]
            Leave = 3,
            [Description("Public Hoilday")]
            PublicHoilday = 4,
            [Description("Vocations")]
            Vocations = 5,
            [Description("Day Off")]
            DayOff = 6,
            [Description("Strike")]
            Strike = 7,
            [Description("Casual Leave")]
            CasualLeave = 8,
            [Description("Sick Leave")]
            SickLeave = 9,
            [Description("Annual Leave")]
            AnnualLeave = 10,
            [Description("Not Available")]
            NotAvailable = 12,
            


        }

        [Serializable]
        public enum TimeInOutStatus
        {
            [Description("On Time")]
            OnTime = 1,
            [Description("Late In")]
            LateIn = 2,
            [Description("Early Out")]
            EarlyOut = 3,
            [Description("Check-Out Missing")]
            MissinCheckout = 4,
            [Description("Multiple Entries")]
            MultipleCheckout = 5,
            [Description("Half Day")]
            HalfDay = 6
        }

        [Serializable]
        public enum TimeAdjustmentType
        {
            [Description("Adjust Check-In Time")]
            AdjustCheckInTime = 1,
            [Description("Adjust Check-Out Time")]
            AdjustCheckOutTime = 2,
            [Description("Adjust Both Check-In & Check-Out")]
            AdjustBothCheckinCheckOut = 3
        }

        [Serializable]
        public enum ExpenseStatus
        {
            Draft = 2,
            PendingApproval = 4,
            Approved = 5,
            Rejected = 6
        }

        [Serializable]
        public enum AttendanceCorrectionType
        {
            [Description("Missing Check-In")]
            MissingCheckIn = 2,
            [Description("Missing Check-Out")]
            MissingCheckOut = 3,
            [Description("Missing Check-In/Check-Out")]
            MissingCheckInCheckOut = 4,
            [Description("Absent")]
            Absent = 5
        }


        //[Serializable]
        //public enum Permissions
        //{
        //    ViewStudentProfile_Self = 1,
        //    EditStudentProfile_Self = 2,
        //    //ViewStudentProfile_Other = 3,
        //    //EditStudentProfile_Other = 4,
        //    //ViewEmployeeProfile_Self = 6,
        //    EditEmployeeProfile_Self = 7,
        //    ViewEmployeeDirectory = 8,

        //    Admin_Edit_Student = 10,
        //    Admin_Employee_Edit = 11,
        //    AdminEmployeeSMS = 12,
        //    AdminAddExpensesOfEmployees = 13,
        //    AdminManageCirculars = 14,
        //    AdminNewEmployee = 15,
        //    AdminNewStudent = 16,
        //    AdminStudentAttendance = 17,
        //    AdminStudentSMS = 18,
        //    AdminTeacherAttendance = 19,
        //    AdminTeacherAttendanceAjustment = 20,
        //    Calender = 21,
        //    ClassAttendence = 22,
        //    Default = 23,
        //    DownlaodAttendenceSheets = 24,
        //    EmployeeExpenses = 25,
        //    EmployeeNotice = 26,
        //    FeesDefaulters = 27,
        //    ManageStudent = 28,
        //    ManageTimeTable = 29,
        //    ManageUserPermissions = 30,
        //    MyPapers = 31,
        //    ParentsComplains = 32,
        //    PostResults = 33,
        //    PostSyllabus = 34,
        //    PostTimeTable = 35,
        //    StudentAttendance = 37,
        //    StudentCircular = 38,
        //    StudentFees = 40,
        //    StudentHomework = 41,
        //    StudentManageCirculars = 42,
        //    TeacherAttendance = 43,
        //    StudentTimeTable = 44,
        //    TeacherAttendanceAjustment = 45,
        //    TeacherHomework = 46,
        //    TeacherHomework2 = 47,
        //    TeacherProfile = 48,
        //    UploadStudentAttendance = 49,
        //    UploadTeacherAttendance = 50,
        //    AddTeacherOfClass = 51 ,
        //    StudentCardPrinting = 52,

        //    AdminAllExpense = 53,

        //    TeacherAttendanceHawkEyeToday = 54,
        //    AddEditDocuments = 55 , 
        //    AddExpense =56 ,
        //    SearchAllDocuments = 57 ,
        //    AddEditCampus = 58 ,
        //    addEditSubject =59 ,
        //    ComplaingBox = 60,
        //    ComplaingBoxView = 61,
        //    Admin_ViewComplains = 62,

        //    // Leaves Related
        //    StudentAddsLeave = 63,
        //    StudentMyLeaves = 64 ,
        //    StudentMyLeavesDetails = 65, 
        //    LeaveListForAdmin = 66 ,
        //    LeaveDetailsForAdmin = 67,

        //    // Driver Management
        //    AddNewDriver = 68,
        //    DriverListing = 69,
        //    DriverEdit = 70,
        //    DriverStudent = 71,
        //    DriverDocuments = 72,
        //    ClassChallan=75,
        //    EditCampus=76,
        //    EditSubject=77,
        //    AddClassfine = 78,
        //    TeacherSubjectList=79,
        //    AddStudentDiscount=80,
        //    AddStudentDiscountEdit=81,
        //    AddStudentFine=82,
        //    AddFeeMasterStructure = 84,
        //    EditFessStructure = 85,
        //    AddFeedBack=86,
        //    AdminSalaryHead= 87,
        //    AdminSalaryHeadEdit=88,
        //    ComplainDetailForAdmin = 89,
        //    FeeStructureDetail = 91,
        //    FeeStructureList = 92,
        //    EmployeeDocuments = 93,
        //    EmployeePaySlip = 94,
        //    PaySlipDetail = 95,
        //    ViewPaySlip = 96,
        //    FeedBackDetail = 97,
        //    FeedBackListForAdmin = 98,
        //    PrintBarCode = 99,
        //    ClassChallanDetail = 100,
        //    ClassChallanList = 101,
        //    FeedBackDetailForAdmin = 102 ,

        //    AdminSalaryHeadGroup=103,
        //    //AdminSalaryHeadEdit= 104 ,// Duplicate in datebase as weell i deleted that .88 and 104 were same page and permission
        //    CollectStudentDues =105,
        //    StudentPaySlip=106 ,
        //    StudentPaySlipList=107,
        //    JournalVouchers=108,AddBranchHolidays
        //    CashPayment =109,
        //    CashReceive = 110,
        //    BankPayment = 111,
        //    BankReceive=112



        //   // ComplainDetailForAdmin = 73 // THIS IS  NOT IN DATABSE

        //}

        [Serializable]
        public enum Permissions
        {
            about = 6394,
            AbsentStudents = 6395,
            AccessDenied = 6396,
            AddBenefits = 6397,
            AddBookList = 6398,
            AddCity = 6399,
            AddCountry = 6400,
            AllPermissions = 6401,
            AssignPermissions = 6402,
            Default = 6403,
            EditClass = 6404,
            EditFactorySetup = 6405,
            EmployeeDirectory = 6406,
            ForgetPasswordRequirements = 6407,
            ForgetPasswordRequirementsSearch = 6408,
            FullMenu = 6409,
            Login = 6410,
            Logout = 6411,
            ManageStudent = 6412,
            ManageUserPermissions = 6413,
            MasterReset = 6414,
            Menus = 6415,
            MyBookList = 6416,
            PermissionEdit = 6417,
            PermissionGroupsEdit = 6418,
            Subject = 6419,
            UserType = 6420,
            UserTypeEdit = 6421






        }

        [Serializable]
        public enum Notifications
        {
            EmployeeEdit = 1,
            EmployeeDeleted = 2,
            EmployeeActivity = 3,
            StudentEdit = 4,
            StudentDeleted = 5,
            StudentActivity = 6,
        }
    }
}
