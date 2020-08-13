


using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI.WebControls;

namespace WebApplication10
{
    public class CommonMethods
    {



        public static string key = System.Configuration.ConfigurationManager.AppSettings["SecurityKeyHash"];

        internal static void VeryfyUser()
        {
            var AuthenticationModel = SessionService.GetCurrentUser();
            if (AuthenticationModel.Authenticated == false)
            {
               HttpContext.Current.Response.Redirect("~/Login.aspx");
            }
        }

        public static string EncryptString(string plainText)
        {
            byte[] iv = new byte[16];
            byte[] array;

            using (Aes aes = Aes.Create())
            {
                aes.Key = Encoding.UTF8.GetBytes(key);
                aes.IV = iv;

                ICryptoTransform encryptor = aes.CreateEncryptor(aes.Key, aes.IV);

                using (MemoryStream memoryStream = new MemoryStream())
                {
                    using (CryptoStream cryptoStream = new CryptoStream((Stream)memoryStream, encryptor, CryptoStreamMode.Write))
                    {
                        using (StreamWriter streamWriter = new StreamWriter((Stream)cryptoStream))
                        {
                            streamWriter.Write(plainText);
                        }

                        array = memoryStream.ToArray();
                    }
                }
            }

            return Convert.ToBase64String(array);
        }
        public static string DecryptString( string cipherText)
        {
            try
            {
                byte[] iv = new byte[16];
                byte[] buffer = Convert.FromBase64String(cipherText);

                using (Aes aes = Aes.Create())
                {
                    aes.Key = Encoding.UTF8.GetBytes(key);
                    aes.IV = iv;
                    ICryptoTransform decryptor = aes.CreateDecryptor(aes.Key, aes.IV);

                    using (MemoryStream memoryStream = new MemoryStream(buffer))
                    {
                        using (CryptoStream cryptoStream = new CryptoStream((Stream)memoryStream, decryptor, CryptoStreamMode.Read))
                        {
                            using (StreamReader streamReader = new StreamReader((Stream)cryptoStream))
                            {
                                return streamReader.ReadToEnd();
                            }
                        }
                    }
                }
            }
            catch
            {
                return null;
            }
          
        }


        public void BindDepartmentWithAll(ref System.Web.UI.WebControls.DropDownList DepartDropdownList, int BranchId)
        {
            try
            {
                //List<DepartmentInfo> oDepartList = new DepartmentFactory().GetDepartmentByBranchId(BranchId);
                ////List<SchoolClassesInfo> oSchoolClassesInfoLst = new ClassFactory().GetAllClassByCampus(BranchId);

                //DepartDropdownList.DataSource = oDepartList;
                //DepartDropdownList.DataTextField = "DepartmentName";
                //DepartDropdownList.DataValueField = "Id";

                //DepartDropdownList.DataBind();
                //DepartDropdownList.Items.Insert(0, new System.Web.UI.WebControls.ListItem("All", "0"));



            }
            catch (Exception ex)
            {

            }
        }
        public List<int> GetHours()
        {
            List<int> hours = new List<int>();
            //var hours = Enumerable.Range(00, 24).Select(i => (DateTime.MinValue.AddHours(i)).ToString("hh.mm tt"));


            for (int i = 0; i < 24; i++)
            {

                hours.Add(i);
            }


            return hours;
        }



        public List<int> GetMinutes()
        {
            List<int> minutes = new List<int>();
            //var hours = Enumerable.Range(00, 24).Select(i => (DateTime.MinValue.AddHours(i)).ToString("hh.mm tt"));


            for (int i = 0; i < 60; i++)
            {

                minutes.Add(i);
            }

            return minutes;

        }    
      
        public void BindDepart(ref System.Web.UI.WebControls.DropDownList DepartDropdownList, int BranchId)
        {
            try
            {
              


            }
            catch (Exception ex)
            {

            }
        }

     



        public static string NumbersToWords(int inputNumber)
        {
            int inputNo = inputNumber;

            if (inputNo == 0)
                return "Zero";

            int[] numbers = new int[4];
            int first = 0;
            int u, h, t;
            System.Text.StringBuilder sb = new System.Text.StringBuilder();

            if (inputNo < 0)
            {
                sb.Append("Minus ");
                inputNo = -inputNo;
            }

            string[] words0 = {"" ,"One ", "Two ", "Three ", "Four ",
            "Five " ,"Six ", "Seven ", "Eight ", "Nine "};
            string[] words1 = {"Ten ", "Eleven ", "Twelve ", "Thirteen ", "Fourteen ",
            "Fifteen ","Sixteen ","Seventeen ","Eighteen ", "Nineteen "};
            string[] words2 = {"Twenty ", "Thirty ", "Forty ", "Fifty ", "Sixty ",
            "Seventy ","Eighty ", "Ninety "};
            string[] words3 = { "Thousand ", "Lac ", "Crore " };

            numbers[0] = inputNo % 1000; // units
            numbers[1] = inputNo / 1000;
            numbers[2] = inputNo / 100000;
            numbers[1] = numbers[1] - 100 * numbers[2]; // thousands
            numbers[3] = inputNo / 10000000; // crores
            numbers[2] = numbers[2] - 100 * numbers[3]; // lakhs

            for (int i = 3; i > 0; i--)
            {
                if (numbers[i] != 0)
                {
                    first = i;
                    break;
                }
            }
            for (int i = first; i >= 0; i--)
            {
                if (numbers[i] == 0) continue;
                u = numbers[i] % 10; // ones
                t = numbers[i] / 10;
                h = numbers[i] / 100; // hundreds
                t = t - 10 * h; // tens
                if (h > 0) sb.Append(words0[h] + "Hundred ");
                if (u > 0 || t > 0)
                {
                    if (h > 0 || i == 0) sb.Append("and ");
                    if (t == 0)
                        sb.Append(words0[u]);
                    else if (t == 1)
                        sb.Append(words1[u]);
                    else
                        sb.Append(words2[t - 2] + words0[u]);
                }
                if (i != 0) sb.Append(words3[i - 1]);
            }
            return sb.ToString().TrimEnd();
        }

        public string GetCurrentUserName() 
        {
            string name = "";

            AuthenticationModel oAuthenticationModel = SessionService.GetCurrentUser();
            if (oAuthenticationModel.Authenticated && oAuthenticationModel.oPublisherInfo != null)
            {
                name = oAuthenticationModel.oPublisherInfo.Name;
            }
          



            return name;
        }

        public int GetCurrentUserId()
        {
            int name = 0;

            AuthenticationModel oAuthenticationModel = SessionService.GetCurrentUser();
            if (oAuthenticationModel.Authenticated && oAuthenticationModel.oPublisherInfo != null)
            {
                name = oAuthenticationModel.oPublisherInfo.Id;
            }
           



            return name;
        }



         public List<DateTime> GetTimeSlotBetweenTwoDates(DateTime start_date, DateTime end_date ,int Minutesdelay)
        {
            List<DateTime> hours_24_list = new List<DateTime>();
            DateTime temp_start;
            DateTime temp_end;

            //--Normalize dates by getting rid of minutes since they will get in the way when doing the loop
            temp_start = new DateTime(start_date.Year, start_date.Month, start_date.Day, start_date.Hour, 0, 0);
            temp_end = new DateTime(end_date.Year, end_date.Month, end_date.Day, end_date.Hour, 0, 0);

            //--Example Should return
            //--5:59AM - 6:01AM return 5am and 6am
            for (DateTime date = temp_start; date <= temp_end; date = date.AddMinutes(Minutesdelay))
            {
                hours_24_list.Add(date);
            }

            return hours_24_list;
        }
        public List<TimeSpan> GetTimeSpanRange(TimeSpan from, TimeSpan till, int delay)
        {
            //variables used in both examples
            var start = from;
            var end = till.Add(TimeSpan.FromMinutes(delay));

            var timespan = Enumerable.Range(0, int.MaxValue)
            .Select(multiplier => start.Add(TimeSpan.FromMinutes(15 * multiplier)))
            .TakeWhile(span => span <= end).ToList();

            return timespan;


        }


      

        public bool HasPermission(int permissionId)
        {
            bool Result = false;

            var AuthenticationModel = SessionService.GetCurrentUser();

            //if (AuthenticationModel != null)
            //{
            //    if (AuthenticationModel.Authenticated)
            //    {
            //        if (AuthenticationModel.AccountType == Constants.UserType.Admin)
            //        {
            //            if (AuthenticationModel.AdvancePermissionList != null)
            //            {
            //                var data = AuthenticationModel.AdvancePermissionList.Where(a => a.Id == permissionId).FirstOrDefault();
            //                if (data != null)
            //                {
            //                    Result = true;
            //                }

            //            }
            //        }
            //    }
            //}

            return Result;

        }

    

        public void BindCampus( ref System.Web.UI.WebControls.DropDownList BranchDropdownList)
        {
            //try
            //{

            //    CommonMethods oCommonMethods = new CommonMethods();
            //    var admin = oCommonMethods.IsAdmin();

            //    if (admin)
            //    {
                 
            //    }
            //    else
            //    {

                  
            //    }



            //}
            //catch (Exception ex)
            //{
            //    throw ex;
            //}
        }
        public void BindClasses(ref System.Web.UI.WebControls.DropDownList ClassDropdownList , int BranchId)
        {
            try
            {

                //List<SchoolClassesInfo> oSchoolClassesInfoLst = new ClassFactory().GetAllClassByCampus(BranchId);
                //ClassDropdownList.DataSource = oSchoolClassesInfoLst;
                //ClassDropdownList.DataTextField = "ClassName";
                //ClassDropdownList.DataValueField = "Id";

                //ClassDropdownList.DataBind();
                //ClassDropdownList.Items.Insert(0, new System.Web.UI.WebControls.ListItem("Select Class", "0"));

                

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void BindClassesCustom(ref System.Web.UI.WebControls.DropDownList ClassDropdownList, int BranchId)
        {
            try
            {

              


            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public void BindTeacher(ref System.Web.UI.WebControls.DropDownList TeacherDropdownList, int BranchId)
        {
        }

        public void BindEmployeeCustom(ref System.Web.UI.WebControls.DropDownList TeacherDropdownList, int BranchId)
        {
           
        }

        public void BindDocumentType(ref System.Web.UI.WebControls.DropDownList DocumentTypeDDL)
        {
            try
            {

              


            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

      

      


    }
}