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
    public partial class Registration : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            //Register User

            UserStore<IdentityUser> store = new UserStore<IdentityUser>();
            UserManager<IdentityUser> manager = new UserManager<IdentityUser>(store);

            IdentityUser user = new IdentityUser(txtUser.Text);

            IdentityResult result = manager.Create(user, txtPass.Text);

            if (result.Succeeded)
                Response.Redirect("~/Default.aspx");
            else
                lblMessage.Text = result.Errors.FirstOrDefault();
        }

    }
}