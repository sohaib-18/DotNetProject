using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;




namespace WebApplication10.UserControls.Dashboard
{
    public partial class AdminDashboard : System.Web.UI.UserControl
    {

        protected string TotalExpense = "[1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12]";
        protected void Page_Load(object sender, EventArgs e)
        {
            BindExpenseChart();
            if (!Page.IsPostBack)
            {
              
            }
           
        }

        private void BindDates()
        {


           // Helper oHelper= new Helper ();

           // DateTime now = oHelper.GetDateTimeNowWithServerDiffrence().Subtract(new TimeSpan(10,0,0,0)); ;



           // List<DateTime> mydates = new List<DateTime>();

           // for (int i = 1; i < 15; i++)
           // {
           //     mydates.Add(now.AddDays(i));

           // }

           // var currentdate = oHelper.GetDateTimeNowWithServerDiffrence();
           

           // DateDropDown.DataSource = mydates;

           //// DateDropDown.SelectedItem.Text = mydates;
           // DateDropDown.DataBind();



            // DateDropDown
        }

   

        private void BindCampus()
        {
            try
            {
                CommonMethods oCommonMethods = new CommonMethods();
                oCommonMethods.BindCampus(ref ddlBranch);


                ddlBranch.SelectedIndex = 1;

            }
            catch (Exception ex)
            {
                // MessageBox1.ShowMessage(ex.Message, BL.Backbone.Constants.MesageType.Error);
            }
        }
        protected void ddlBranch_SelectedIndexChanged(object sender, EventArgs e)
        {

            EmployeeAttendanceRepeater.DataSource = null;
            EmployeeAttendanceRepeater.DataBind();
            rptAllbranches.DataSource = null;
            rptAllbranches.DataBind();

            litAddmission.Text = "0";
            litFeeColection.Text = "0";
            litTotalExpense.Text = "0";
            litComplains.Text = "0";
            litStudentLeaves.Text = "0";
            litStdAttSMS.Text = "0";
            litStudentSMS.Text = "0";
            litEmployeeSMS.Text = "0";
       

            // Pending Approval            
            litUnsycEmployee.Text = "";



            try
            {
                if (!string.IsNullOrEmpty(ddlBranch.SelectedValue))
                {
                    int id = 0;
                    int.TryParse(ddlBranch.SelectedValue, out id);
                    if (id > 0)
                    {

                        var selected = DateDropDown.SelectedItem.Text;

                        BindAttendance(id, Convert.ToDateTime(selected));
                        BindmyEvents(id);

                       // BindDashboardData(Convert.ToDateTime(selected));

                       // BindAttendanceAllBranches(Convert.ToDateTime(selected));

                     


                    }
                    else
                    {
                        ddlBranch.DataSource = null;
                    }
                }
            }
            catch (Exception ex)
            {

            }
        }

        private void BindExpenseChart()
        {
           
        }


        private void BindAttendance(int BranchId, DateTime targetDate)
        {
        }

        private void BindAttendanceAllBranches(DateTime targetdate)
        {
            //rptAllbranches.DataSource = null;
            //rptAllbranches.DataBind();


            //DashboardFactory oDashboardFactory = new DashboardFactory();
            ////HARDCODE
            //var attendenceResult = oDashboardFactory.GetAttendanceAll(targetdate);
            //try
            //{
            //    rptAllbranches.DataSource = attendenceResult;
            //    rptAllbranches.DataBind();
            //}
            //catch (Exception x)
            //{
            //    return;
            //}
        }

        protected void DateDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {

            EmployeeAttendanceRepeater.DataSource = null;
            EmployeeAttendanceRepeater.DataBind();
            rptAllbranches.DataSource = null;
            rptAllbranches.DataBind();


            var selected = DateDropDown.SelectedItem.Text;

           // BindDashboardData(Convert.ToDateTime(selected));

            BindAttendanceAllBranches(Convert.ToDateTime(selected));

            BindAttendance(Convert.ToInt32(ddlBranch.SelectedValue), Convert.ToDateTime(selected));

        }
      
        protected string GetCheckInTime(object time, int status)
        {
            if (time == null)
                return "";

            if (status == 0 || status == 2)
            {
                return string.Empty;
            }
            else
            {
                DateTime o = new DateTime();
                o = (DateTime)time;
                return o.ToString("HH:mm:ss");
            }
        }


        protected string GetAttendenceStatusByStatus(int status)
        {
            //  <span class="label label-[STATUS] label-mini">[ATTENDENCE]</span>
            var templet = "";// Resource.AttendeceSpan;
            if (status == 0)  // Absent
            {
                templet = templet.Replace("[STATUS]", "danger");
                templet = templet.Replace("[ATTENDENCE]", "Absent");
            }

            if (status == 1)  // Present
            {
                templet = templet.Replace("[STATUS]", "success");
                templet = templet.Replace("[ATTENDENCE]", "Present");
            }
            if (status == 6)  // DayOff
            {
                templet = templet.Replace("[STATUS]", "info");
                templet = templet.Replace("[ATTENDENCE]", "Holiday");
            }

            if (status == 2)  // Absent
            {
                templet = templet.Replace("[STATUS]", "danger");
                templet = templet.Replace("[ATTENDENCE]", "Absent");
            }

            if (status == 10)  // Annual Leave
            {
                templet = templet.Replace("[STATUS]", "teal");
                templet = templet.Replace("[ATTENDENCE]", "Annual Leave");
            }


            if (status == 9)  // SickLeave
            {
                templet = templet.Replace("[STATUS]", "Brown");
                templet = templet.Replace("[ATTENDENCE]", "Sick Leave");
            }

            if (status == 8)  // CasualLeave
            {
                templet = templet.Replace("[STATUS]", "darkOrange");
                templet = templet.Replace("[ATTENDENCE]", "Casual Leave");
            }
            return templet;
        }
     
   


        private void BindmyEvents(int Branchid)
        {
           
        }

    }
}