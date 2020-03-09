using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;

public partial class Client_Shop_Registration : System.Web.UI.Page
{
    string fname;
    string str;
    SqlCommand cmd = new SqlCommand();
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OrganicFarm.mdf;Integrated Security=True;User Instance=True");
    SqlDataReader dr;


    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnupload_Click(object sender, EventArgs e)
    {

        Label1 .Text  = " ";
        if (fuProfilePhoto.HasFile)
        {
            if (fuProfilePhoto.PostedFile.ContentType == "image/jpeg")
            {
                if (fuProfilePhoto.PostedFile.ContentLength < 700000)
                {
                    fname = fuProfilePhoto.FileName;
                    fuProfilePhoto.SaveAs(Server.MapPath("~/UserProfile/" + fname));
                    Image1.ImageUrl = "~/UserProfile/" + fname;
                    Label1.Text = "Profile Photo Uploaded";
                    ViewState["fname"] = fname;
                }
                else
                {
                    Label1.Text = "File Size Too Large";
                }
            }
            else
            {
                Label1.Text = "Please select Image";
            }
        }
        else
        {
            Label1.Text = "Please Select File";
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        str = "insert into UserDetail values ('"+ Txtusername.Text +"','"+ Txtupass .Text+"','"+ TxtEmailAddress .Text +"','"+ txtAddress.Text +"', '"+ txtmobileno.Text+"','"+ ViewState ["fname"].ToString() +"')";
        cmd = new SqlCommand(str , cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("Login.aspx");
    }
}