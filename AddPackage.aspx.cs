using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication10
{
    public partial class AddPackage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindPackages();
            }
            
        }

        private class PackagesType
        {
            public int Id { get; set; }
            public string Name { get; set; }
        }

        private void BindPackages()
        {
            try
            {
                List<PackagesType> oPackages = new List<PackagesType>();
                using(DataClasses1DataContext eDataBase = new DataClasses1DataContext())
                {
                    List<PackageType> ePackageTypes = eDataBase.PackageTypes.Where(ePData => ePData.IsDeleted == false).ToList();
                    foreach(var ePackageType in ePackageTypes)
                    {
                        PackagesType oPackageType = new PackagesType();
                        oPackageType.Id = ePackageType.Id;
                        oPackageType.Name = ePackageType.Type;
                        oPackages.Add(oPackageType);
                    }
                    packageTypeList.DataSource = oPackages;
                    packageTypeList.DataTextField = "Name";
                    packageTypeList.DataValueField = "Id";
                    packageTypeList.DataBind();
                    packageTypeList.Items.Insert(0, new ListItem("----------- SELECT PACKAGE TYPE --------------", "Non"));


                }
            }
            catch(Exception ex)
            {
                MessageBox1.ShowError(ex.Message);
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            if (packageImage.HasFile)
            {
                if (new FileInfo(packageImage.FileName).Extension != ".jpg" && new FileInfo(packageImage.FileName).Extension != ".jpeg" && new FileInfo(packageImage.FileName).Extension != ".png")
                {
                    MessageBox1.ShowError("Invalid File Type");
                    return;
                }
            }

            string filePath = Server.MapPath("~/PackageImages/") + packageImage.FileName;
            packageImage.SaveAs(filePath);
            try
            {
                using(DataClasses1DataContext eDataBase = new DataClasses1DataContext())
                {
                    Package ePackage = new Package();
                    
                    ePackage.PackageName = packageName.Text;
                    ePackage.PackageDetails = packageDetail.Text;
                    ePackage.PackageTypeId = Convert.ToInt32(packageTypeList.SelectedItem.Value);
                    ePackage.Price = Convert.ToInt32(price.Text);
                    ePackage.DiscountedPrice = Convert.ToInt32(discountedPrice.Text);
                    ePackage.IsActive = true;
                    ePackage.IsDeleted = false;
                    ePackage.PackageImage = packageImage.HasFile ? filePath : null;
                    eDataBase.Packages.InsertOnSubmit(ePackage);
                    eDataBase.SubmitChanges();
                    MessageBox1.ShowSuccess("Package Added");
                }
            }
            catch(Exception ex)
            {
                MessageBox1.ShowError(ex.Message);
            }
        }
    }
}