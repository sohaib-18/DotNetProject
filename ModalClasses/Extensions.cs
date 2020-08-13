
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Reflection;
using System.ComponentModel;

namespace WebApplication10
{
    public static class Extensions
    {
        public static String GetLandingPageUrl(this AuthenticationModel authenticationModel)
        {
            var result = String.Empty;
            //switch (authenticationModel.AccountType)
            //{
            //    case Backbone.Constants.UserType.Student:
            //        result = "~/StudentProfile.aspx";
            //        break;
            //    case Backbone.Constants.UserType.Author:
            //        result = "~/Default.aspx";
            //        break;
            //    case Backbone.Constants.UserType.Admin:
            //        result = "~/Default.aspx";
            //        break;
            //    default:
            //        break;
            //}

            return result;
        }

        public static string GetDescription(this Enum value)
        {
            Type type = value.GetType();
            string name = Enum.GetName(type, value);
            if (name != null)
            {
                FieldInfo field = type.GetField(name);
                if (field != null)
                {
                    DescriptionAttribute attr =
                           Attribute.GetCustomAttribute(field,
                             typeof(DescriptionAttribute)) as DescriptionAttribute;
                    if (attr != null)
                    {
                        return attr.Description;
                    }
                }
            }
            return null;
        }

        public static string ToReadableString(this TimeSpan span)
        {
            //string formatted = string.Format("{0}{1}",
            //    span.Duration().TotalHours > 0 ? string.Format("{0:0}h ", span.TotalHours) : string.Empty,
            //    span.Duration().Minutes > 0 ? string.Format("{0:0}m ", span.Minutes) : string.Empty);


            //if (string.IsNullOrEmpty(formatted)) formatted = "0 seconds";

            //return formatted;

            string formatted = string.Format("{0}{1}{2}",
              span.Duration().Days > 0 ? string.Format("{0:0} day{1}, ", span.Days, span.Days == 1 ? String.Empty : "") : string.Empty,
             span.Duration().Hours > 0 ? string.Format("{0:0} h{1}, ", span.Hours, span.Hours == 1 ? String.Empty : "") : string.Empty,
              span.Duration().Minutes > 0 ? string.Format("{0:0} m{1}, ", span.Minutes, span.Minutes == 1 ? String.Empty : "") : string.Empty);

            if (formatted.EndsWith(", ")) formatted = formatted.Substring(0, formatted.Length - 2);

            if (string.IsNullOrEmpty(formatted)) formatted = "0 seconds";

            return formatted;

        }
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

        public static bool IsNullOrEmpty<T>(this IList<T> list)
        {
            return list == null || list.Count <= 0;
        }

        public static int ToIntSafe(this String text)
        {
            var result = 0;

            int.TryParse(text, out result);

            return result;
        }
    }
}
