﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace ShoppingSite
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlDataAdapter da = new SqlDataAdapter(new SqlCommand("select * from Product where cId=5", DbConnection.conn));
                var dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    rp.DataSource = dt;
                    rp.DataBind();
                }

            }
        }
    }
}