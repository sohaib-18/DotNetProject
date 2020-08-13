
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication10
{
    [Permissions(Constants.Permissions.Menus)]
    public partial class Menus : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString != null) 
            {
                if (Request.QueryString["id"] != null)
                {
                    int moduleId = 0;

                    int.TryParse((Request.QueryString["id"]), out moduleId);
                    if (moduleId != 0) 
                    {
                        MenuItemsControl.ModuleID = moduleId;
                    }

                }
            }

          

            

        }
    }
}