

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebApplication10
{
    public class BaseUserControl : System.Web.UI.UserControl
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


    }
}
