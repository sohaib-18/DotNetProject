using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication10
{
    public partial class about : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                var aaa = Server.MapPath("~/bin/Portal.dll");
                FileVersionInfo myFileVersionInfo = FileVersionInfo.GetVersionInfo(aaa);

                var FileVersion = myFileVersionInfo.FileVersion;
                version.Text += " ( V " + FileVersion + " )";
            }
            catch (Exception x)
            {

            }
        }
    }
}