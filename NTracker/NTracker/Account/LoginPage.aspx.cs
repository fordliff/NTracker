using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NTracker.Account
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        //When Login button is clicked then
        //perform these lines of codes
        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            if(txtUName.Text =="cliff" && TxtUPass.Text =="password")
            {     

                Session["Uname"] = txtUName.Text.ToUpper().Trim();
                Session["Urole"] = "Admin".Trim();                          
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                lblMsg.Text = "Invalid username and password";
                Session.Clear();
                Session.Abandon();
                Session.RemoveAll();
                
               
            }
        }

        //Clears User textbox information
        protected void txtUName_TextChanged(object sender, EventArgs e)
        {
            lblMsg.Text = "";
        }
        //Clears Password textbox information
        protected void TxtUPass_TextChanged(object sender, EventArgs e)
        {
            lblMsg.Text = "";

        }
    }
}