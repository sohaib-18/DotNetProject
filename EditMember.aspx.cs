using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication10
{
    public partial class EditMember : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            memberName.Enabled = false;
            registrationFees.Enabled = false;
            admissionFees.Enabled = false;
            if (!Page.IsPostBack)
            {
                BindData();
            }
        }

        private void BindData()
        {
            string abc = CommonMethods.DecryptString(Request.QueryString["ID"]);
            int memberId = Convert.ToInt32(CommonMethods.DecryptString(Request.QueryString["ID"]));
            try
            {
                using(DataClasses1DataContext eDataBase = new DataClasses1DataContext())
                {
                    var record = eDataBase.Members.Where(eMData => eMData.Id == memberId && eMData.IsDeleted == false).FirstOrDefault();
                    memberName.Text = record.Name;
                    Email.Text = record.Email;
                     phoneNumber.Text= record.PhoneNumber;
                    address.Text = record.Address;
                    admissionFees.Text = record.AdmissionFees.ToString();
                    registrationFees.Text = record.RegisterationFees.ToString();
                    height.Text = record.MemberDetails.Where(eDData => eDData.CustomField.FieldName == "Height").FirstOrDefault() != null ? record.MemberDetails.Where(eDData => eDData.CustomField.FieldName == "Height").FirstOrDefault().Value : "";
                    weight.Text = record.MemberDetails.Where(eDData => eDData.CustomField.FieldName == "Weight").FirstOrDefault() != null ? record.MemberDetails.Where(eDData => eDData.CustomField.FieldName == "Weight").FirstOrDefault().Value : "";
                    age.Text = record.MemberDetails.Where(eDData => eDData.CustomField.FieldName == "Age").FirstOrDefault() != null ? record.MemberDetails.Where(eDData => eDData.CustomField.FieldName == "Age").FirstOrDefault().Value : "";
                    bodyMass.Text = record.MemberDetails.Where(eDData => eDData.CustomField.FieldName == "BodyMass").FirstOrDefault() != null ? record.MemberDetails.Where(eDData => eDData.CustomField.FieldName == "BodyMass").FirstOrDefault().Value : "";

                }
            }
            catch (Exception ex)
            {
                MessageBox1.ShowError(ex.Message);
            }
        }
    }
}