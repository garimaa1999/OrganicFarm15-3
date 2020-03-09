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
        if (FUFarm.HasFile)
        {
            if (FUFarm.PostedFile.ContentType == "image/jpeg")
            {
                if (FUFarm.PostedFile.ContentLength < 1000000)
                {
                    fname = FUFarm.FileName;
                    FUFarm.SaveAs(Server.MapPath("~/FarmImages/" + fname));
                    Image1.ImageUrl = "~/FarmImages/" + fname;
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
        FarmDetail fd=new FarmDetail 
        {
        FarmName=txtFarmName .Text,
        SoilTypeID=Convert .ToInt32 (ddlSoilId .SelectedItem .Value),
        CropTypeID=Convert.ToInt32(ddlCrop .SelectedItem .Value),
        SizeOfFarm=txtsizeoffarm .Text,
        TimeDuration=Txttimeduration .Text,
        DateOfBooking=Convert.ToDateTime (txtdateofbooking .Text),
        DateOfReturn=Convert.ToDateTime (Txtdateofreturn .Text),
        Price=Convert.ToInt32(TxtPrice .Text),
        AreaId=Convert.ToInt32(ddlArea .SelectedItem .Value),
        Description=TxtDescription .Text,
        AgeOfProperty=TxtAgeOfProperty .Text ,
        IsActive=Convert.ToInt32(DDLIsActive .SelectedItem.Value),
        Image = ViewState["fname"].ToString()
        };
        DataClassesDataContext dcdc = new DataClassesDataContext();
        dcdc.FarmDetails.InsertOnSubmit(fd);
        dcdc.SubmitChanges();
        gvFarm.DataBind();
    }
}