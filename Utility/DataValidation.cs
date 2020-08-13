using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace WebApplication10.Utility
{

    public class CustomDataValoidation
    {
        public bool IsValid(ValidateType oExpression, string DateToValidate)
        {
            bool result = false;

            Regex regex = null;

            string expresion = GetExpression(oExpression);

            regex = new Regex(expresion);

            Match match = regex.Match(DateToValidate);

            if (match.Success)
                result = true;
            else
                result = false;
            return result;
        }


        public bool ValidateMobileNo(ValidateType oExpression, string ToValidate)
        {
            bool result = false;

            if (oExpression == ValidateType.PakistanMobileNoLimitCheck) 
            {
                // Empty
                if (string.IsNullOrEmpty(ToValidate))
                {
                    return false;
                }
                if (!ToValidate.StartsWith("92")) 
                {
                    return false;
                }
                if (ToValidate.Length != 12)
                {
                    return false;
                }

                result = true;
                // StartWith


            }


            return result;
        }

        private string GetExpression(ValidateType oExpression)
        {
            string result = "";
            if (oExpression == ValidateType.CharecterOnly)
            {
                result = (@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");

            }

            if (oExpression == ValidateType.EmailExpression)
            {
                result = (@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
            }

            if (oExpression == ValidateType.NumbersOnly)
            {
                result = (@"(?<Number>[0-9])");
            }
            if (oExpression == ValidateType.AlphaNumeric)
            {
                result = (@"^[a-zA-Z0-9]+$");

            }
            if (oExpression == ValidateType.Decimal)
            {
                result = (@"^-?\\d*(\\.\\d+)?$");

            }

            if (oExpression == ValidateType.TimeSpanFormat)
            {
                result = (@"^[0-2][0-3]:[0-5][0-9]$");
            }
            
            if (oExpression == ValidateType.NotNull)
            {
                result = (@"^(?!\s*$).+");
            }

            if (oExpression == ValidateType.PakistanMobileNoLimitCheck)
            {
                result = "[0-9]{12}";
            }
            return result;
        }
    }

        public enum ValidateType 
        {
            EmailExpression = 1,
            CharecterOnly = 2,
            NumbersOnly = 3,
            AlphaNumeric = 4,
            Decimal = 5,
            TimeSpanFormat = 6,
            NotNull = 7,
            Currency = 8,
            PakistanMobileNoLimitCheck =9

        }

}