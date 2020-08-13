
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication10
{
    public partial class Logout : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
               
                //var userId = this.LoginInfo.oPublisherInfo == null ? this.LoginInfo. : this.LoginInfo.Author.Id;

                //var UserPermission = new PermissionManager();
               
            }
            catch (Exception)
            {

                throw;
            }
            this.AccountService.Logout();



            Response.Redirect("~/Login.aspx");
        }
    }
}