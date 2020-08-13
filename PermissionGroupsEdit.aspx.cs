using System;
using System.Collections.Generic;


using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.IO;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.Web.UI.HtmlControls;
using System.Data;
using ClosedXML.Excel;


namespace WebApplication10
{
        [Permissions(Constants.Permissions.PermissionGroupsEdit)]
    public partial class PermissionGroupsEdit : BasePage
    {
        int GroupId = 0;
        const string vs_GroupId = "GroupIdViewState";
        protected void Page_Load(object sender, EventArgs e)
        {
            MessageBox1.ClearMessage();

            if (!IsPostBack)
            {
                if (Request.QueryString != null)

                    if (!string.IsNullOrEmpty(Convert.ToString(Request.QueryString["id"])))
                    {
                        int.TryParse(Request.QueryString["id"], out GroupId);
                    }
                if (Request.QueryString["mode"] == "edit")
                {
                    MessageBox1.ShowMessage("Group has been Updated", Constants.MesageType.Success);
                }


                SetPageControls(GroupId);

            }
        }

        private void SetPageControls(int GroupId)
        {
           
        }

       

        protected void btnSave_Click(object sender, EventArgs e)
        {
           
        }

    }
}