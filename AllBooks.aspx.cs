using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication10
{
    public partial class AllBooks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            
        }

        protected void btn_AddURL(Object sender, EventArgs e)
        {
        }
        protected void btn_delete(Object sender, EventArgs e)
        {
           
        }

        protected void ENameLinkBtn_Click(object sender, EventArgs e)
        {
            // book id will be in command arg
            LinkButton btn = (LinkButton)(sender);
            string id = btn.CommandArgument;

        }


    }
}