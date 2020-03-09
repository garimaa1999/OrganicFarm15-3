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
        AreaMaster am = new AreaMaster
        {
            CityId = Convert.ToInt32(ddlcityid.SelectedItem.Value),
            AreaName = txtAreaName.Text
        };
        DataClassesDataContext dcdc = new DataClassesDataContext();
        dcdc.AreaMasters.InsertOnSubmit(am);
        dcdc.SubmitChanges();
        gvArea.DataBind();
    }

}