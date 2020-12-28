using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] != null)
        {
            Response.Redirect("~/Welcome.aspx");
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        con.Open();
        String query = "select count(*) from Register where email='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        String output = cmd.ExecuteScalar().ToString();

        if (output == "1")
        {
            Session["email"] = TextBox1.Text;
            Response.Redirect("~/Welcome.aspx");

        }

        else
        {
            Response.Write("<Script>alert('Incorrect User ID Or Password !')</Script>");
        }
    }
}