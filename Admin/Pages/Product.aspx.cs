using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Pages_Default : System.Web.UI.Page
{
    String fname;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        
        ProductDetail pd = new ProductDetail { 
        ProductName =txtProductName.Text,
        SubCategoryID=Convert.ToInt32(ddlSubCategory .SelectedItem .Value),
        Price=Txtprice.Text,
        Description=Txtdescription .Text,
        IsActive=Convert.ToInt32 (DDLIsActive .SelectedItem.Value),
        Image=ViewState ["fname"].ToString()
        };
        DataClassesDataContext dcdc = new DataClassesDataContext();
        dcdc.ProductDetails.InsertOnSubmit(pd);
        dcdc.SubmitChanges();
        gvProduct.DataBind();
        txtProductName.Text = "";
        Txtprice.Text = "";
        Txtdescription.Text = "";
        Image1.ImageUrl = "";
    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        lbl1.Text = " ";
        if (FUProduct.HasFile)
        {
            if (FUProduct.PostedFile.ContentType == "image/jpeg")
            {
                if (FUProduct.PostedFile.ContentLength < 700000)
                {
                    fname = FUProduct.FileName;
                    FUProduct.SaveAs(Server.MapPath("~/Product/" + fname));
                    Image1.ImageUrl = "~/Product/" + fname;
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
}