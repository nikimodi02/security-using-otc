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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Users(Username, Password, Fname, Mname, Lname, Address, Email, Contact,Balance)values(@Username, @Password, @Fname, @Mname, @Lname, @Address, @Email, @Contact,@Balance)");
            cmd.CommandType = CommandType.Text;
            cmd.Connection = DbConnection.conn;
            cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
            cmd.Parameters.AddWithValue("@Fname", txtFname.Text);
            cmd.Parameters.AddWithValue("@Mname", txtMname.Text);
            cmd.Parameters.AddWithValue("@Lname", txtLname.Text);
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Contact", txtContact.Text);
            cmd.Parameters.AddWithValue("@Balance", 99999);
            
            DbConnection.conn.Open();
            cmd.ExecuteNonQuery();
            DbConnection.conn.Close();
            Response.Redirect("Login.aspx?msg=Add");
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtUsername.Text = txtPassword.Text = txtFname.Text = txtMname.Text = txtLname.Text = txtAddress.Text = txtEmail.Text = txtContact.Text = string.Empty;
        }
    }
}