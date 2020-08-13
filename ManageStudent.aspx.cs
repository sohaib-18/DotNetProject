



using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication10
{

    [Permissions(Constants.Permissions.ManageStudent)]
    public partial class ManageStudent : BasePage
    {
        public int UserTypeId = 0;
        public int StudentId = 0;

        public int EmployeeId = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {                
                BindCampus();     
            }
            StudentCount.Visible = false;
            Female.Visible = false;
            Male.Visible = false;

        }

        private void BindCampus()
        {
            try
            {
                CommonMethods oCommonMethods = new CommonMethods();
                oCommonMethods.BindCampus(ref DDLBranch);
            }
            catch (Exception ex)
            {
                MessageBox1.ShowMessage(ex.Message, Constants.MesageType.Error);
            }
        }
        
        protected void DDLBranch_SelectedIndexChanged(object sender, EventArgs e)
        {
            Repeater1.DataSource = null;
            Repeater1.DataBind();
           

            try
            {
                if (!string.IsNullOrEmpty(DDLBranch.SelectedValue))
                {
                    int id = 0;
                    int.TryParse(DDLBranch.SelectedValue, out id);
                    if (id > 0)
                    {
                        CommonMethods oCommonMethods = new CommonMethods();
                        oCommonMethods.BindClasses(ref ddlClass, id);


                    }
                    else
                    {
                        DDLBranch.DataSource = null;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox1.ShowMessage(ex.Message, Constants.MesageType.Error);
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
           

        }

        protected void btnDownload_Click(object sender, EventArgs e)
        {
            BindAndExportAsPDF();
        }

        #region Downloading in PDF File
        private void BindAndExportAsPDF()
        {
        }

        private void BindAndExportAsPDFSelected()
        {


        }
        #endregion

        protected void SendSmS_Click(object sender, EventArgs e)
        {

        }

        protected void ddlClass_SelectedIndexChanged(object sender, EventArgs e)
        {
            Repeater1.DataSource = null;
            Repeater1.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Repeater1.DataSource = null;
            Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            BindAndExportAsPDFSelected();
        }
    }
}