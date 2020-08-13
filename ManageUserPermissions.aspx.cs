using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication10
{
    [Permissions(Constants.Permissions.ManageUserPermissions)]
    public partial class ManageUserPermissions : BasePage
    {
        private int UserId
        {
            get
            {
                var data = Convert.ToString(ViewState["UserId"]).ToIntSafe();

                if (data == 0)
                {
                    data = Request.QueryString["uid"].ToIntSafe();
                    ViewState["UserId"] = data;
                }
                return data;
            }
        }

        private int UserTypeId
        {
            get
            {
                var data = Convert.ToString(ViewState["UserTypeId"]).ToIntSafe();

                if (data == 0)
                {
                    data = Request.QueryString["utid"].ToIntSafe();
                    ViewState["UserTypeId"] = data;
                }

                return data;
            }
        }

      




        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {

                if (this.UserId == 0 || this.UserTypeId == 0)
                {
                    MessageBox1.ShowMessage("No Employee found with provided Id",Constants.MesageType.Error);
                    return;
                }

                if (Request.QueryString["done"] == "true")
                {
                    MessageBox1.ShowMessage("Employee permissions have been saved!", Constants.MesageType.Success);
                }
                else if (Request.QueryString["done"] == "false")
                {
                    MessageBox1.ShowMessage(Utility.Resource.Error_Msg, Constants.MesageType.Error);
                }

                SetPageControls(this.UserId);
            }
        }


        private void SetPageControls(int EmployeeId)
        {
            
        }

        protected void employeePermissionsRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
           
        }

       
    }
}