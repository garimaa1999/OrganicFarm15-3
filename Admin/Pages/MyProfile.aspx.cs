using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
public partial class Admin_Pages_Default2 : System.Web.UI.Page
{
    string fname;
    SqlCommand cmd = new SqlCommand();
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OrganicFarm.mdf;Integrated Security=True;User Instance=True");
    SqlDataReader dr;
    string str;
    protected void Page_Load(object sender, EventArgs e)
    {
            ProfileImage.ImageUrl = "~/Admin/Pages/Images/" + Session["pic"].ToString();
          Label1.Text = Session["Aname"].ToString();
          cn.Open();
          str = "select AdminName,AdminPassword,ContactNo,EmailId,ProfilePhoto from AdminMaster where AdminName= '" + Session["Aname"].ToString() + "' ";
          cmd = new SqlCommand(str, cn);
          dr = cmd.ExecuteReader();
          if (dr.HasRows)
          {
              dr.Read();
             txtAdminName.Text=dr["AdminName"].ToString();
             txtAdminPassword.Text = dr["AdminPassword"].ToString();
             txtAdminContactno.Text = dr["ContactNo"].ToString();
             txtEmailID.Text = dr["EmailId"].ToString();
             
          }
          cn.Close();
      
    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        cn.Open();
        str = "update AdminMaster set ProfilePhoto='" + ViewState["fname"] + "' where AdminName= '" + Session["Aname"].ToString() + "' ";
        cmd = new SqlCommand(str, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Session["pic"] = ViewState["fname"].ToString();
        ProfileImage.ImageUrl = "Images/" + ViewState["fname"].ToString();
        changeProfilePic.Visible = false;
        Response.Redirect("MyProfile.aspx");
    }
    protected void lbChangePic_Click(object sender, EventArgs e)
    {
        changeProfilePic.Visible = true;
    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {

        lblPic.Text = "";
        if (fuProfile.HasFile)
        {
            if (fuProfile.PostedFile.ContentType == "image/jpeg")
            {
                if (fuProfile.PostedFile.ContentLength < 700000)
                {
                    fname = fuProfile.FileName;
                    fuProfile.SaveAs(Server.MapPath("Images/" + fname));
                    ProfileImage.ImageUrl = "Images/" + fname;
                    lblPic.Text = "File Uploaded";
                    ViewState["fname"] = fname;
                }
                else
                {
                    lblPic.Text = "File Size Too Large";
                }
            }
            else
            {
                lblPic.Text = "Plz Select Image..";
            }
        }
        else
        {
            lblPic.Text = "Plz Select File";
        }
    }
    protected void lbClose_Click(object sender, EventArgs e)
    {
        changeProfilePic.Visible = false;
    }


    protected void btnChangeDetails_Click(object sender, EventArgs e)
    {
        cn.Open();
        str = "update AdminMaster set AdminName='" + txtAdminName.Text + "',AdminPassword='" + txtAdminPassword.Text + "',ContactNo='" + txtAdminContactno.Text + "',EmailId='" + txtEmailID.Text + "' where  AdminName= '" + Session["Aname"].ToString() + "'";
        cmd = new SqlCommand(str, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("MyProfile.aspx");
    }
}