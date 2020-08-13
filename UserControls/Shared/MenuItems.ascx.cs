
 
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication10.UserControls.Shared
{
    public partial class CustomMenuItems : BaseUserControl
    {
        public int  ModuleID { get; set; }
        public bool ShowButton { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            //var AttachmentPath =  new HelperMethods().GetValue("ShowEditButton"); //System.Configuration.ConfigurationManager.AppSettings[""];

            //if (AttachmentPath != null) 
            //{
            //    if (AttachmentPath == "true")
            //    {
            //        ShowButton = true;

            //    }
            //    else
            //    {
            //        ShowButton = false;
            //    }
            //}

            //var userType = this.LoginInfo.AccountType;
            //var userId = this.LoginInfo.Author == null ? this.LoginInfo.Student.Id : this.LoginInfo.Author.Id;

            //var UserPermission = new PermissionManager();
            //var links = UserPermission.GetUserPermissions(userType, userId);

            ////// filter only permissions which need to be shown in menu
            ////links = links.Where(x => x.ShowInMenu == true).ToList();

            //////// set permission group name for empty ones
            //links.ForEach(x => x.PermissionGroupName = String.IsNullOrEmpty(x.PermissionGroupName) ? "General" : x.PermissionGroupName);
            
            //links.Where(w => w.PermissionGroupId == null).ToList().ForEach(s => s.PermissionGroupId = 0);


            ////// group by permission group name
            //var groupedPermissionInfo = links.Where(a => a.PermissionGroupId == ModuleID & a.ShowInMenu == true).ToList(); ;



            //var orderby = groupedPermissionInfo.OrderBy(a => a.OrderSequence);

            //// bind
            //if (orderby != null)
            //{
            //    MenuItemList.DataSource = orderby;
            //    MenuItemList.DataBind();

            //    moduelName.Text = groupedPermissionInfo.FirstOrDefault().PermissionGroupName;
            //}
        }       
    }
}