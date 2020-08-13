using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication10
{
    public partial class AddVideoURL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }
        

        protected void btn_save (Object sender, EventArgs e)
        {
         


        }

        protected void btn_delete(Object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)(sender);
            string id = btn.CommandArgument;

        }

        protected void btn_download(Object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)(sender);
            string id = btn.CommandArgument;
            Response.ClearContent();
            Response.ClearHeaders();
            Response.ContentType = "image/jpeg";
            Response.AppendHeader("Content-Disposition", "attachment; filename="+id+".jpeg");
            Response.TransmitFile(Server.MapPath(@"/QRCODES/"+id+".jpeg"));
            Response.End();
        }
    }
}