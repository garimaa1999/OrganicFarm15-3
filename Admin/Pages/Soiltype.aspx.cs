using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Pages_Default : System.Web.UI.Page
{
    string fname;
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        SoilTypeDetail std = new SoilTypeDetail { 
        SoilTypeName =txtsoiltypename .Text ,
        IsActive =Convert.ToInt32 (DDLIsActive.SelectedItem .Value ),
        Image=ViewState["fname"].ToString()
   
        };
        DataClassesDataContext dcdc = new DataClassesDataContext();
        dcdc.SoilTypeDetails.InsertOnSubmit(std);
        dcdc.SubmitChanges();
        gvSoilType.DataBind();
        txtsoiltypename.Text = "";
        Image1.ImageUrl = "";

    }
    protected void Btnimageupload_Click(object sender, EventArgs e)
    {
         
        Label1 .Text ="";
        if (FUSoilType.HasFile)
        {
            if (FUSoilType.PostedFile.ContentType == "image/jpeg")
            {
                if (FUSoilType.PostedFile.ContentLength < 700000)
                {
                    fname = FUSoilType.FileName;
                    FUSoilType.SaveAs(Server.MapPath("~/SoilTypeImages/"+fname));
                    Image1.ImageUrl = "~/SoilTypeImages/" + fname;
                    Label1.Text = "File Uploaded";
                    ViewState["fname"] = fname;
                }
                else
                {
                    Label1.Text = "File Size Too Large";
                }
            }
            else
            {
                Label1.Text = "Plz Select Image..";
            }
        }
        else
        {
            Label1.Text = "Plz Select File";
        }
       
    }
}