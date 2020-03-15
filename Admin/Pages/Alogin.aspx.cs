using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Admin_Pages_Alogin : System.Web.UI.Page
{
    SqlCommand cmd=new SqlCommand();
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OrganicFarm.mdf;Integrated Security=True;User Instance=True");
    SqlDataReader dr;
    string str;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        str = "select * from AdminMaster where AdminName='" + txtAname .Text + "' and AdminPassword='" + txtApass .Text +"'";
        cmd = new SqlCommand(str,cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            Session["pic"] = dr["ProfilePhoto"].ToString();
            Session["Aname"] = dr["AdminName"].ToString();
            Session["emailid"] = dr["EmailId"].ToString();
            Response.Redirect("Ahome.aspx");
        }
        else
        {
            Response.Write("<script language=javascript>alert('Incorrect UserName and Password')</script>");
            //Label1.Text = "Incorrect AdminName and Password";
        }
    }
}