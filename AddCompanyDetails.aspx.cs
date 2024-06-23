using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CompanyInfo : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    LoginInsert log = new LoginInsert();
    CompanyInsert cms = new CompanyInsert();

    protected void Button1_Click(object sender, EventArgs e)
    {
        DateTime d1 = System.DateTime.Now;
        Random rr = new Random();
        string companyid = txtcompanyname.Text.Trim()+ rr.Next(1, 1000).ToString();
        string UserType="Company";
        
        int i=cms.CompanyInfos(companyid, txtcompanyname.Text, ddlCompanyType.SelectedValue, txtcompanydetails.Text,DdlCompanyLocation.SelectedValue, txtcompanyemailid.Text);
        log.insert(companyid, txtcompanypassword.Text, "" + d1, UserType, "True");
       if(i>0)
       {
           GridView1.DataBind();
           Message.Text = "succes";

           txtcompanydetails.Text = "";
           txtcompanyemailid.Text = "";
           txtcompanyname.Text = "";
           DdlCompanyLocation.SelectedValue = "Select";
           ddlCompanyType.SelectedValue = "Select";
          
       }
           
       else
       {
           Message.Text = "not succes";
       }

     

    }
    protected void ddlCompanyType_DataBound(object sender, EventArgs e)
    {
        ddlCompanyType.Items.Insert(0, "Select");
    }
    protected void DdlCompanyLocation_DataBound(object sender, EventArgs e)
    {
        DdlCompanyLocation.Items.Insert(0, "Select");
    }
}