using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminHome : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("admin_Login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Notification values('" + notification.Text + "')", con);
        int a = cmd.ExecuteNonQuery();
        if (a > 0)
        {
            Response.Write("<script>alert('Notification updated')</script>");
        }
        else
        {
            Response.Write("<script>('Error Occured ! Please Check Details');</script>");
            Server.Transfer("clubHouseBooking.aspx");
        }
        con.Close();

        GridView1.DataBind();
        notification.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Abandon(); 
        Response.Redirect("admin_Login.aspx");
    }
}