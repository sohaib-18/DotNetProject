

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication10.UserControls.Shared
{
    public partial class HeaderFinalControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            litPortalName.Text = "PIXCILE";
            Slogon.Text = "QR APP";


            AuthenticationModel oAuthenticationModel = SessionService.GetCurrentUser();
            if (oAuthenticationModel != null)
            {
                if (oAuthenticationModel.Authenticated)
                {
                    
                      

                    
                  

                  
                }
            }

        }
    }
}