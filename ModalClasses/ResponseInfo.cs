using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

namespace WebApplication10
{
    //[XmlTypeAttribute(AnonymousType = true)]
    //[XmlRootAttribute(Namespace = "", IsNullable = false)]
    //public partial class response
    //{
    //    public string action { get; set; }
    //    public responseData data { get; set; }
    //}


    //[XmlTypeAttribute(AnonymousType = true)]
    //public partial class responseData
    //{
    //    /// <remarks/>
    //    public responseDataAcceptreport acceptreport { get; set; }
    //}


    //[XmlTypeAttribute(AnonymousType = true)]
    //public partial class responseDataAcceptreport
    //{
    //    public byte statuscode { get; set; }
    //    public string statusmessage { get; set; }
    //    public string messageid { get; set; }
    //    public string originator { get; set; }
    //    public ulong recipient { get; set; }
    //    public string messagetype { get; set; }
    //    public string messagedata { get; set; }
    //}



    public class MessageDetails
    {
        public string status { get; set; }
        public string messageid { get; set; }
        public string gsm { get; set; }
    }

    public class EazitaMessageInfo
    {
        public string type { get; set; }
        public string totalprice { get; set; }
        public string totalgsm { get; set; }
        public string remaincredit { get; set; }
        public List<MessageDetails> messages { get; set; }
    }

    public class SMSReceivers
    {
        public string receiver { get; set; }
    }

    public class SMSResponse
    {
        public string errorno { get; set; }
        public string status { get; set; }
        public string sender { get; set; }
        public string msgdata { get; set; }
        public SMSReceivers receivers { get; set; }
    }

    public class RootObject
    {
        public SMSResponse response { get; set; }
    }


}