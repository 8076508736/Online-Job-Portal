using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class ResetPassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand com = new SqlCommand();
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        userid.Text = "" + Session["userid"];
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       // txtuserid.Text = "" + Session["userid"];
        con.ConnectionString = ConfigurationManager.ConnectionStrings["kush"].ConnectionString;
        com.Connection = con;
        com.CommandText = "select UserId,Password,UserType,Status from dbo.LoginMaster where UserId='" + userid.Text + "'  and Password='" + txtoldpass.Text + "' ";
        con.Open();
        dr = com.ExecuteReader();
        if (dr.Read())
        {

            dr.Close();
            SqlCommand logintime = new SqlCommand("update LoginMaster set Password= '" + txtnewpass.Text+ "'  where UserId='" + userid.Text + "'", con);
            
            logintime.ExecuteNonQuery();

            
            Message.Text = "Update Password";
            
        }
        con.Close();
    }
}