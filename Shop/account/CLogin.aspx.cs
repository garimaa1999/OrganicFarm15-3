using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class Client_Shop_account_Login : System.Web.UI.Page
{
    
    SqlCommand cmd = new SqlCommand();
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\OrganicFarm.mdf;Integrated Security=True;User Instance=True");
    SqlDataReader dr;
    string str;
    protected void Page_Load(object sender, EventArgs e)
    {
        string Password = txtpassword.Text;
       txtpassword.Attributes.Add("value", Password);
 
        

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        int isactive;

        cn.Open();
        str = "select * from UserDetail where EmailAddress='" + txtemailadd.Text + "' and UserPassword='" + txtpassword.Text + "'";
        cmd = new SqlCommand(str,cn );
        dr=cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
        isactive =Convert.ToInt32(dr["IsActive"].ToString());
            if (isactive == 1)
            {
                panelotp.Visible = false;
                Response.Redirect("Home.aspx");
            }
            else if (isactive == 0)
            {
                panelotp.Visible = true;
            }
        }
        else
        {

            Response.Write("<script language=javascript>alert('Incorrect UserName and Password')</script>");
        }
        cn.Close();
        
    }
    protected void lbClose_Click(object sender, EventArgs e)
    {
        panelotp.Visible = false;
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        string otp;
        cn.Open();
        str = "select * from UserDetail where EmailAddress='" + txtemailadd.Text + "' ";
        cmd = new SqlCommand(str,cn );
        dr=cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            otp = dr["Otp"].ToString();

            if (otp == txtotp.Text)
            {
                cn.Close();
                cn.Open();
                str = "update UserDetail set IsActive =1 where EmailAddress='" + txtemailadd.Text + "'  ";
                cmd = new SqlCommand(str, cn);
                cmd.ExecuteNonQuery();
                Response.Redirect("Home.aspx");
                cn.Close();
            }
            else
            {
                Response.Write("<script language=javascript>alert('Incorrect OTP')</script>");
            }
        }
       
    }
}