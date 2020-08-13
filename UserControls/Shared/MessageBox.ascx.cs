using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication10
{
    public partial class MessageBox : System.Web.UI.UserControl
    {
        const string IconPlaceHolder = "[ICONCLASS]";
        string msgBoxCommomClasses = "alert alert-block fade in";
        string msgBoxIconFormat = "<i class='" + IconPlaceHolder + "'></i>";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        public void ShowError(string msg)
        {
            this.ShowMessage(msg, Constants.MesageType.Error);
        }

        public void ShowSuccess(string msg)
        {
            this.ShowMessage(msg, Constants.MesageType.Success);
        }

        public void ShowMessage(string msg, Constants.MesageType type)
        {
            pnlMsgBox.Visible = true;
            closebutton.Visible = true;
            string iconClass = string.Empty;
            switch (type)
            {
                case Constants.MesageType.Error:
                    //litHeader.Text = "Error";
                    pnlMessage.CssClass = msgBoxCommomClasses + " alert-danger";
                    iconClass = "fa fa-ban fa-lg";
                    break;

                case Constants.MesageType.Warning:
                    //litHeader.Text = "Warning";
                    //pnlMessage.CssClass = msgBoxCommomClasses + " alert-warning";
                    iconClass = "fa fa-warning fa-lg";
                    break;

                case Constants.MesageType.Info:
                    //litHeader.Text = "Informative";
                    pnlMessage.CssClass = msgBoxCommomClasses + " alert-info";
                    iconClass = "fa fa-info-circle fa-lg";
                    break;

                case Constants.MesageType.Success:
                    //litHeader.Text = "Success";
                    pnlMessage.CssClass = msgBoxCommomClasses + " alert-success";
                    iconClass = "fa fa-check-circle-o fa-lg";
                    break;
            }
            litIcon.Text = msgBoxIconFormat.Replace(IconPlaceHolder, iconClass);
            litMsg.Text = msg;
        }
        

        public void ClearMessage()
        {
            //litHeader.Text = string.Empty;
            litIcon.Text = string.Empty;
            litMsg.Text = string.Empty;
            pnlMsgBox.Visible = false;
            closebutton.Visible = false;
        }
    }
}