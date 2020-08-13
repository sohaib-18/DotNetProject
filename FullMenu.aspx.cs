
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;


using System.IO;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.Web.UI.HtmlControls;
using System.Data;
using ClosedXML.Excel;




namespace WebApplication10
{

     [Permissions(Constants.Permissions.FullMenu)]
    public partial class FullMenu : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //AuthenticationModel oAuthenticationModel = SessionService.GetCurrentUser();

            //if (!oAuthenticationModel.Authenticated)
            //{
            //    Response.Redirect("~/Login.aspx", true);
            //}

            //var userType = oAuthenticationModel.AccountType;
            //var userId = oAuthenticationModel.Author == null ? oAuthenticationModel.Student.Id : oAuthenticationModel.Author.Id;

            //bool IsEmployee = false;

            //if (userType == Portal.BL.Backbone.Constants.UserType.Student)
            //{
            //    IsEmployee = false;
            //}
            //else
            //{
            //    IsEmployee = true;
            //}



            //var permissionManager = new PermissionManager();
            //var links = permissionManager.GetUserPermissions(userType, userId);

            //// filter only permissions which need to be shown in menu
            //links = links.Where(x => x.ShowInMenu == true).ToList();

            //// set permission group name for empty ones
            //links.ForEach(x => x.PermissionGroupName = String.IsNullOrEmpty(x.PermissionGroupName) ? "General" : x.PermissionGroupName);

            //// group by permission group name
            //var groupedPermissionInfo = links.GroupBy(x => x.PermissionGroupId).ToList(); ;

            //List<PermissionInfo> eList = GetUniqueModuleNames(links);

            ///*
            // *
            // * Tags 
            // *     Container
            // *              Child
            // * 
            // * 
            //*/

            //// add them all in main container here
            //string mainContainer = "";

            //string stringTemplet = @"<section class=""panel""><header class=""panel-heading""><b>[PermissionName]</b></header> </section>[ULELEMENTS]";

            //foreach (var item in eList)
            //{
            //    var temp = stringTemplet;

            //    temp = temp.Replace("[PermissionName]", item.PermissionGroupName);

            //    if (item.PermissionGroupId.HasValue)
            //    {
            //        var UIwithLI = GetEmployeePermissionByModuleId(userId, item.PermissionGroupId.Value, IsEmployee);

            //       temp= temp.Replace("[ULELEMENTS]", UIwithLI); ;
            //    }
            //    else
            //    {
            //        var UIwithLI = GetEmployeePermissionByModuleId(userId, 0, IsEmployee);

            //        temp = temp.Replace("[ULELEMENTS]", UIwithLI); ;
            //    }
            //    mainContainer += temp;
            //}
            //tags.InnerHtml = mainContainer;
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


        private string GetEmployeePermissionByModuleId(int EmployeeIdNo, int PermissionModuleid , bool IsEmployee)
        {
            string finalString = "";

            //var UserPermission = new PermissionManager();
            //try
            //{ 



            //    var data = UserPermission.GetUserPermissionsWithOutCache(EmployeeIdNo, PermissionModuleid, IsEmployee);
            //    // Main Categories
            //    if (data.Count() != 0)
            //    {
            //        data = data.Where(x => x.ShowInMenu == true).ToList();

            //        var mainContainer = @"<ul class=""p-tag-list"">[CHILDS]</ul>";

            //        string templt = @"<li><a href=""[NAVAGATEURL]"" title=""[TOOLTIP]""><i class=""""></i>[TAGNAME]</a></li>";
            //        foreach (var item in data)
            //        {
            //            var Temptemplt = templt;
            //            Temptemplt = Temptemplt.Replace("[TAGNAME]", item.FriendlyName);
            //            Temptemplt = Temptemplt.Replace("[NAVAGATEURL]", item.Url);
            //            Temptemplt = Temptemplt.Replace("[TOOLTIP]", item.Discription);
                        
            //            finalString += Temptemplt;
            //        }
            //        finalString = mainContainer.Replace("[CHILDS]", finalString);  
            //    }
            //}
            //catch (Exception x)
            //{
            //    MessageBox1.ShowMessage(x.Message, BL.Backbone.Constants.MesageType.Error);
            //    return null;
            //}
            return finalString;
        }
    }
}