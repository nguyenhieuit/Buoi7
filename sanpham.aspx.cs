using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Buoi7
{
    public partial class sanpham : System.Web.UI.Page
    {
        string link = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\KTTMDT\Buoi7\Buoi7\Buoi7\App_Data\sql_buoi7.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            loadsp();
        }
        public void loadsp()
        {
            if (Page.IsPostBack) return;
            string sql;
            if (Context.Items["ML"] == null) { sql = "Select *From MatHang"; }
            else
            {
                String MaLoai = Context.Items["ML"].ToString();
                sql = "Select *From MatHang where MaLoai='" + MaLoai + "'";
            }
            try
            {
                SqlDataAdapter da = new SqlDataAdapter(sql, link);
                DataTable dt = new DataTable();
                da.Fill(dt);
                this.DataList1.DataSource = dt;
                this.DataList1.DataBind();
            }
            catch (SqlException ex)
            {
                Response.Write(ex);
            }
        }
    }
}