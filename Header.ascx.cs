

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication10.UserControls.Shared
{
    public partial class Header : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

            AuthenticationModel oAuthenticationModel = SessionService.GetCurrentUser();
            if (oAuthenticationModel != null)
            {
                if (oAuthenticationModel.Authenticated)
                {
                    
                        UserNameLit.Text = oAuthenticationModel.oPublisherInfo.Name;
                        if (string.IsNullOrEmpty(oAuthenticationModel.oPublisherInfo.PictureURL))
                        {
                            imgStudent.ImageUrl = "img/noprofile.jpg";
                        }
                        else
                        {
                            imgStudent.ImageUrl = oAuthenticationModel.oPublisherInfo.PictureURL;
                        }


                    
                    
                }
            }

        }
    }
}