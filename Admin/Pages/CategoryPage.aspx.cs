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
        CategoryDetail cd = new CategoryDetail { 
        CategoryName =txtCatName .Text,
        IsActive=Convert.ToInt32(DDLIsActive.SelectedItem.Value)
        };
        DataClassesDataContext dcdc = new DataClassesDataContext();
        dcdc.CategoryDetails.InsertOnSubmit(cd);
        dcdc.SubmitChanges();
        gvCategory.DataBind();
    }
}