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
    public partial class WebForm7 : System.Web.UI.Page
    {
        public static int SubTotal;
        public static int mainBal;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["ID"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    SqlCommand cmdGetBalance = new SqlCommand("select Balance from Users where User_id=@User_id", DbConnection.conn);
                    cmdGetBalance.Parameters.AddWithValue("@User_id", Session["ID"]);
                    SqlDataAdapter daGetBal = new SqlDataAdapter(cmdGetBalance);
                    var dtGetBal = new DataTable();
                    daGetBal.Fill(dtGetBal);
                    if (dtGetBal.Rows.Count > 0)
                    {
                        mainBal = Convert.ToInt32(dtGetBal.Rows[0]["Balance"]);
                    }
                    SqlCommand cmd = new SqlCommand("select c.*,p.name,p.price,p.photo,(u.Fname+' '+u.Lname)as Uname from cart c join product p on(c.p_id=p.p_id) join Users u on(c.user_id=u.user_id) where c.User_id=@User_id");
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = DbConnection.conn;
                    cmd.Parameters.AddWithValue("@User_id", Session["ID"].ToString());
                    SqlDataAdapter da = new SqlDataAdapter();
                    DataTable dt = new DataTable();
                    da.SelectCommand = cmd;
                    da.Fill(dt);
                    rp.DataSource = dt;
                    rp.DataBind();

                    SqlCommand cmdSub = new SqlCommand("select SUM(p.price)as SubTotal from Cart c join Product p on(c.P_id=p.P_id) where User_id=@User_id");
                    cmdSub.CommandType = CommandType.Text;
                    cmdSub.Connection = DbConnection.conn;
                    cmdSub.Parameters.AddWithValue("@User_id", Session["ID"].ToString());
                    SqlDataAdapter daSub = new SqlDataAdapter();
                    DataTable dtSub = new DataTable();
                    daSub.SelectCommand = cmdSub;
                    daSub.Fill(dtSub);
                    if (dtSub.Rows.Count > 0)
                    {
                        if (dtSub.Rows[0]["SubTotal"] == DBNull.Value)
                        {
                            SubTotal = 0;
                        }
                        else
                        {
                            SubTotal = Convert.ToInt32(dtSub.Rows[0]["SubTotal"]);
                        }
                    }
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (mainBal < SubTotal)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Messege", "alert('Your Balance is Low')", true);
            }
            else
            {
                if (SubTotal > 0)
                {
                    int s_id = 0;
                    SqlCommand cmdSales = new SqlCommand("insert into Sales(User_id, Date)values(@User_id, @Date)",DbConnection.conn);
                    cmdSales.Connection = DbConnection.conn;
                    cmdSales.CommandType = CommandType.Text;
                    cmdSales.Parameters.AddWithValue("@User_id", Session["ID"].ToString());
                    cmdSales.Parameters.AddWithValue("@Date", DateTime.Now.Date);
                    DbConnection.conn.Open();
                    cmdSales.ExecuteNonQuery();
                    DbConnection.conn.Close();

                    SqlCommand cmdSelect = new SqlCommand("select top 1 S_id from Sales order by S_id desc;select c.Cart_id, c.User_id, c.P_id, c.Date,p.Price from Cart c join Product p on(c.P_id=p.P_id) where User_id=@User_id");
                    cmdSelect.Connection = DbConnection.conn;
                    cmdSelect.CommandType = CommandType.Text;
                    cmdSelect.Parameters.AddWithValue("@User_id", Session["ID"].ToString());
                    SqlDataAdapter daSelect = new SqlDataAdapter();
                    daSelect.SelectCommand = cmdSelect;
                    DataSet dsSelect = new DataSet();
                    daSelect.Fill(dsSelect);
                    if (dsSelect.Tables[0].Rows.Count > 0)
                    {
                        s_id = Convert.ToInt32(dsSelect.Tables[0].Rows[0]["S_id"].ToString());
                    }
                    for (int i = 0; i < dsSelect.Tables[1].Rows.Count; i++)
                    {
                        SqlCommand cmdSalesDetails = new SqlCommand("insert into SalesDetails(S_id, p_id, Price)values(@S_id, @p_id,@Price)");
                        cmdSalesDetails.Connection = DbConnection.conn;
                        cmdSalesDetails.CommandType = CommandType.Text;
                        cmdSalesDetails.Parameters.AddWithValue("@S_id", s_id);
                        cmdSalesDetails.Parameters.AddWithValue("@p_id", dsSelect.Tables[1].Rows[i]["P_id"].ToString());
                        cmdSalesDetails.Parameters.AddWithValue("@Price", dsSelect.Tables[1].Rows[i]["Price"]);
                        DbConnection.conn.Open();
                        cmdSalesDetails.ExecuteNonQuery();
                        DbConnection.conn.Close();
                    }
                    int bal = mainBal - SubTotal;
                    SqlCommand cmdUpdateUser = new SqlCommand("update Users set Balance=@Balance where User_id=@User_id");
                    cmdUpdateUser.Connection = DbConnection.conn;
                    cmdUpdateUser.CommandType = CommandType.Text;
                    cmdUpdateUser.Parameters.AddWithValue("@User_id", Session["ID"]);
                    cmdUpdateUser.Parameters.AddWithValue("@Balance", bal);
                    DbConnection.conn.Open();
                    cmdUpdateUser.ExecuteNonQuery();
                    DbConnection.conn.Close();

                    SqlCommand cmdDelete = new SqlCommand("delete from Cart where User_id=@User_id");
                    cmdDelete.Connection = DbConnection.conn;
                    cmdDelete.CommandType = CommandType.Text;
                    cmdDelete.Parameters.AddWithValue("@User_id", Session["ID"].ToString());
                    DbConnection.conn.Open();
                    cmdDelete.ExecuteNonQuery();
                    DbConnection.conn.Close();

                    Response.Redirect("Default.aspx?msg=done");
                }
                else
                {
                    lblShow.Text = "Please Add Sum Products In Cart";
                }
            }
        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            SqlCommand cmdDelete = new SqlCommand("delete from Cart where User_id=@User_id");
            cmdDelete.Connection = DbConnection.conn;
            cmdDelete.CommandType = CommandType.Text;
            cmdDelete.Parameters.AddWithValue("@User_id", Session["ID"].ToString());
            DbConnection.conn.Open();
            cmdDelete.ExecuteNonQuery();
            DbConnection.conn.Close();
            Response.Redirect("Cart.aspx");
        }
    }
}