using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Pages_AdminMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Image1.ImageUrl = "~/Admin/Pages/Images/" + Session["pic"].ToString();
       Image2.ImageUrl = "~/Admin/Pages/Images/" + Session["pic"].ToString();
        Label1.Text = Session["Aname"].ToString();
        Label2.Text = Session["emailid"].ToString();
    }
}
