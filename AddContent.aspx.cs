using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;





namespace WebApplication10
{
    //[Permissions(Constants.Permissions.AddContent)]
    public partial class AddContent : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int authorId = 0;
            AuthenticationModel oAuthenticationModel = SessionService.GetCurrentUser();
            if (oAuthenticationModel.Authenticated && oAuthenticationModel.oPublisherInfo != null)
            {
                 authorId = oAuthenticationModel.oPublisherInfo.Id;
            }

            MessageBox1.ClearMessage();

            if (!IsPostBack)
            {
               
            }
        }

     

        protected string GetBookAccessStatus(int status)
        {
            //  <span class="label label-[STATUS] label-mini">[ATTENDENCE]</span>
            var templet ="";// Resource.AttendeceSpan;
            
            if (status == 1)  // Free
            {
                templet = templet.Replace("[STATUS]", "teal");
                templet = templet.Replace("[ATTENDENCE]", "Free");
            }

            if (status == 2)  // Lock
            {
                templet = templet.Replace("[STATUS]", "success");
                templet = templet.Replace("[ATTENDENCE]", "Lock");
            }
            if (status == 3)  // Private
            {
                templet = templet.Replace("[STATUS]", "info");
                templet = templet.Replace("[ATTENDENCE]", "Private");
            }

            return templet;
        }

        protected string GetBookStatus(bool status)
        {
            //  <span class="label label-[STATUS] label-mini">[ATTENDENCE]</span>
            var templet = "";//Resource.AttendeceSpan;

            if (status )  // Free
            {
                templet = templet.Replace("[STATUS]", "success");
                templet = templet.Replace("[ATTENDENCE]", "Published");
            }
            else
            {
                templet = templet.Replace("[STATUS]", "darkOrange");
                templet = templet.Replace("[ATTENDENCE]", "Draft");

            }

            

            return templet;
        }

        private void BindBookType()
        {
           

       
           


        }
        private void BindCountry()
        {
        //    try
        //    {
        //        List<CountryInfo> oCountryInfoLst = null;

        //        oCountryInfoLst = new CountryFactory().GetCountry();
        //        Repeater1.DataSource = oCountryInfoLst;
        //        Repeater1.DataBind();
        //    }
        //    catch (Exception ex)
        //    {
        //        MessageBox1.ShowMessage(ex.Message, BL.Backbone.Constants.MesageType.Error);
        //    }
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

        protected void ddlBranch_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

          

            //if (NameTextBox1.Text == "")
            //{
            //    MessageBox1.ShowMessage("Subject name canot be empty", BL.Backbone.Constants.MesageType.Error);
            //    return ;
            //}
            //  if (DescTextBox2s.Text == "")
            //{
            //    MessageBox1.ShowMessage("Subject Desc canot be empty", BL.Backbone.Constants.MesageType.Error);
            //    return ;
            //}

            //  if (IconTextBox1.Text == "")
            //{
            //    MessageBox1.ShowMessage("Subject Url canot be empty", BL.Backbone.Constants.MesageType.Error);
            //    return ;
            //}
            

            //var BookType = Convert.ToInt32(ddlBookType.SelectedValue);


            //if (BookType == 0)
            //{
            //    MessageBox1.ShowMessage("Please Select a Subject Type", Constants.MesageType.Error);
            //    return;
            //}


            //int authorId = 0;
            //AuthenticationModel oAuthenticationModel = SessionService.GetCurrentUser();
            //if (oAuthenticationModel.Authenticated && oAuthenticationModel.Author != null)
            //{
            //    authorId = oAuthenticationModel.Author.Id;
            //}

            //StudentPortalDataContextDataContextDataContext oContent = new StudentPortalDataContextDataContextDataContext();
            //Book Ebook = new Book();
            //Ebook.AuthorId = authorId;
            //Ebook.BookDisc = DescTextBox2s.Text;
            //Ebook.BookImageURL = IconTextBox1.Text;
            //Ebook.BookName = NameTextBox1.Text;
            //Ebook.BookType = BookType;
            //Ebook.IsDeleted = false;
            //Ebook.IsPubished = false;

            //try
            //{
            //    oContent.Books.InsertOnSubmit(Ebook);
            //    oContent.SubmitChanges();
            //}
            //catch (Exception c)
            //{
            //    MessageBox1.ShowMessage(c.Message, Constants.MesageType.Error);
            //    return;
               
            //}


            //MessageBox1.ShowMessage("Added Successfully ", Constants.MesageType.Success);
            //return;




        }
    }
}