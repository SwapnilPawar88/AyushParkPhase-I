using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }

    protected void ytdemo(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://www.youtube.com/watch?v=QQejv5v4sHQ",true);
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://www.facebook.com/pg/Commanders-Ayush-Park-Pune-589545921096169/posts/?ref=page_internal", true);
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://www.facebook.com/pg/Commanders-Ayush-Park-Pune-589545921096169/posts/?ref=page_internal", true);
    }    
}
