using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmmaUseCaseJacobClayton
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            //Login User
            UserStore<IdentityUser> store = new UserStore<IdentityUser>();
            UserManager<IdentityUser> manager = new UserManager<IdentityUser>(store);

            IdentityUser user = manager.Find(txtUser.Text, txtPass.Text);
            if (user == null)
                lblMessage.Text = "Invalid Login: Check Username and password";
            else
            {
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                authenticationManager.SignIn(userIdentity);

                //Redirect to Default page and pass user name as Query String
                Response.Redirect("~/Default.aspx?User=" + user.UserName);
            }
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Registration.aspx");
        }

    }
}