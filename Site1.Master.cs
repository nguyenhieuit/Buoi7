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
    public partial class Site1 : System.Web.UI.MasterPage
    {
        string link = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=G:\KTTMDT\Buoi7\Buoi7\Buoi7\App_Data\sql_buoi7.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            load_dtList();
        }
        public void load_dtList()
        {
            string sql = "Select *From LoaiHang";
            SqlDataAdapter da = new SqlDataAdapter(sql, link);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dt_list1.DataSource = dt;
            this.dt_list1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            String MaLoai = ((LinkButton)sender).CommandArgument;
            Context.Items["ML"] = MaLoai;
            Server.Transfer("sanpham.aspx");
        }
    }
}