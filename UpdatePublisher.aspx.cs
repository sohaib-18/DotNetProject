using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;





namespace WebApplication10
{
    [Permissions(Constants.Permissions.AddCountry)]
    public partial class UpdatePublisher : BasePage
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
      
        
      
        protected void ENameLinkBtn_Click(object sender, EventArgs e)
        {
            //LinkButton btn = (LinkButton)(sender);
            //string id = btn.CommandArgument;

            //if (id != null)
            //{
            //    CountryFactory oCountryFactory = new CountryFactory();
            //    var result = oCountryFactory.DeleteCountry(Convert.ToInt32(id));
            //    if (result)
            //    {
            //        Response.Redirect("AddCountry.aspx");
            //    }
            //}
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}