using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;


namespace WebApplication10
{
    [Serializable]
    public class CredentialModel
    {
        public String LoginId { get; set; }
        public String Password { get; set; }

       
    }

    [Serializable]
    [DataContract]
    public class AuthenticationModel
    {
        [DataMember]
        public bool Authenticated { get; set; }
              
        [DataMember]
        public PublisherInfo oPublisherInfo { get; set; }

        [DataMember]
        public List<PermissionInfo> Permissions { get; set; }

      
    }


    [Serializable]
    [DataContract]
    public class PermissionInfo
    {
        [DataMember]
        public int Id { get; set; }

        [DataMember]
        public string Name { get; set; }

        [DataMember]
        public bool ShowInMenu { get; set; }

        [DataMember]
        public string Url { get; set; }



        [DataMember]
        public String FriendlyName { get; set; }


        [DataMember]
        public Nullable<int> PermissionGroupId { get; set; }



        [DataMember]
        public String PermissionGroupName { get; set; }

        [DataMember]
        public String Discription { get; set; }

        [DataMember]
        public int Order { get; set; }

        [DataMember]
        public string DefaultPermissionFor { get; set; }

        [DataMember]
        public int OrderSequence { get; set; }

 
    }

    [Serializable]
    [DataContract]
    public class AdvancePermissionInfo
    {
        [DataMember]
        public int Id { get; set; }

        [DataMember]
        public string Name { get; set; }

       


    }


  
}
