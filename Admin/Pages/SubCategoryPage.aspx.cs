using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Pages_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        SubCategoryDetail scd = new SubCategoryDetail { 
        SubCategoryName =txtSubCatName .Text ,
        CategoryID =Convert.ToInt32 (ddlCatName .SelectedItem .Value) ,
        IsActive =Convert.ToInt32 (DDLIsActive.SelectedItem.Value)
     };
        DataClassesDataContext dcdc = new DataClassesDataContext();
        dcdc.SubCategoryDetails.InsertOnSubmit(scd);
        dcdc.SubmitChanges();
        gvSubCategory.DataBind();
        txtSubCatName.Text = "";

    }
}