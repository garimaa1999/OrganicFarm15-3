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
    protected void btnUpload_Click(object sender, EventArgs e)
    {  
        
        lbl1.Text = " ";
        if (fucropType.HasFile)
        {
            if (fucropType.PostedFile.ContentType == "image/jpeg")
            {
                if (fucropType.PostedFile.ContentLength < 700000)
                {
                    fname = fucropType.FileName;
                    fucropType.SaveAs(Server.MapPath("~/CropTypeImages/"+fname));
                    Image1.ImageUrl = "~/CropTypeImages/" + fname;
                    lbl1.Text = "File Uploaded";
                    ViewState["fname"] = fname;
                }
                else
                {
                    lbl1.Text = "File Size Too Large";
                }
            }
            else
            {
                lbl1.Text = "Please select Image";
            }
        }
        else
        {
            lbl1.Text = "Please Select File";
        }
    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        CropTypeDetail ctd = new CropTypeDetail { 
        CropTypeName =txtCropTypeName.Text,
        SoilTypeID=Convert.ToInt32 (ddlSoilId.SelectedItem.Value),
        IsActive = Convert.ToInt32(DDLIsActive.SelectedItem.Value),
        Image =ViewState["fname"].ToString()
        };
        DataClassesDataContext dcdc = new DataClassesDataContext();
        dcdc.CropTypeDetails.InsertOnSubmit(ctd);
        dcdc.SubmitChanges();
        gvCropType.DataBind();
        txtCropTypeName.Text = "";
        Image1.ImageUrl = "";
        lbl1.Text = "";
    }
}