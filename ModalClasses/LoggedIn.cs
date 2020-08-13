
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebApplication10
{
    public class PermissionsAttribute : Attribute
    {
        public List<Constants.Permissions> RequiredPermissions { get; set; }

        public PermissionsAttribute(Constants.Permissions first, params Constants.Permissions[] requiredPermissions)
        {
            if (requiredPermissions != null)
            {
                this.RequiredPermissions = requiredPermissions.ToList();
            }
            else
            {
                this.RequiredPermissions = new List<Constants.Permissions>();
            }

            this.RequiredPermissions.Add(first);
        }
    }


    public class LoggedInAttribute : Attribute
    {
        public List<Constants.UserType> AllowedAccountTyes { get; set; }

        public LoggedInAttribute()
        {
            this.AllowedAccountTyes = new List<Constants.UserType>();
        }

        public LoggedInAttribute(params Constants.UserType[] allowedAccountTyes)
        {
            AllowedAccountTyes = allowedAccountTyes.ToList();
        }
    }
}
