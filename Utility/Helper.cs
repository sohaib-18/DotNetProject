using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using OfficeOpenXml;

 
using System.Net;


using System.Drawing;
using System.Drawing.Text;
using Hangfire;
using System.Globalization;



 

using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace WebApplication10.Utility
{

    public static class ExtensionMethods
    {
        public static string ToReadableStringHoursOnly(this TimeSpan span)
        {


            int days = span.Days;
            int mint = span.Minutes;
            int hours = span.Hours;
            if (days != 0)
            {
                int n = days * 24;
                hours = hours + n;
            }

            string templet = "[H]h,[M]m";
            templet = templet.Replace("[H]", "" + hours);
            templet = templet.Replace("[M]", "" + mint);


            return templet;
        }
    }
    public class Helper
    {


        internal void ConstructToastMessages(string message)
        {
            HttpContext.Current.Session.Add("ApplicationMessage", message);
        }

      

        public List<DateTime> getSundays(int YearId, int MonthId)
        {
            List<DateTime> lstSundays = new List<DateTime>();

            int intDaysThisMonth = DateTime.DaysInMonth(YearId, MonthId);
            DateTime oBeginnngOfThisMonth = new DateTime(YearId, MonthId, 1);
            for (int i = 1; i < intDaysThisMonth + 1; i++)
            {
                if (oBeginnngOfThisMonth.AddDays(i).DayOfWeek == DayOfWeek.Sunday)
                {
                    lstSundays.Add(new DateTime(YearId, MonthId, i));
                }
            }
            return lstSundays;
        }

        public List<DateTime> getDateWithoutSundays(int YearId, int MonthId)
        {
            List<DateTime> lstDates = new List<DateTime>();

            int intDaysThisMonth = DateTime.DaysInMonth(YearId, MonthId);
            DateTime oBeginnngOfThisMonth = new DateTime(YearId, MonthId, 1);
            for (int i = 1; i < intDaysThisMonth + 1; i++)
            {
                if (oBeginnngOfThisMonth.AddDays(i).DayOfWeek != DayOfWeek.Sunday)
                {
                    lstDates.Add(new DateTime(YearId, MonthId, i));
                }
            }
            return lstDates;
        }



        public List<DateTime> GetAllDateWithInRange(DateTime from, DateTime till)
        {

            List<DateTime> oList = new List<DateTime>();
            DateTime startDate = from;
            DateTime endDate = till;

            TimeSpan diff = endDate - startDate;
            int days = diff.Days;
            for (var i = 0; i <= days; i++)
            {
                var testDate = startDate.AddDays(i);
                oList.Add(testDate);


            }

            return oList;
        }
      

          internal string GetCellNoLimitMessage(ValidateType validateType)
        {
            string result = "";
            if (validateType == ValidateType.PakistanMobileNoLimitCheck)
            {
                result = "Mobile no must be of 11 number";
            }


            return result;
        }
 

        internal void ConstructMessageAndSaveInSession(string messageType, string EmployeeName, DateTime mashineLogDate)
        {
            string message = "";

            if (messageType == "LeaveApproved")
            {
                message = "Leave request of employee <strong>" + EmployeeName + "</strong>&nbsp;of date <strong>" + mashineLogDate.ToString("ddd, MMM d, yyyy") + "</strong> has been approved by you .";
                HttpContext.Current.Session.Add("ApplicationMessage", message);


            }
            if (messageType == "ApproveMissingCheckOutRequest")
            {
                message = "Check-Out missing request of employee <strong>" + EmployeeName + "</strong>&nbsp;of date <strong>" + mashineLogDate.ToString("ddd, MMM d, yyyy") + "</strong> has been approved by you .";
                HttpContext.Current.Session.Add("ApplicationMessage", message);


            }
            if (messageType == "AddMissingCheckInCheckOutBothByAdmin")
            {
                message = "Missing Check-In and Check-Out of employee <strong>" + EmployeeName + "</strong>&nbsp;of date <strong>" + mashineLogDate.ToString("ddd, MMM d, yyyy") + "</strong> has been added by you .";
                HttpContext.Current.Session.Add("ApplicationMessage", message);


            }
            if (messageType == "NewLeaveAddedByAdmin")
            {
                message = "Absent of employee <strong>" + EmployeeName + "</strong>&nbsp;of date <strong>" + mashineLogDate.ToString("ddd, MMM d, yyyy") + "</strong> has been added by you .";
                HttpContext.Current.Session.Add("ApplicationMessage", message);


            }
            if (messageType == "AddCheckinCheckoutAgainstLewaverequest")
            {
                message = "Absent record of employee <strong>" + EmployeeName + "</strong>&nbsp;of date <strong>" + mashineLogDate.ToString("ddd, MMM d, yyyy") + "</strong> has been added as Check-In /  Check-Out by you .";
                HttpContext.Current.Session.Add("ApplicationMessage", message);


            }
            if (messageType == "ConvertLeaveToCheckinCheckoutByAdmin")
            {
                message = "Leave record of employee <strong>" + EmployeeName + "</strong>&nbsp;of date <strong>" + mashineLogDate.ToString("ddd, MMM d, yyyy") + "</strong> has been added as Check-In /  Check-Out by you .";
                HttpContext.Current.Session.Add("ApplicationMessage", message);


            }

        }

     

        public byte[] GenerateBarcode(string code)
        {
            byte[] bytes = null;

            if (string.IsNullOrEmpty(code))
                return bytes;

            try
            {
                Bitmap barcode = new Bitmap(1, 1);
                Font barcodeFont = new Font("Free 3 of 9", 60,
                    System.Drawing.FontStyle.Regular,
                    System.Drawing.GraphicsUnit.Point);

                Graphics graphics = Graphics.FromImage(barcode);

                SizeF dataSize = graphics.MeasureString(code, barcodeFont);
                barcode = new Bitmap(barcode, dataSize.ToSize());
                graphics = Graphics.FromImage(barcode);
                graphics.Clear(Color.White);
                graphics.TextRenderingHint = TextRenderingHint.SingleBitPerPixel;
                graphics.DrawString(code, barcodeFont, new SolidBrush(Color.Black), 0, 0);
                graphics.Flush();
                barcodeFont.Dispose();
                graphics.Dispose();


                ImageConverter converter = new ImageConverter();
                bytes = converter.ConvertTo(barcode, typeof(byte[])) as byte[];

            }
            catch (Exception d)
            {
                throw d;
            }
            return bytes;
        }

 



     




      

        internal void ResetFeeHeadAmountWithDefaultFee(int feety)
        {
          
        }
    }

    public static class CommanUtilities
    {
        public static string key = System.Configuration.ConfigurationManager.AppSettings["SecurityKeyHash"];


    }

    public class RequestManager
    {

        public static string GetData(String uri)
        {
            String htmlData = string.Empty;

            if (IsAbsoluteUrl(uri))
            {
                HttpWebRequest request = (HttpWebRequest)HttpWebRequest.Create(uri);
                request.Proxy = GetProxy();
                using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
                {
                    if (response.StatusCode == HttpStatusCode.Created || response.StatusCode == HttpStatusCode.OK)
                    {
                        if (request.HaveResponse || response.ContentLength > -1)
                        {
                            using (StreamReader reader = new StreamReader(response.GetResponseStream()))
                            {
                                htmlData = reader.ReadToEnd();
                                reader.Close();
                            }
                        }
                    }
                }
            }
            else
            {
                //uri = HostingEnvironment.MapPath(uri);
                htmlData = File.ReadAllText(uri);
            }

            return htmlData;
        }

        public static WebProxy GetProxy()
        {
            return null;
        }
        public static bool IsAbsoluteUrl(string url)
        {
            Uri result;
            return Uri.TryCreate(url, UriKind.Absolute, out result);
        }
    }
}