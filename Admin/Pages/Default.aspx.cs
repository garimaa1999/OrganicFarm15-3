using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Admin_Pages_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { 
    
    }

    
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
    protected void upload_Click(object sender, EventArgs e)
    {
        string fname;
        Label2.Text = "";
        if (FUSoilType.HasFile)
        {
            if (FUSoilType.PostedFile.ContentType == "image/jpeg")
            {
                if (FUSoilType.PostedFile.ContentLength < 700000)
                {
                    fname = FUSoilType.FileName;
                    FUSoilType.SaveAs(Server.MapPath("~/SoilTypeImages/" + fname));
                    Image1.ImageUrl = "~/SoilTypeImages/" + fname;
                    Label2.Text = "File Uploaded";
                    ViewState["fname"] = fname;
                }
                else
                {
                    Label2.Text = "File Size Too Large";
                }
            }
            else
            {
                Label2.Text = "Plz Select Image..";
            }
        }
        else
        {
            Label2.Text = "Plz Select File";
        }
    }
}