using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication10.api
{
    /// <summary>
    /// Summary description for AttendanceUploder
    /// </summary>
    public class AttendanceUploder : IHttpHandler 
    {

        public void ProcessRequest(HttpContext context)
        {
           
        }


        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}