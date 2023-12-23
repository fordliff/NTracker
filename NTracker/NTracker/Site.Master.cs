using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

namespace NTracker
{
    public partial class SiteMaster : MasterPage
    {
        //General Declaration
        private const string AntiXsrfTokenKey = "__AntiXsrfToken";
        private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
        private string _antiXsrfTokenValue;

        protected void Page_Init(object sender, EventArgs e)
        {
            // Initiation of Page

            mySidenav.Visible = false;
            MainMenu.Visible = false;

            if (Session["Uname"] != null)
            {                
                FormsAuthentication.SetAuthCookie(Session["Uname"].ToString(), false);
                NLogin.Text = "Logout";
                NRegister.Visible = false;
                mySidenav.Visible = true;
                MainMenu.Visible = true;
            }
           


        }

        protected void master_Page_PreLoad(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                NRegister.Visible = false;

            }
            else
            {

            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

   
     

        //perform this action when login is clicked
        protected void NLogin_Click(object sender, EventArgs e)
        {
            if (NLogin.Text == "Login")
            {
                Response.Redirect("~/Account/LoginPage.aspx");
            }
            else if  (NLogin.Text == "Logout")
            {
                NLogin.Text = "Login";
                Nstatus.Title = "";
                
                Session.Clear();
                Session.Abandon();
                Session.RemoveAll();
                FormsAuthentication.SignOut();
                FormsAuthentication.RedirectToLoginPage("~/Account/LoginPage.aspx");
                //Roles.DeleteCookie();
            }
            else
            {
                Response.Redirect("~/Account/LoginPage.aspx");
            }
        }
        protected void NDashboard_Click(object sender, EventArgs e)
        {
            NDashboard.Attributes.Add("Style","Color:#cfa236;");
            
        }

        protected void A7_Click(object sender, EventArgs e)
        {
            A6.Visible = false;
            A3.Visible = false;
            A5.Visible = false;


        }

        }

}