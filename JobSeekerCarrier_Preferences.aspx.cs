using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    string lanknow1, lanknow2, lanknow3;
    string lk1, lk2, lk3;
    CarrierPreference cp = new CarrierPreference();

    protected void Page_Load(object sender, EventArgs e)
    {

       
        JobSeekerId.Text = "" + Session["id"];
        JobSeekerName.Text = "" + Session["name"];
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        foreach (ListItem kn1 in Know1.Items)
        {
            
            if (kn1.Selected)
            {
                lanknow1 += kn1.Value.ToString() + ",";
            }
        }
        lk1 = txtlan2.Text + "-" + lanknow1;
        
        foreach (ListItem kn2 in Know2.Items)
        {

            if (kn2.Selected)
            {
                lanknow2 += kn2.Value.ToString() + ",";
            }
        }
        lk2 = txtlan3.Text + "-" + lanknow2;
        foreach (ListItem kn3 in Know3.Items)
        {

            if (kn3.Selected)
            {
                lanknow3 += kn3.Value.ToString() + ",";
            }
        }
        lk3 = txtlan4.Text + "-" + lanknow3;

  int i= cp.insert(JobSeekerId.Text, RbLookingfor.SelectedValue, RbWorkType.SelectedValue, txtExpectedSalary.Text,lk1,lk2,lk3, txtJobType1.Text, txtJobType2.Text, txtJobType3.Text, ddlLocation1.SelectedValue, ddlLocation2.SelectedValue, ddlLocation3.SelectedValue);
       if (i>0)
       {
          
           Session["userid"] = JobSeekerId.Text;
           Session["name"] = JobSeekerName.Text;
           Response.Redirect("JobSeekerDetails.aspx");
   

       }
       else
       {
           Meesage.Text = "not succes";
       }
    }


    protected void ddlLocation1_DataBound(object sender, EventArgs e)
    {
        ddlLocation1.Items.Insert(0, "Select");
    }
    protected void ddlLocation2_DataBound(object sender, EventArgs e)
    {
        ddlLocation2.Items.Insert(0, "Select");
    }
    protected void ddlLocation3_DataBound(object sender, EventArgs e)
    {
        ddlLocation3.Items.Insert(0, "Select");
    }
}