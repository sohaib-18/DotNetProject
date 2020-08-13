
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication10.MasterPages
{
    public partial class Global : System.Web.UI.MasterPage
    {

        /// <summary>
        /// common handling for showing error messages
        /// need to change to usercontrl
        /// </summary>
        public String ShowMessage { get; set; }
        public String ShowAlert { get; set; }


        protected void Page_Load(object sender, EventArgs e)
        {
            //litPortalName.Text = new HelperMethods().GetValue("PotalName");
            //Slogon.Text = new HelperMethods().GetValue("PortalSlogon");
            //folter.Text = new HelperMethods().GetValue("FooterMessage");


            // Get the file version for the notepad.

           

        }
    }
}