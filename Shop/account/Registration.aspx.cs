using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Net.Mail;
using System.Configuration;
using System.Security.Cryptography;


public partial class Client_Shop_Registration : System.Web.UI.Page
{
    string fname;
    string str;
    SqlCommand cmd = new SqlCommand();
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OrganicFarm.mdf;Integrated Security=True;User Instance=True");
   

    protected void Page_Load(object sender, EventArgs e)
    {
        string Password = Txtupass.Text;
        Txtupass.Attributes.Add("value", Password);
        string CPassword = Txtcpass.Text;
        Txtcpass.Attributes.Add("value", CPassword);
        
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
       
        
        
        Random r = new Random();
        string s = r.Next().ToString();
        s = s.Substring(0, 5);
        Response.Write(s);

        MailMessage mm = new MailMessage();
        string mailid = TxtEmailAddress.Text;
        mm.To.Add(mailid);
        mm.From = new MailAddress("ecoorganicfarm2020@gmail.com");
        mm.Subject = "Sign Up";
        string Body = "<h1> Eco Organic Farm Admin </h1> <br/> <I> HELLO </I> <br/> Your Password: " + s ;
        mm.Body = Body;
        mm.IsBodyHtml = true;
        


        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Credentials = new System.Net.NetworkCredential("ecoorganicfarm2020@gmail.com", "ecofarm@22102");
        smtp.Port = 587; //465
        smtp.EnableSsl = true;
        smtp.Send(mm);
        Label1.Text = "email-id and check it....";

        cn.Open();
        str = "insert into UserDetail values ('" + Txtusername.Text + "','" + Txtupass.Text + "','" + TxtEmailAddress.Text + "','" + txtAddress.Text + "', '" + txtmobileno.Text + "','" + ViewState["fname"].ToString() + "','"+ s +"','0')";
        cmd = new SqlCommand(str, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("CLogin.aspx");

        





        
    }
}