
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication10
{
    //[Permissions(Constants.Permissions.Default)]
    public partial class Default : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           



            ShowSessionSize();


        }



        private void ShowSessionSize()
        {
            Page.Trace.Write("Session Trace Info");

            long totalSessionBytes = 0;
            System.Runtime.Serialization.Formatters.Binary.BinaryFormatter b =
                new System.Runtime.Serialization.Formatters.Binary.BinaryFormatter();
            System.IO.MemoryStream m;
            foreach (string key in Session)
            {
                var obj = Session[key];
                m = new System.IO.MemoryStream();
                b.Serialize(m, obj);
                totalSessionBytes += m.Length;

                Page.Trace.Write(String.Format("{0}: {1:n} kb", key, m.Length / 1024));
            }


            var sss = totalSessionBytes / 1024;

            Page.Trace.Write(String.Format("Total Size of Session Data: {0:n} kb",
               totalSessionBytes / 1024));
        }



        protected void Page_Init(object sender, EventArgs e)
        {
           
            //MyControl is the Custom User Control with a code behind file
           

        }

    }
}