using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Runtime.Serialization;

using System.Threading.Tasks;

namespace WebApplication10
{
    [DataContract]
    [Serializable]
    public class PublisherInfo
    {
        [DataMember]
        public int Id { get; set; }

        [DataMember]
        public string Name { get; set; }

        [DataMember]
        public string PictureURL { get; set; }
       
        [DataMember]
        public string UserId { get; internal set; }
        [DataMember]
        public string Password { get; internal set; }
        public string Detail { get; internal set; }
        [DataMember]
        public string ProfileDetail { get; internal set; }

        [DataMember]
        public string CNIC { get; internal set; }
        [DataMember]
        public string Adress { get; internal set; }
        [DataMember]
        public string Email { get; internal set; }
        [DataMember]
        public string LoginId { get; internal set; }
        [DataMember]
        public int Status { get; internal set; }
        [DataMember]
        public string PublisherCode { get; set; }
    }
}
