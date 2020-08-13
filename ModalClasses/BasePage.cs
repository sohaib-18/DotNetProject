
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebApplication10
{
    public class BasePage : System.Web.UI.Page
    {

        private AuthenticationModel _loginInfo = null;
        protected AuthenticationModel LoginInfo
        {
            get
            {
                if (_loginInfo == null)
                {
                    _loginInfo = SessionService.GetCurrentUser();
                }

                return _loginInfo;
            }
        }

        private AccountService _accountService = null;
        protected AccountService AccountService
        {
            get
            {
                // lazy loading
                if (_accountService == null)
                {
                    _accountService = new AccountService();
                }

                return _accountService;
            }
        }


        public BasePage()
        {
            this.PreInit += BasePage_PreInit;
            this.Init += BasePage_Init;
        }

        internal bool VerifyAccess(ref string userId )
        {

            userId ="";
            var AllowedIPS = System.Configuration.ConfigurationManager.AppSettings["AllowedIPS"].Split(new char[] { ',' }).ToList(); ;
            var AllowedUsers = System.Configuration.ConfigurationManager.AppSettings["AllowedUsers"].Split(new char[] { ',' }).ToList(); ;


            var AccessAllowed = true;

            var AuthenticationModel = SessionService.GetCurrentUser();
            string ip = System.Web.HttpContext.Current.Request.UserHostAddress.ToString();


            if (AuthenticationModel != null)
            {
                if (AuthenticationModel.Authenticated)
                {
                    // Check only for Empoyee and admins
                   

                    // if user is not in the exit list then cross chek its IP
                    
                    bool ipExist = AllowedIPS.Contains(ip);

                    if (!ipExist)
                    {
                        return false;
                    }





                }
            }


            return AccessAllowed;
        }
        void BasePage_Init(object sender, EventArgs e)
        {

            var SiteIsLive = System.Configuration.ConfigurationManager.AppSettings["SiteIsLive"];
            if (SiteIsLive.ToLower() == "no")
            {
                Response.Redirect("~/500.html");

            }




            var restrictionAllowed = System.Configuration.ConfigurationManager.AppSettings["IPRestrictionEnabaled"];

            if (restrictionAllowed == "yes")
            {

                string message="";
                var AccessAllowed = this.VerifyAccess(ref message);

                if (AccessAllowed == false)
                {
                    Response.Redirect("~/400.html?" + message);
                }

            }

            var AuthenticationModel = SessionService.GetCurrentUser();
            if (AuthenticationModel.Authenticated == false)
            {
                //Response.Redirect("~/Login.aspx");
            }

            // authentication checks if user is logged in or not
            var isLoggedIn = false;

            // authorization checks if user is admin, teacher or student
            var isAuthorized = false;
            var isAuthenticatedPage = false;

            var attributes = this.GetType().GetCustomAttributes(true);
            var loginInfo = this.LoginInfo;



            //foreach (var attribute in attributes)
            //{
            //    if (attribute is LoggedInAttribute)
            //    {
            //       // if we have found LoggedInAttribute
            //        // then it means the page is authenticated
            //        // and we must check user authentication and authorization
            //        isAuthenticatedPage = true;

            //        var allowedAccountTyes = ((LoggedInAttribute)attribute).AllowedAccountTyes;

            //        // guest users should not 
            //        // be allowed to come on this page
            //        if (loginInfo.Authenticated == true)
            //        {
            //            isLoggedIn = true;
            //        }
            //        else
            //        {
            //            isLoggedIn = false;
            //            break;
            //        }





            //        // check for authorization
            //        // if user is admin so he can only browse admin pages.
            //        if (allowedAccountTyes.Contains(Backbone.Constants.UserType.Admin))
            //        {
            //            if (loginInfo.AccountType == Backbone.Constants.UserType.Admin)
            //            {
            //                isAuthorized = true;
            //                break;
            //            }
            //        }
            //        else if (allowedAccountTyes.Contains(Backbone.Constants.UserType.Author))
            //        {
            //            if (loginInfo.AccountType == Backbone.Constants.UserType.Author)
            //            {
            //                isAuthorized = true;
            //                break;
            //            }
            //        }
            //        else
            //        {
            //            if (loginInfo.AccountType == Backbone.Constants.UserType.Student)
            //            {
            //                isAuthorized = true;
            //                break;
            //            }
            //        }
            //    }
            //    else if (attribute is PermissionsAttribute)
            //    {
            //        // if we have found PermissionsAttribute
            //        // then it means the page is authenticated
            //        // and we must check user authentication and authorization
            //        isAuthenticatedPage = true;


            //        var requiredPermissions = ((PermissionsAttribute)attribute).RequiredPermissions.Select(x=> x.GetHashCode());

            //        // guest users should not 
            //        // be allowed to come on this page
            //        if (loginInfo.Authenticated == false)
            //        {
            //            isLoggedIn = false;
            //            break;
            //        }
            //        else
            //        {
            //            isLoggedIn = true;
            //            var permissions = loginInfo.Permissions;
                        
            //           var aaa=  permissions.Where(s=>s.Id== 63).FirstOrDefault();
            //           if (aaa != null)
            //           {

            //           }

            //            var found = permissions.Where(x => requiredPermissions.Contains(x.Id)).ToList();
            //            if (found != null && found.Count > 0)
            //            {
            //                isAuthorized = true;
            //                break;
            //            }
            //        }
            //    }
            //}


            if (isAuthenticatedPage == true)
            {
                // if user is not logged in
                // then redirect to login page.
                if (isLoggedIn == false)
                {
                    Response.Redirect("~/Login.aspx");
                }
                else
                {
                    if (isAuthorized == false)
                    {
                        Response.Redirect("~/AccessDenied.aspx");
                    }
                }
            }
        }



        void BasePage_PreInit(object sender, EventArgs e)
        {

        }

    }
}
