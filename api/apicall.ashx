<%@ WebHandler Language="C#" Class="apicall" %>

using System;
using System.Web;

public class apicall : IHttpHandler {

    public void ProcessRequest(HttpContext context)
    {
       //RequestHelper oRequestHelper = new RequestHelper();
       //oRequestHelper.ProcessRequest(context);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}