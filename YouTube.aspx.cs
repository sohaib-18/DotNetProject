using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using System.Text;
using System.Collections.Specialized;
using System.Text.RegularExpressions;
using System.ComponentModel;
using System.Drawing;

namespace Dotnet4Techies
{
    public partial class YouTube : System.Web.UI.Page
    {      
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void xbtnDownload_Click(object sender, EventArgs e)
        {
            DownloadYouTubeVideo();
        }

        private void DownloadYouTubeVideo()
        {
            try
            {
                string sURL = txtYouTubeURL.Text.Trim();
                bool isDownloaded = false;

                HttpWebRequest request = (HttpWebRequest)WebRequest.Create(sURL);
                HttpWebResponse response = (HttpWebResponse)request.GetResponse();

                Stream responseStream = response.GetResponseStream();
                Encoding encode = System.Text.Encoding.GetEncoding("utf-8");
                StreamReader reader = new StreamReader(responseStream, encode);

                string pageSource = reader.ReadToEnd();
                pageSource = HttpUtility.HtmlDecode(pageSource);                

                List<Uri> urls = GetVideoDownloadUrls(pageSource);

                string videoTitle = HttpUtility.HtmlDecode(GetVideoTitle(pageSource));                

                foreach (Uri url in urls)
                {
                    NameValueCollection queryValues = HttpUtility.ParseQueryString(url.OriginalString);

                    if (queryValues["type"].ToString().StartsWith("video/mp4"))
                    {
                        string downloadPath = Environment.GetFolderPath(Environment.SpecialFolder.UserProfile);
                        string sFilePath = string.Format(Path.Combine(downloadPath, "Downloads\\{0}.mp4"), videoTitle);

                        WebClient client = new WebClient();
                        client.DownloadFileCompleted += client_DownloadFileCompleted;                        
                        client.DownloadFileAsync(url, sFilePath);
                        isDownloaded = true;

                        break;
                    }
                }

                if (urls.Count == 0 || !isDownloaded)
                {
                    lblMessage.Text = "Unable to locate the Video.";
                    return;
                }
            }
            catch (Exception e)
            {
                lblMessage.Text = "An error occurred while downloading video: " + e.Message;
            }
        }        

        private void client_DownloadFileCompleted(object sender, AsyncCompletedEventArgs e)
        {
            lblMessage.Text = "Your video has been downloaded.";
        }

        private List<Uri> GetVideoDownloadUrls(string pageSource)
        {
            string pattern = "url=";
            string queryStringEnd = "&quality";

            List<Uri> finalURLs = new List<Uri>();
            List<string> urlList = Regex.Split(pageSource, pattern).ToList<string>();

            foreach (string url in urlList)
            {                
                string sURL = HttpUtility.UrlDecode(url).Replace("\\u0026", "&");

                int index = sURL.IndexOf(queryStringEnd, StringComparison.Ordinal);
                if (index > 0)
                {
                    sURL = sURL.Substring(0, index).Replace("&sig=", "&signature=");
                    finalURLs.Add(new Uri(Uri.UnescapeDataString(sURL)));
                }
            }

            return finalURLs;            
        }

        private string GetVideoTitle(string pageSource)
        {
            int startIndex = pageSource.IndexOf("<title>");
            int endIndex = pageSource.IndexOf("</title>");

            if (startIndex > -1 && endIndex > -1)
            {
                string title = pageSource.Substring(startIndex + 7, endIndex - (startIndex + 7));
                return title;
            }

            return "Unknown";
        }


        protected void btnProcess_Click(object sender, EventArgs e)
        {
            try
            {
                Uri videoUri = new Uri(txtYouTubeURL.Text);
                string videoID = HttpUtility.ParseQueryString(videoUri.Query).Get("v");
                string videoInfoUrl = "http://www.youtube.com/get_video_info?video_id=" + videoID;



                HttpWebRequest request = (HttpWebRequest)WebRequest.Create(videoInfoUrl);
                HttpWebResponse response = (HttpWebResponse)request.GetResponse();



                Stream responseStream = response.GetResponseStream();
                StreamReader reader = new StreamReader(responseStream, Encoding.GetEncoding("utf-8"));



                string videoInfo = HttpUtility.HtmlDecode(reader.ReadToEnd());



                NameValueCollection videoParams = HttpUtility.ParseQueryString(videoInfo);



                if (videoParams["reason"] != null)
                {
                    lblMessage.Text = videoParams["reason"];
                    return;
                }



                string[] videoURLs = videoParams["url_encoded_fmt_stream_map"].Split(',');



                foreach (string vURL in videoURLs)
                {
                    string sURL = HttpUtility.HtmlDecode(vURL);



                    NameValueCollection urlParams = HttpUtility.ParseQueryString(sURL);
                    string videoFormat = HttpUtility.HtmlDecode(urlParams["type"]);



                    sURL = HttpUtility.HtmlDecode(urlParams["url"]);
                    sURL += "&signature=" + HttpUtility.HtmlDecode(urlParams["sig"]);
                    sURL += "&type=" + videoFormat;
                    sURL += "&title=" + HttpUtility.HtmlDecode(videoParams["title"]);



                    videoFormat = urlParams["quality"] + " - " + videoFormat.Split(';')[0].Split('/')[1];



                    ddlVideoFormats.Items.Add(new ListItem(videoFormat, sURL));
                }



                btnProcess.Enabled = false;
                ddlVideoFormats.Visible = true;
                btnDownload.Visible = true;
                lblMessage.Text = string.Empty;
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
                lblMessage.ForeColor = Color.Red;
                return;
            }
        }

        protected void btnDownload_Click(object sender, EventArgs e)
        {
            try
            {
                string sURL = ddlVideoFormats.SelectedValue;



                if (string.IsNullOrEmpty(sURL))
                {
                    lblMessage.Text = "Unable to locate the Video.";
                    return;
                }



                NameValueCollection urlParams = HttpUtility.ParseQueryString(sURL);



                string videoTitle = urlParams["title"] + " " + ddlVideoFormats.SelectedItem.Text;
                string videoFormt = HttpUtility.HtmlDecode(urlParams["type"]);
                videoFormt = videoFormt.Split(';')[0].Split('/')[1];



                string downloadPath = Environment.GetFolderPath(Environment.SpecialFolder.UserProfile);
                string sFilePath = string.Format(Path.Combine(downloadPath, "Downloads\\{0}.{1}"), videoTitle, videoFormt);



                WebClient webClient = new WebClient();
                webClient.DownloadFileCompleted += new AsyncCompletedEventHandler(Completed);
                webClient.DownloadFileAsync(new Uri(sURL), sFilePath);
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
                lblMessage.ForeColor = Color.Red;
                return;
            }
        }

        private void Completed(object sender, AsyncCompletedEventArgs e)
        {
            lblMessage.Text = "Video downloaded on: " + DateTime.Now.ToString();
            lblMessage.ForeColor = Color.Green;
        }

    }
}