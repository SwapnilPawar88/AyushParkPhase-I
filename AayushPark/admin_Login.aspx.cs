using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void adminLoginBtn_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        con.Open();
        String query = "select count(*) from adminLogin where adminUserName='" + adminUserName.Text + "' and adminPassword='" + adminPassword.Text + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        String output = cmd.ExecuteScalar().ToString();

        if (output== "1")
        {
            Session["username"] = adminUserName.Text;
            Response.Write("<script>alert('Login Success Welcome !')</script>");
            Server.Transfer("adminHome.aspx");
        }
        else
        {
            Response.Write("<script>('Error Occured ! Please Check Details');</script>");
        }
        con.Close();
    }
}