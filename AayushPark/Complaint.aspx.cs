using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class Complaint : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string path = Server.MapPath("images/");

        if (FileUpload1.HasFile)
        {
            string ext = Path.GetExtension(FileUpload1.FileName);
            if (ext == ".jpg" || ext == ".png")
            {
                FileUpload1.SaveAs(path + FileUpload1.FileName);
                string name = "images/" + FileUpload1.FileName;

                string ss = "insert into Tempcomplaint(name,blockno,category,helpdesk,issue,attachment,radio) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + TextBox3.Text + "','" + name + "','" + RadioButton1.Text + "')";
                SqlCommand cmd = new SqlCommand(ss,con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Label10.Text = "Your Complaint is Successfully Registered.";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                    
            }
            else
            {
                Label10.Text = "Please Upload .jpg or .png only";
            }
        }

     }
}