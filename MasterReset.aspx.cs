
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;


using System.IO;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.Web.UI.HtmlControls;
using System.Data;
using ClosedXML.Excel;


using System.Data.SqlClient;


namespace WebApplication10
{

     [Permissions(Constants.Permissions.MasterReset)]
    public partial class MasterReset : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           //// Student Sync Status
          
           // Portal.BL.Services.HelperMethods oMethods = new BL.Services.HelperMethods();
           // var data  = oMethods.GetValueForPortalAction("StudentDefaultPermissionReset");
           // StudenTPermissionLit.Text = data;

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //MessageBox.Visible = false;
            //messageText.Text = "";

            //int SuperAdminConvertedId = 0;
            //try
            //{


            //    var AdminId = new HelperMethods().GetValue("PortalSuperAdminId");

            //    Int32.TryParse(AdminId, out SuperAdminConvertedId);

            //    if (SuperAdminConvertedId != 0)
            //    {
            //        PermissionFactory per = new PermissionFactory();
            //        string result = per.GiveAllPermissionToSuperAdmin(SuperAdminConvertedId);


            //        if (result == "true")
            //        {
            //            MessageBox.Visible = true;
            //            messageText.Text = "Permission has Been Added " + result;
            //            return;
            //        }
            //        else
            //        {
            //            MessageBox.Visible = true;
            //            messageText.Text = result;
            //            return;
            //        }
            //    }
            //    else
            //    {
            //        MessageBox.Visible = true;
            //        messageText.Text = "ID is Zero";
            //        return;
            //    }

            //}
            //catch (Exception xx)
            //{
            //    MessageBox.Visible = true;
            //    messageText.Text = xx.Message;

            //}
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //Portal.BL.Services.HelperMethods oo = new HelperMethods();
            //oo.ResetStudentIds();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {


            //Portal.BL.Services.HelperMethods oo = new HelperMethods();
            //var result = oo.ExecuteOrder(txtName.Text );
            var eee = txtName.Text;
            if (eee.ToLower().Contains("delete")) 
            {
                return;
            }
           
            if (!eee.StartsWith("FH3104"))
            {
                return;
            }

            eee = eee.Replace("FH3104", "");

            var connn = Convert.ToString(System.Configuration.ConfigurationManager.AppSettings["CString"]);
            var select = eee;
            var c = new SqlConnection(connn); // Your Connection String here
            var dataAdapter = new SqlDataAdapter(select, c);

            var commandBuilder = new SqlCommandBuilder(dataAdapter);
            var ds = new DataSet();
            dataAdapter.Fill(ds);
           // GridView1.ReadOnly = true;
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();

           
        }

        protected void ResetFeeAmountButton5_Click(object sender, EventArgs e)
        {

            MessageBox.Visible = false;
            messageText.Text = "";
            var feetype = feetypeTextBox1.Text;

            int feety = 0;

            int.TryParse(feetype, out feety);

            if (feety == 0) 
            {
                MessageBox.Visible = true;
                messageText.Text = "Invalid Fee Type Id";
            }

            Utility.Helper oHelper = new Utility.Helper();
            oHelper.ResetFeeHeadAmountWithDefaultFee(feety);

        }
    }
}