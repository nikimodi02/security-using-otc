using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Net;

namespace ShoppingSite
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        public string a;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                //HttpCookie aCookie = Request.Cookies["OTC"];
                //if (aCookie != null)
                //{
                //    object userSettings = aCookie.Value;
                //    string[] objOTC = userSettings.ToString().Split(':');
                //    if (objOTC[1] == "True")
                //    {
                //     Response.Redirect("Login.aspx");
                //     ScriptManager.RegisterClientScriptBlock(this, GetType(), "msg", "confirm('" + userSettings + "')", true);
                //    }
                //  ScriptManager.RegisterClientScriptBlock(this, GetType(), "msg", "confirm('" + userSettings + "')", true);
                //}
                //else
                //{
                //     ScriptManager.RegisterClientScriptBlock(this, GetType(), "msg", "confirm('No Cookies')", true);
                //}
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Cookies.Remove("OTC");
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}
