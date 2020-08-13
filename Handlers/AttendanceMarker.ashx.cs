 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication10.Handlers
{
    /// <summary>
    /// Summary description for AttendanceMarker
    /// </summary>
    public class AttendanceMarker : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            //var request = context.Request;
            //var response = context.Response;
            //var result = string.Empty;

            //try
            //{               
            //    var attendanceMarked = Portal.Utility.Helper.AddStudentAttendance(context);
            //    result = attendanceMarked.ToString().ToLowerInvariant();
            //}
            //catch (Exception x)
            //{
            //    result += x.Message;
            //}

            //response.ContentType = "text/plain";
            //response.Write(result);

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