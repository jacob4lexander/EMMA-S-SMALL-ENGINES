using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmmaUseCaseJacobClayton
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
               btnLogout.Visible = true;
               lblLogin.Visible = false;
                
            }
            else
            {
                btnLogout.Visible = false;
                lblLogin.Visible = true;
            }


        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            //log out user
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();

        }

        
    }
}