using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Exercise : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnXem_Click(object sender, EventArgs e)
    {
        SqlConnection con;
        con = new SqlConnection(@"Data Source=CNTT\SQLEXPRESS;Initial Catalog=ThongTin;Integrated Security=True");
        con.Open();
        string sql = "Select * from ThongTinUser where Dep = '"+txtMaPhong.Text+"'";

        SqlCommand cmd = new SqlCommand(sql, con);

        SqlDataReader dr = cmd.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();
        con.Close();
    }

}