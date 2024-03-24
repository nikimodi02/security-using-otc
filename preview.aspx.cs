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
    public partial class preview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
               // var l = Response.Headers.AllKeys;
            }
            if (!IsPostBack)
            {

                //HttpCookie aCookie = Request.Cookies["OTC"];
                //if (aCookie != null)
                //{
                //    object userSettings = aCookie.Value;
                //    string[] objOTC = userSettings.ToString().Split(':');
                //    if (objOTC[1] == "True")
                //    {
                //        Response.Redirect("Login.aspx");
                //    }
                //    ScriptManager.RegisterClientScriptBlock(this, GetType(), "msg", "confirm('" + userSettings + "')", true);
                //}
                //else
                //{
                //    // ScriptManager.RegisterClientScriptBlock(this, GetType(), "msg", "confirm('No Cookies')", true);
                //}

                SqlDataAdapter da = new SqlDataAdapter(new SqlCommand("select P_Id, cId, Name, Price, Photo from Product where P_id=@pId", DbConnection.conn));
                da.SelectCommand.Parameters.AddWithValue("@pId", Convert.ToInt32(Request.QueryString["pId"]));
                var dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count <= 0) return;
                lblName.Text = dt.Rows[0]["Name"].ToString();
                lblPrice.Text = dt.Rows[0]["Price"].ToString();
                Image1.ImageUrl = dt.Rows[0]["Photo"].ToString();
            }
        }

        protected void btnBuy_Click(object sender, EventArgs e)
        {
            int p_id = Convert.ToInt16(Request.QueryString["pId"]);
           
            if (Session["ID"] != null)
            {
                SqlCommand cmdInsert = new SqlCommand("insert into cart(P_id, User_id, Date)values(@P_id, @User_id, @Date)");
                cmdInsert.CommandType = CommandType.Text;
                cmdInsert.Connection = DbConnection.conn;
                cmdInsert.Parameters.AddWithValue("@P_id", p_id);
                cmdInsert.Parameters.AddWithValue("@User_id", Session["ID"].ToString());
                cmdInsert.Parameters.AddWithValue("@Date", DateTime.Now.Date);
                DbConnection.conn.Open();
                cmdInsert.ExecuteNonQuery();
                DbConnection.conn.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Messege", "alert('Add to Cart Successfully');", true);
            }
            else
            {
                Response.Redirect("Login.aspx?pId=" + p_id + "");
            }
        }
    }
}