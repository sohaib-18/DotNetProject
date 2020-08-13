
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication10;





namespace WebApplication10
{
    [Permissions(Constants.Permissions.EmployeeDirectory)]
    public partial class EmployeeDirectory : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string charecter = string.Empty;
            string branch = "";
            string department = "";
            int branchCode = 0;
            int departmentid = 0;
          //WebApplication10.MessageBox1.ClearMessage();
            if (!Page.IsPostBack)
            {
                BindBranch();

                if (Request.QueryString != null && Request.QueryString["search"] != null)
                {
                    charecter = Request.QueryString["search"];
                }

                if (Request.QueryString != null && Request.QueryString["b"] != null)
                {
                    branch = Request.QueryString["b"];
                    int.TryParse(branch, out branchCode);
                    BindDeparment(branchCode);
                }

                if (Request.QueryString != null && Request.QueryString["d"] != null)
                {
                    department = Request.QueryString["d"];
                    int.TryParse(department, out departmentid);
                    ddlDepartment.SelectedValue = departmentid.ToString();
                }

                string HideEmployees = System.Configuration.ConfigurationManager.AppSettings["HideEmployeesFrimListing"];
                BindEmployees(charecter, HideEmployees, branchCode, departmentid);
            }
        }

        protected void ddlBranch_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int id = 0;
                if (!string.IsNullOrEmpty(ddlBranch.SelectedValue))
                {
                    int.TryParse(ddlBranch.SelectedValue, out id);
                    if (id > 0)
                    {
                        rptEmployees.DataSource = null;
                        rptEmployees.DataBind();
                        BindDeparment(id);
                    }
                    else
                    {
                         
                        //MessageBox1.ShowError("Please select any Branch");
                        return;
                    }
                }
            }
            catch (Exception ex)
            {
               // MessageBox.ShowMessage(ex.Message, Constants.MesageType.Error);
            }
        }
        private void BindBranch()
        {
            rptEmployees.DataSource = null;

            try
            {
                WebApplication10.CommonMethods oCommonMethods = new CommonMethods();
                oCommonMethods.BindCampus(ref ddlBranch);
            }
            catch (Exception ex)
            {
                ///MessageBox1.ShowMessage(ex.Message, Constants.MesageType.Error);
            }
        }
        private void BindDeparment(int branchId)
        {
            try
            {
                //DepartmentFactory oDepartmentFactory = new DepartmentFactory();
                //List<DepartmentInfo> oDepartmentInfo = oDepartmentFactory.GetDepartmentByBranchId(branchId);
                //ddlDepartment.DataSource = oDepartmentInfo;
                //ddlDepartment.DataTextField = "DepartmentName";
                //ddlDepartment.DataValueField = "Id";
                //ddlDepartment.DataBind();
                //ddlDepartment.Items.Insert(0, new System.Web.UI.WebControls.ListItem("All", "0"));
            }
            catch (Exception ex)
            {
                ///MessageBox1.ShowMessage(ex.Message, Constants.MesageType.Error);
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            var Branch = Convert.ToInt32(ddlBranch.SelectedValue);
            if (Branch == 0)
            {
                ///MessageBox1.ShowMessage("Please Select Branch", Constants.MesageType.Error);
                return;
            }

            if (Branch != 0 && string.IsNullOrEmpty(ddlDepartment.SelectedValue))
            {
                //MessageBox1.ShowMessage("Please Select Branch To Proceed", Constants.MesageType.Error);
                return;
            }
            var Deparment = Convert.ToInt32(ddlDepartment.SelectedValue);


            try
            {
                NavigationCharacter.InnerHtml = GenerateLinks(Branch, Deparment);
                string HideEmployees = System.Configuration.ConfigurationManager.AppSettings["HideEmployeesFrimListing"];
                BindEmployees("", HideEmployees, Branch, Deparment);
            }
            catch (Exception ex)
            {
                //MessageBox1.ShowMessage(ex.Message, Constants.MesageType.Error);
            }

        }

        private String GenerateLinks(int branchId, int departId)
        {
            string result = "";
            String templet = @"<li><a href=""EmployeeDirectory.aspx?search=[CHARACTER]&b=[BRANCH]&d=[DEPARTMENT]"">[CHARACTER]</a></li>";
            char[] alpha = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".ToCharArray();

            foreach (var item in alpha)
            {
                result += templet.Replace("[CHARACTER]", item.ToString());
            }

            result = result.Replace("[BRANCH]", branchId.ToString());
            result = result.Replace("[DEPARTMENT]", departId.ToString());
            return result;
        }

        private void BindEmployees(string charecter, string HideEmployees, int branchCode, int deparmentid)
        {
            //try
            //{
            //    MessageBox1.ClearMessage();

            //    if (branchCode != 0)
            //    {
            //        ddlBranch.SelectedValue = "" + branchCode;
            //        NavigationCharacter.InnerHtml = GenerateLinks(branchCode, deparmentid);
            //    }

            //    if (branchCode == 0)
            //    {
            //        int.TryParse(ddlBranch.SelectedValue, out branchCode);
            //        if (branchCode == 0)
            //        {
            //            MessageBox1.ShowMessage("Please select any Branch", Constants.MesageType.Info);
            //            return;
            //        }
            //    }


            //    string[] emp = HideEmployees.Split(new char[] { ',' });
            //    List<int> empId = new List<int>();
            //    foreach (var item in emp)
            //    {
            //        empId.Add(Convert.ToInt32(item));
            //    }


            //    EmployeeFactory o = new EmployeeFactory();
            //    List<EmployeeInfo> oEmployeeInfoLst = null;

            //    if (!string.IsNullOrEmpty(charecter))
            //        oEmployeeInfoLst = o.GetEmployeeByStartCharacter(charecter, branchCode, deparmentid);
            //    else
            //        oEmployeeInfoLst = o.GetAllEmployeeWithINACTIVEEMPLOYEE(branchCode, deparmentid);

            //    if (oEmployeeInfoLst != null)
            //    {
            //        if (oEmployeeInfoLst.Count() > 0)
            //        {
            //            oEmployeeInfoLst.RemoveAll(p => empId.Contains(p.Id));
            //        }
            //    }


            //    var active = oEmployeeInfoLst.Where(a => a.IsActive == true).Count();
            //    var inactive = oEmployeeInfoLst.Where(a => a.IsActive == false).Count();


            //    EmployeeCount.InnerText = "Total Employees " + oEmployeeInfoLst.Count() + " ( Active = " + active + ", In-Active = " + inactive + " )";


            //    rptEmployees.DataSource = oEmployeeInfoLst;
            //    rptEmployees.DataBind();
            //}
            //catch (Exception ex)
            //{
            //    MessageBox1.ShowMessage(ex.Message, BL.Backbone.Constants.MesageType.Error);
            //}
        }

        protected string GetAttendenceStatusByStatus(object status)
        {
            string templet = "label label-danger label-mini";
            if (Convert.ToBoolean(status) == true)  // Absent
            {
                templet = "label label-success label-mini";
            }
            else
            {
                templet = "label label-danger label-mini";
            }
            return templet;
        }

        protected string GetEmploymentStatus(object status)
        {
            string templet = "label label-danger label-mini";
            if (Convert.ToBoolean(status) == true)  // Absent
            {
                templet = "Active";
            }
            else
            {
                templet = "In-Active";
            }
            return templet;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
          
        }

        protected void ddlDepartment_SelectedIndexChanged(object sender, EventArgs e)
        {
            rptEmployees.DataSource = null;
            rptEmployees.DataBind();
        }
    }
}