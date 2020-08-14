using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication10
{
    public partial class ViewAllMembers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private class CustomMember
        {
            public string Id { get; set; }
            public string EncryptedId { get; set; }

            public string memberName { get; set; }
            public string email { get; set; }
            public string phoneNumber { get; set; }

            public string address { get; set; }
            public string registrationFees { get; set; }
            public string registeredOn { get; set; }
            public string admissionFees { get; set; }
            public string totalPackages { get; set; }
            public string profilePic { get; set; }
        }

        private void BindMembners(bool hasDate)
        {
            try
            {
                List<CustomMember> oMembers = new List<CustomMember>();
                if (hasDate)
                {
                    using (DataClasses1DataContext eDataBase = new DataClasses1DataContext())
                    {
                        List<Member> eMembers = eDataBase.Members.Where(eMData => eMData.IsDeleted == false && eMData.RegisteredOn == Convert.ToDateTime(datepicker.Text)).ToList();
                        foreach (var eMember in eMembers)
                        {
                            CustomMember oMember = new CustomMember();
                            oMember.memberName = eMember.Name;
                            oMember.phoneNumber = eMember.PhoneNumber;
                            oMember.registrationFees = eMember.RegisterationFees.ToString();
                            oMember.admissionFees = eMember.AdmissionFees.ToString();
                            oMember.email = eMember.Email != null ? eMember.Email : "";
                            oMember.Id = eMember.Id.ToString();
                            oMember.EncryptedId = CommonMethods.EncryptString(eMember.Id.ToString());
                            oMember.address = eMember.Address != null ? eMember.Address : "";
                            oMember.registeredOn = eMember.RegisteredOn.ToLongDateString();
                            oMember.totalPackages = eMember.MemberPackages.Count.ToString();
                            oMember.profilePic = eMember.ProfilePic != null ? eMember.ProfilePic : "https://cdn4.iconfinder.com/data/icons/small-n-flat/24/user-alt-512.png";
                            oMembers.Add(oMember);

                        }
                        Repeater1.DataSource = oMembers;
                        Repeater1.DataBind();

                    }
                }
                else
                {
                    using (DataClasses1DataContext eDataBase = new DataClasses1DataContext())
                    {
                        List<Member> eMembers = eDataBase.Members.Where(eMData => eMData.IsDeleted == false).ToList();
                        foreach (var eMember in eMembers)
                        {
                            CustomMember oMember = new CustomMember();
                            oMember.memberName = eMember.Name;
                            oMember.phoneNumber = eMember.PhoneNumber;
                            oMember.registrationFees = eMember.RegisterationFees.ToString();
                            oMember.admissionFees = eMember.AdmissionFees.ToString();
                            oMember.email = eMember.Email != null ? eMember.Email : "";
                            oMember.Id = eMember.Id.ToString();
                            oMember.EncryptedId = CommonMethods.EncryptString(eMember.Id.ToString());
                            oMember.address = eMember.Address != null ? eMember.Address : "";
                            oMember.registeredOn = eMember.RegisteredOn.ToLongDateString();
                            oMember.totalPackages = eMember.MemberPackages.Count.ToString();
                            oMember.profilePic = eMember.ProfilePic != null ? eMember.ProfilePic : "https://cdn4.iconfinder.com/data/icons/small-n-flat/24/user-alt-512.png";
                            oMembers.Add(oMember);

                        }
                        Repeater1.DataSource = oMembers;
                        Repeater1.DataBind();

                    }
                }
            }
            catch(Exception ex)
            {
                MessageBox1.ShowError(ex.Message);
            }
        }

        protected void search_Click(object sender, EventArgs e)
        {
            if(datepicker.Text == "" || datepicker == null)
            {
                MessageBox1.ShowError("Please Select date");
                return;
            }
            try
            {
                BindMembners(true);

            }
            catch(Exception ex)
            {
                MessageBox1.ShowError(ex.Message);
            }
        }

        protected void searchAll_Click(object sender, EventArgs e)
        {
            try
            {
                BindMembners(false);
            }catch(Exception ex)
            {
                MessageBox1.ShowError(ex.Message);
            }
        }
    }
}