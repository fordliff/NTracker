using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Http;

namespace NTracker
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {

            Application["Useronline"] = 0;

            // Code that runs on application startup
            GlobalConfiguration.Configure(WebApiConfig.Register);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

        }
        public void Session_OnStart()
        {
            Application.Lock();
            Application["Useronline"] = (int)Application["Useronline"] + 1;
            Application.UnLock();

        }

        public void Session_OnEnd()
        {
            Application.Lock();
            Application["Useronline"] = (int)Application["Useronline"] - 1;
            Application.UnLock();

        }

        void Application_End(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Session.RemoveAll();
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
            //Roles.DeleteCookie();
        }
    }
}