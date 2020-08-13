


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication10.UserControls.Shared
{
    public partial class Sidebar : BaseUserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //AuthenticationModel oAuthenticationModel = SessionService.GetCurrentUser();

            //if (!oAuthenticationModel.Authenticated)
            //{
            //        Response.Redirect("~/Login.aspx",true);              
            //}
            //var userType = this.LoginInfo.AccountType;
            //var userId = this.LoginInfo.Author == null ? this.LoginInfo.Student.Id : this.LoginInfo.Author.Id;

            //var permissionManager = new PermissionManager();
            //var links = permissionManager.GetUserPermissions(userType, userId);

            //// filter only permissions which need to be shown in menu
            //links = links.Where(x => x.ShowInMenu == true).ToList();

            //// set permission group name for empty ones
            //links.ForEach(x => x.PermissionGroupName = String.IsNullOrEmpty(x.PermissionGroupName) ? "General" : x.PermissionGroupName);

            //// group by permission group name
            //var  groupedPermissionInfo = links.GroupBy(x => x.PermissionGroupId).ToList(); ;


            //List<PermissionInfo> eList = GetUniqueModuleNames(links);




            //// bind
            //if (eList != null)
            //{
            //    var data = eList.OrderBy(q => q.Order).ToList();

            //    MenuGroupRepeater.DataSource = data;
            //    MenuGroupRepeater.DataBind();
            //}
        }

        private List<PermissionInfo> GetUniqueModuleNames(List<PermissionInfo> links)
        {
            List<PermissionInfo> oResult = new List<PermissionInfo>();
            foreach (var item in links)
            {
               

               var data = oResult.Where(a => a.PermissionGroupId == item.PermissionGroupId).FirstOrDefault(); ;
               if (data == null) 
               {
                   PermissionInfo oPermissionInfo = new PermissionInfo();
                   oPermissionInfo.Id = item.Id;
                   oPermissionInfo.Name = item.Name;
                   oPermissionInfo.Order = item.Order;
                   oPermissionInfo.PermissionGroupName = item.PermissionGroupName;
                   oPermissionInfo.PermissionGroupId = item.PermissionGroupId;
                   oResult.Add(oPermissionInfo);


               }

            }

            return oResult;
            
        }

        protected void MenuGroupRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            //var menuItemRepeater = e.Item.FindControl("MenuItemRepeater") as Repeater;
            //var data = e.Item.DataItem as IGrouping<String, BL.Models.PermissionInfo>;
            //if (menuItemRepeater != null && data != null)
            //{
            //    menuItemRepeater.DataSource = data.ToList();
            //    menuItemRepeater.DataBind();
            //}
        }
    }
}