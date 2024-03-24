using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace ShoppingSite
{
    public partial class Login : System.Web.UI.Page
    {
        public string a="";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session.Abandon();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select User_id,(Fname+' '+Lname)as name from Users where username=@username and password=@password");
            cmd.CommandType = CommandType.Text;
            cmd.Connection = DbConnection.conn;
            cmd.Parameters.AddWithValue("@username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["ID"] = dt.Rows[0]["User_id"].ToString();
                a = dt.Rows[0]["User_id"].ToString();
                Session["Name"] = dt.Rows[0]["name"].ToString();
                if (Request.QueryString["pId"] != null)
                {
                    Response.Redirect("preview.aspx?pId=" + Request.QueryString["pId"].ToString() + "");
                }
                else
                {
                    Response.Redirect("Default.aspx");
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Messege", "alert('Invalid Username & Password')", true);
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtUsername.Text = txtPassword.Text = "";
        }
    }
}