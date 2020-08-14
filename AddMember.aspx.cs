using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication10
{
    public partial class AddMember : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            try
            {
                using (DataClasses1DataContext eDataBase = new DataClasses1DataContext())
                {
                    Member eMember = new Member();
                    eMember.Name = memberName.Text;
                    eMember.Email = Email.Text;
                    eMember.PhoneNumber = phoneNumber.Text;
                    eMember.Address = address.Text;
                    eMember.AdmissionFees = Convert.ToInt32(admissionFees.Text);
                    eMember.RegisterationFees = Convert.ToInt32(registrationFees.Text);
                    eMember.IsActive = true;
                    eMember.IsDeleted = false;
                    eMember.RegisteredOn = DateTime.Now.Date;
                    eDataBase.Members.InsertOnSubmit(eMember);
                    eDataBase.SubmitChanges();
                    MessageBox1.ShowSuccess("Member Registered");
                }
            }catch(Exception ex)
            {
                MessageBox1.ShowError(ex.Message);
            }
        }
    }
}