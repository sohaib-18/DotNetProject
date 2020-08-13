


using System;
using System.Collections.Generic;

namespace WebApplication10
{
   
    public partial class MyBookList : BasePage
    {
        public static string key = System.Configuration.ConfigurationManager.AppSettings["SecurityKeyHash"];
        public int StudentId = 0;
        public string AttachmentPath;
        protected void Page_Load(object sender, EventArgs e)
        {
            AuthenticationModel oAuthenticationModel = SessionService.GetCurrentUser();
            if (oAuthenticationModel.Authenticated && oAuthenticationModel.oPublisherInfo != null)
            {
                StudentId = oAuthenticationModel.oPublisherInfo.Id;
            }

            MessageBox1.ClearMessage();
            AttachmentPath = System.Configuration.ConfigurationManager.AppSettings["BookListAttachmentPath"];
            try
            {
               
            }
            catch (Exception ex)
            {
                MessageBox1.ShowMessage(ex.Message, Constants.MesageType.Error);
            }
        }
    }
}