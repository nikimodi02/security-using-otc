using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingSite
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["msg"] == "done")
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Messege", "alert('Transaction Done Successfully')", true);
                }
            }
        }
    }
}
