using System;
using System.Collections.Generic;
using System.Drawing.Imaging;
using System.Linq;
using System.Web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication10.Utility
{
    public class BarcodeLibrary
    {

        public enum BarCodeGeneratetype
        {

             Voucheer,
             ForVisa
        }
        public bool GenerateBarcode(string data, int width, int height, BarCodeGeneratetype oBarCodeGeneratetype , bool includeNumber)
        {
            bool result = false;
            string Forecolor = "";
            string Backcolor = "";

            var locationPath = "";

            BarcodeLib.TYPE type = BarcodeLib.TYPE.CODE128;


            if (oBarCodeGeneratetype == BarCodeGeneratetype.Voucheer) 
            {
               locationPath =  System.Configuration.ConfigurationManager.AppSettings["VoucheerBarcode"];
            }
            if (oBarCodeGeneratetype == BarCodeGeneratetype.ForVisa)
            {
                locationPath = System.Configuration.ConfigurationManager.AppSettings["VisaNoBarcode"];
            }
            
            

            System.Drawing.Image barcodeImage = null;
            try
            {
                BarcodeLib.Barcode b = new BarcodeLib.Barcode();

                //b.IncludeLabel = true;
                if (type != BarcodeLib.TYPE.UNSPECIFIED)
                {
                    if (includeNumber)
                    {
                        b.IncludeLabel =  true;
                    }
                    //alignment
                    b.Alignment = BarcodeLib.AlignmentPositions.CENTER;


                    if (Forecolor.Trim() == "" && Forecolor.Trim().Length != 6)
                        Forecolor = "000000";
                    if (Backcolor.Trim() == "" && Backcolor.Trim().Length != 6)
                        Backcolor = "FFFFFF";

                    //===== Encoding performed here =====
                    barcodeImage = b.Encode(type, data.Trim(), System.Drawing.ColorTranslator.FromHtml("#" + Forecolor), System.Drawing.ColorTranslator.FromHtml("#" + Backcolor),300, height);
                    //===================================

                    //===== Static Encoding performed here =====
                    //barcodeImage = BarcodeLib.Barcode.DoEncode(type, this.txtData.Text.Trim(), this.chkGenerateLabel.Checked, this.btnForeColor.BackColor, this.btnBackColor.BackColor);
                    //==========================================

                    // Response.ContentType = "image/" + strImageFormat;
                    System.IO.MemoryStream MemStream = new System.IO.MemoryStream();

                    barcodeImage.Save(MemStream, ImageFormat.Jpeg);



                    //switch (strImageFormat)
                    //{
                    //    case "gif": barcodeImage.Save(MemStream, ImageFormat.Gif); break;
                    //    case "jpeg": barcodeImage.Save(MemStream, ImageFormat.Jpeg); break;
                    //    case "png": barcodeImage.Save(MemStream, ImageFormat.Png); break;
                    //    case "bmp": barcodeImage.Save(MemStream, ImageFormat.Bmp); break;
                    //    case "tiff": barcodeImage.Save(MemStream, ImageFormat.Tiff); break;
                    //    default: break;
                    //}//switch


                    var img = System.Drawing.Image.FromStream(MemStream);

                    var finalFile = HttpContext.Current.Server.MapPath(locationPath + data + ".Jpeg");



                    img.Save(finalFile, ImageFormat.Jpeg);
                   result = true;


                    // MemStream.WriteTo(Response.OutputStream);
                }//if
            }//try
            catch (Exception ex)
            {
                result = false;
            }
            finally
            {
                if (barcodeImage != null)
                {
                    //Clean up / Dispose...
                    barcodeImage.Dispose();
                }
            }//fi



            return result;
        }
    }

}