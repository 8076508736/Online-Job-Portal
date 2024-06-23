using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Web.Security;

public partial class Login : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection();
    SqlCommand com = new SqlCommand();
   SqlDataReader dr;

  
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void Logins_Click(object sender, EventArgs e)
    {


        if (txtuserid.Text == "nishant@gmail.com" && txtpassword.Text == "nishant1234")
            {
                Session["email"] = "" + txtuserid.Text;
                FormsAuthentication.RedirectFromLoginPage("a", false);
                Response.Redirect("WelComeAdmin.aspx");
            }
            else
        {

        con.ConnectionString = ConfigurationManager.ConnectionStrings["kush"].ConnectionString;
        com.Connection = con;
        com.CommandText = "select UserId,Password,UserType,Status from dbo.LoginMaster where UserId='" + txtuserid.Text + "'  and Password='" + txtpassword.Text + "' ";
        con.Open();
        dr = com.ExecuteReader();
        if (dr.Read())
        {
            string UserId = "" + dr["UserId"];
            int Satuse = Convert.ToInt16(dr["Status"]);
            string UserType = dr["UserType"].ToString();
            if (Satuse == 1 && UserType == "Company")
            {
                dr.Close();
                Session["CompanyId"] = "" + UserId;
                SqlCommand logintime = new SqlCommand("update LoginMaster set LastLoginTime= '" + System.DateTime.Now + "'  where UserId='" + txtuserid.Text + "'", con);
                logintime.ExecuteNonQuery();
                //con.Close();

                FormsAuthentication.RedirectFromLoginPage("a", false);
                Response.Redirect("WelComeCompany.aspx");
            }
            con.Close();
            if (UserType == "JobSeeker")
            {
                Session["userid"] = "" + UserId;
                SqlCommand logintime = new SqlCommand("update LoginMaster set LastLoginTime= '" + System.DateTime.Now + "'  where UserId='" + txtuserid.Text + "'", con);
                con.Open();
                logintime.ExecuteNonQuery();

                FormsAuthentication.RedirectFromLoginPage("a", false);
                Response.Redirect("SearchJobMaster.aspx");
            }
            con.Close();
        }
        
    






        }
    }
    }




