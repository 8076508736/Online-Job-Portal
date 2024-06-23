using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class _Default : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    SqlCommand cmd1 = new SqlCommand();
    SqlDataReader dr;
    string userid;

    protected void Page_Load(object sender, EventArgs e)
    {
      con.ConnectionString = ConfigurationManager.ConnectionStrings["kush"].ConnectionString;

   string companyid = "" + Session["comid"];
    Userid.Text = "" + Session["userid"];
   string   date = "" + System.DateTime.Now;
    if (!Page.IsPostBack)
    {
        cmd.Connection = con;
        cmd.CommandText = "insert into JobSeekerNotification (UserId,CompanyId,Date) Values('" + Userid.Text+ "','" + companyid + "','" + date + "')";
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }


  //  // cmd1.CommandText = "SELECT JobSeeker_PersonalDetails.UserId, JobSeeker_PersonalDetails.FirstName +''+ JobSeeker_PersonalDetails.LastName as Name, JobSeeker_PersonalDetails.EmailId, JobSeeker_PersonalDetails.MobileNo, JobSeeker_EducationalDetails.[Course/Qulification]+'-'+ JobSeeker_EducationalDetails.BranchName as Qulification FROM JobSeeker_PersonalDetails INNER JOIN JobSeeker_EducationalDetails ON JobSeeker_PersonalDetails.UserId = JobSeeker_EducationalDetails.UserId where JobSeeker_PersonalDetails.UserId='"+userid+"' ";
   //cmd1.CommandText = "SELECT UserId ,FirstName+' '+LastName as Name,EmailId,DOB,Address_Of_Communication ,MobileNo, Current_Residence_City FROM JobSeeker_PersonalDetails where UserId='"+Userid.Text+"'";
    cmd1.CommandText = "SELECT * FROM JobSeeker_PersonalDetails WHERE UserId='" + Userid.Text + "'";
    cmd1.Connection = con;
      con.Open();
      dr = cmd1.ExecuteReader();
      

      if (dr.Read())
      {
          if (dr[1] != null)
          {
              Panel1.Visible = true;
          }
          else
          {
              Panel2.Visible = true;
          }
          TextBox1.Text = "" + dr[0];
          TextBox2.Text = "" + dr[1];
          TextBox3.Text = "" + dr[2];
          TextBox4.Text = "" + dr[3];
          TextBox5.Text = "" + dr[4];
          TextBox6.Text = "" + dr[5];
          TextBox7.Text = "" + dr[6];
          TextBox8.Text = "" + dr[7];
          TextBox9.Text = "" + dr[8];
          TextBox10.Text = "" + dr[9];

          
      }
      con.Close();
    }
 
    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Session["userid"] = TextBox1.Text;
        Response.Redirect("JobSeekerDetails.aspx");
    }
}