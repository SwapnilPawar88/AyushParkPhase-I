using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class view_allComplaints : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        string ss = "insert into Resolvecomplaint(blockno,status) values('" + TextBox1.Text + "','" + TextBox2.Text+"')";
        SqlCommand cmd = new SqlCommand(ss, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
       Response.Write("<Script>alert('Successfully Updated ')</Script>");
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}