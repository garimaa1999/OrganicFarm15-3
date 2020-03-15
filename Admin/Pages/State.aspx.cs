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
        StateMaster sm = new StateMaster { 
        StateName =txtStateName.Text 
        };
        DataClassesDataContext dcdc = new DataClassesDataContext();
        dcdc.StateMasters.InsertOnSubmit(sm);
        dcdc.SubmitChanges();
        gvState.DataBind();
        txtStateName.Text = "";

        
    }
}