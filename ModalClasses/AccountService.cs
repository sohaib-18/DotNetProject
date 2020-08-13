
using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.Serialization.Formatters.Binary;
using System.Text;
using System.Threading.Tasks;

namespace WebApplication10
{
    public class AccountService : IDisposable
    {
        protected DataClasses1DataContext  _context = null;

        public AccountService()
        {
            DataLoadOptions options = new DataLoadOptions();
            //options.LoadWith<DbService.Account>(x => x.AccountPermissions);

            _context = new DataClasses1DataContext("Data Source=DESKTOP-P1QK1CA\\SQLEXPRESS;Initial Catalog=MultiVendor;Integrated Security=True");
            _context.LoadOptions = options;
        }

        //public AuthenticationModel Login(CredentialModel credentials)
        //{


        //    // var data  = PortalSequenceNumber.GetNewFeeVocherNo();

        //    var authenticationModel = new AuthenticationModel();
        //    object model = null;

           

        //    var sss = _context.Connection.ConnectionString;


        //    // set authentication type
        //    authenticationModel.Authenticated = model != null;


        //    _context = new DataClasses1DataContext("Data Source=DESKTOP-P1QK1CA\\SQLEXPRESS;Initial Catalog=MultiVendor;Integrated Security=True");

        //    //PublisherInfo data = new PublisherInfo();
        //    //var record =_context.Publishers.Where(s => s.Email == credentials.LoginId.Trim() && s.Password == credentials.Password.Trim()).FirstOrDefault();

        //    //if (record != null)
        //    //{
              
        //    //    data.LoginId = record.LoginId;
        //    //    data.Name = record.Name;
        //    //    data.Password = record.Password;
        //    //    data.CNIC = record.CNIC;
        //    //    data.Detail = record.Detail;
        //    //    data.ProfileDetail = record.ProfileDetail;
        //    //    data.Adress = record.Adress;
        //    //    data.Email = record.Email;
        //    //    data.Id = record.Id;
        //    //    if(record.Status.HasValue)
        //    //    data.Status = record.Status.Value;

        //    //    // save in session
        //    //    authenticationModel.oPublisherInfo = data;
        //    //    authenticationModel.Authenticated = true;

        //    //    SessionService.Save(SessionService.Keys.AuthenticationInfo, authenticationModel);
        //    //}
        //    //else
        //    //{
        //    //    authenticationModel.Authenticated = false;
        //    //    SessionService.Save(SessionService.Keys.AuthenticationInfo, authenticationModel);

        //    //}



        //    ////long aaaa=  GetSizeOfObject(authenticationModel);

           

           
        //    //// return
        //    //return authenticationModel;
        //}


        public static long GetSizeOfObject(AuthenticationModel obj)
        {

            long size = 0;
            AuthenticationModel o = obj;
            using (Stream s = new MemoryStream())
            {
                BinaryFormatter formatter = new BinaryFormatter();
                formatter.Serialize(s, o);
                size = s.Length / (1024 * 1024);
         
            }
            return size;
        
        }






        public void Logout()
        {
            SessionService.Remove(SessionService.Keys.AuthenticationInfo);
        }

        //public bool Register(AccountModel item)
        //{
        //    var account = DataMapper.Map(item);
        //    //this.Save(account);

        //    account.Password = Crypto.Encrypt(item.Password);

        //    _context.Accounts.InsertOnSubmit(account);
        //    _context.SubmitChanges();

        //    //var item = this.Get(x => x.EmailAddress == account.EmailAddress && x.Password == credentials.Password);
        //    //if (item != null)
        //    //{
        //    //    SessionService.Save(SessionService.Keys.AccountInfo, item);
        //    //}

        //    //account = item;
        //    return account != null;
        //}

        //public bool ChangePassword(ChangePasswordModel model)
        //{
        //    var result = false;
        //    var account = this.Get(x => x.Id == model.AccountId);
        //    if (account != null)
        //    {
        //        // if old password matches account password
        //        // then update in db
        //        var oldPasswordEncrypted = Crypto.Encrypt(model.OldPassword);
        //        var newPasswordEncrypted = Crypto.Encrypt(model.NewPassword);
        //        if (oldPasswordEncrypted == account.Password)
        //        {
        //            account.Password = newPasswordEncrypted;
        //            this.Save(account);
        //            result = true;
        //        }
        //    }

        //    return result;
        //}


        //public bool Save(AccountModel model)
        //{
        //    // TODO : perform business logic
        //    return base.Save(model, x => x.Id == model.Id);
        //}



        //public List<AccountModel> GetAll(Expression<Func<AtifAutomation.WebClient.Services.DbService.Account, bool>> predicate = null)
        //{
        //    IQueryable<AtifAutomation.WebClient.Services.DbService.Account> accounts = null;

        //    if (predicate != null)
        //    {
        //        accounts = _context.GetTable<AtifAutomation.WebClient.Services.DbService.Account>().Where(predicate);
        //    }
        //    else
        //    {
        //        accounts = _context.GetTable<AtifAutomation.WebClient.Services.DbService.Account>().Where(x => x != null);
        //    }


        //    accounts = accounts.Where(x => x.IsActive == true);

        //    var result = DataMapper.Map(accounts.ToList());

        //    return result;
        //}


        public void Dispose()
        {
            if (_context != null)
            {
                _context.Dispose();
            }
        }
    }
}
