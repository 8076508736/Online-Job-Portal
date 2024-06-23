using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{


    SqlCommand cmd;

    PersonalInsert ins = new PersonalInsert();
    LoginInsert log = new LoginInsert();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
       

        DateTime d1 = System.DateTime.Now;
        Random rr=new Random ();
       string JobSeekerID= d1.Day.ToString () + d1.Month.ToString () + d1.Year.ToString () + txtfirstname.Text.Trim() + rr.Next (1,1000).ToString ();
       Session["id"] = JobSeekerID;
       Session["Fname"] = txtfirstname.Text;
       Session["lname"] = txtlastname.Text;
       Session["Gendr"] = GenderRb.SelectedItem;
       string UserType = "JobSeeker";
        string DayTime= "" +System.DateTime.Now;

       
      int i = ins.insert(JobSeekerID, txtfirstname.Text, txtlastname.Text, txtemailid.Text, txtdob.Text, GenderRb.SelectedValue.ToString(), txtaddress.Text, txtpincode.Text, txtmobileno.Text, txtphoneno.Text, ddlcurrentcity.SelectedValue.ToString());
       int j = log.insert(JobSeekerID, txtpasssword.Text, DayTime, UserType, "True");
      
       if (i > 0)
           if(j>0)

              // cmd=new SqlCommand("insert into 

           Response.Redirect("JobSeekerEducational_Details.aspx");
       else
           Response.Write("some problem");
       
     
         
       //catch (Exception ex)
       // {
       //    Label1.Text = ex.Message;


       //}
    }
    protected void txtdob_TextChanged(object sender, EventArgs e)
    {

    }
}
