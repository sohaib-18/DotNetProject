using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Text.RegularExpressions;

namespace WebApplication10
{
    [Permissions(Constants.Permissions.AllPermissions)]
    public partial class AllPermissions : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) 
            {
                BindPermission();
            }
        }

        private void BindPermission()
        {
           


        }

        protected void ENameLinkBtn_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)(sender);
            string id = btn.CommandArgument;

            if (id != null)
            {
               
            }
        }

        protected void ENameLinkBtn_Click1(object sender, EventArgs e)
        {
             int permissionId = 0;
            
            LinkButton btn = (LinkButton)(sender);
            string id = btn.CommandArgument;

            if (id != null)
            {

                Int32.TryParse(id, out permissionId);

                if (permissionId != 0)
                {
                   // PermissionFactory ofactory = new PermissionFactory();
                    //ofactory.AddPermissionInAdminPermission(permissionId);
                }
            }
        }

       
    }
}