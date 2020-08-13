﻿
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebApplication10
{
    public class PortalSequenceNumber
    {
        public enum SequenceType
        {
            /// <summary>
            /// 00,01,...,09,0A,...0Z,10,11...,A0,A1,...,ZZ
            /// </summary>
            NumericToAlpha = 1,
            /// <summary>
            /// AA,AB,...,AZ,A0,...A9,BA,BB...ZZ,00,01,...99
            /// </summary>
            AlphaToNumeric = 2,
            /// <summary>
            /// A0,A1,...,A9,AA,...AZ,B0,B1...ZZ,00,01,...99
            /// </summary>
            AlphaNumeric = 3,
            /// <summary>
            /// 00,01,...99
            /// </summary>
            NumericOnly = 4,
            /// <summary>
            /// AA,AB,...,ZZ
            /// </summary>
            AlphaOnly = 5
        }

        public static class AlphaNumeric
        {
            private static byte[] aSCIIValues;
            private static int indexToCheck;

            private static int requiredLength = 2;
            public static int RequiredLength
            {
                get { return requiredLength; }
                set { requiredLength = value; }
            }

            public static string NextKeyCode(string KeyCode, SequenceType Sequence)
            {
                if (KeyCode.Length != requiredLength)
                {
                    switch (Sequence)
                    {
                        case SequenceType.NumericToAlpha:
                            return MakeCustomLengthString("0", requiredLength);
                        case SequenceType.AlphaToNumeric:
                            return MakeCustomLengthString("A", requiredLength);
                        case SequenceType.AlphaNumeric:
                            return "A" + MakeCustomLengthString("0", requiredLength - 1);
                        case SequenceType.NumericOnly:
                            return MakeCustomLengthString("0", requiredLength);
                        case SequenceType.AlphaOnly:
                            return MakeCustomLengthString("A", requiredLength);
                        default:
                            return "";
                    }
                }

                //If reached to max
                switch (Sequence)
                {
                    case SequenceType.NumericToAlpha:
                        if (KeyCode == MakeCustomLengthString("Z", requiredLength))
                            throw new OverflowException("Maximum number is reached");
                        break;
                    case SequenceType.AlphaToNumeric:
                        if (KeyCode == MakeCustomLengthString("9", requiredLength))
                            throw new OverflowException("Maximum number is reached");
                        break;
                    case SequenceType.AlphaNumeric:
                        if (KeyCode == MakeCustomLengthString("9", requiredLength))
                            throw new OverflowException("Maximum number is reached");
                        break;
                    case SequenceType.NumericOnly:
                        if (KeyCode == MakeCustomLengthString("9", requiredLength))
                            throw new OverflowException("Maximum number is reached");
                        break;
                    case SequenceType.AlphaOnly:
                        if (KeyCode == MakeCustomLengthString("Z", requiredLength))
                            throw new OverflowException("Maximum number is reached");
                        break;
                    default:
                        break;
                }

                aSCIIValues = ASCIIEncoding.ASCII.GetBytes(KeyCode.ToUpper());

                indexToCheck = aSCIIValues.Length - 1;
                bool keepChecking = true;
                while (keepChecking)
                {
                    aSCIIValues[indexToCheck] = next(aSCIIValues[indexToCheck], Sequence);
                    if (aSCIIValues[indexToCheck] == SingleCharacterMaxValue(Sequence) && indexToCheck != 0)
                        indexToCheck--;
                    else
                        keepChecking = false;
                }

                KeyCode = ASCIIEncoding.ASCII.GetString(aSCIIValues);
                return KeyCode;
            }

            private static byte next(int current, SequenceType sequence)
            {
                switch (sequence)
                {
                    case SequenceType.NumericToAlpha:
                        if (current == 57)
                            current = 65;
                        else if (current == 90)
                            current = 48;
                        else
                            current++;
                        break;
                    case SequenceType.AlphaToNumeric:
                        if (current == 90)
                            current = 48;
                        else if (current == 57)
                            current = 65;
                        else
                            current++;
                        break;
                    case SequenceType.AlphaNumeric:
                        if (current == 57)
                            current = 65;
                        else if (current == 90)
                            current = 48;
                        else
                            current++;
                        break;
                    case SequenceType.NumericOnly:
                        if (current == 57)
                            current = 48;
                        else
                            current++;
                        break;
                    case SequenceType.AlphaOnly:
                        if (current == 90)
                            current = 65;
                        else
                            current++;
                        break;
                    default:
                        break;
                }

                return Convert.ToByte(current);
            }

            private static string MakeCustomLengthString(string data, int length)
            {
                string result = "";
                for (int i = 1; i <= length; i++)
                    result += data;

                return result;
            }

            private static int SingleCharacterMaxValue(SequenceType sequence)
            {
                int result = 0;
                switch (sequence)
                {
                    case SequenceType.NumericToAlpha:
                        result = 48;
                        break;
                    case SequenceType.AlphaToNumeric:
                        result = 65;
                        break;
                    case SequenceType.AlphaNumeric:
                        result = 48;
                        break;
                    case SequenceType.NumericOnly:
                        result = 48;
                        break;
                    case SequenceType.AlphaOnly:
                        result = 65;
                        break;
                    default:
                        break;
                }

                return result;
            }

            private static bool isAllNine()
            {
                bool result = true;
                for (int i = 0; i < aSCIIValues.Length; i++)
                {
                    if (aSCIIValues[i] != 57)
                    {
                        result = false;
                        break;
                    }
                }
                return result;
            }

        }

        private static Object LOCK = new Object();
      

    

    }
}
