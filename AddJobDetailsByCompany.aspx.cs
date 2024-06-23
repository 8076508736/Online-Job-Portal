using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;


public partial class _Default : System.Web.UI.Page
{
   
    DateTime d1 = System.DateTime.Now;
    CompanyJobInsert comins = new CompanyJobInsert();
    string hiringpro;
    protected void Page_Load(object sender, EventArgs e)
    {
        CompanyId.Text= "" + Session["userid"];
      
        txtjobposteddate.Text = "" + System.DateTime.Now.ToShortDateString();
        

        if (!Page.IsPostBack)
        {
            for (int i = 1; i <= 50; i++)
            {
                ddlMaxSalary.Items.Add(i.ToString());
                ddlMinSalary.Items.Add(i.ToString());
             }

            ddlMaxSalary.Items.Insert(0, "Select");
            ddlMinSalary.Items.Insert(0, "Select");
       }



    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
            string salary = ddlMinSalary.SelectedValue.ToString() +"-"+ ddlMaxSalary.SelectedValue.ToString()+"-"+"lakh per anum";
            string date = txtdateto.Text.ToString() + "-" + txtdatefrom.Text.ToString();
            string timing = ddlTimingfrom.SelectedValue.ToString() + "-" + ddlTimingto.SelectedValue.ToString();
           string experience = ddlExperiencesTo.SelectedValue + "-" + ddlExperiencesFrom.SelectedValue;
            foreach (ListItem li in CbHiringProcess.Items)
            {
                if (li.Selected)
                {
                    hiringpro += li.Value.ToString() + ",";
                }
            }
            Random rr = new Random();
          
            string CompanyJobID = d1.Day.ToString() + d1.Month.ToString() + d1.Year.ToString() + ddlCompanyName.SelectedValue.Substring(0,3) + rr.Next(1, 100).ToString();
            int i = comins.JobInsert(CompanyJobID,txtJobTitle.Text, ddlCompanyName.SelectedValue, txtCompanyAddress.Text, ddlFuncationArea.SelectedValue, txtKeyword.Text, salary, ddlLocation.SelectedValue, experience, RbShifting.SelectedValue, txtEiligibility.Text,txtJobPosition.Text, txtjobposteddate.Text, date, timing, hiringpro, RbJobType.SelectedValue, txtVacancy.Text, txtJobDescripation.Text, txtjobstatus.Text);
            if (i > 0)

                Message.Text = "Data Inserted";
            else

                Message.Text = "Data not saved";
            GridView1.DataBind();
     
    }

    protected void ddlFuncationArea_DataBound(object sender, EventArgs e)
    {
        ddlFuncationArea.Items.Insert(0, "Select");

    }

   
    protected void ddlCompanyName_DataBound(object sender, EventArgs e)
    {
        ddlCompanyName.Items.Insert(0, "Select");
    }
   
    protected void ddlLocation_DataBound(object sender, EventArgs e)
    {
        ddlLocation.Items.Insert(0, "Select");
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {

    }
}