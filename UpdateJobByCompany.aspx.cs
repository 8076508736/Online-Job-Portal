using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class UpdateJobByCompany : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
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
        con.ConnectionString = ConfigurationManager.ConnectionStrings["kush"].ConnectionString;
         SqlCommand com = new SqlCommand("select * from Company_JobDetails    where Company_JobId='" + txtJobId.Text + "'", con);
        con.Open();
        dr = com.ExecuteReader();
        if (dr.Read())
        {
            MyPanel.Visible = true;

            txtJobTitle.Text = "" + dr["Job_Title"];
            txtCompanyName.Text = "" + dr["Company_Name"];
            txtCompanyAddress.Text = dr["Company_Address"].ToString();
            txtFuncationalArea.Text = "" + dr["Job_FuncationalArea"];
            txtKeyword.Text = "" + dr["Job_KeyWord"];
            string[] salary =  dr["Job_Salary"].ToString().Split('-');
            ddlMinSalary.SelectedValue = "" + salary[0];
            ddlMaxSalary.SelectedValue = "" + salary[1];
            sal.Text = "" + salary[2];

            ddlLocation.SelectedValue = "" + dr["Job_Location"];
           string[] exp = dr["Job_Experiences"].ToString().Split('-');
            ddlExperiencesTo.SelectedValue = "" + exp[0];
            ddlExperiencesFrom.SelectedValue = "" + exp[1];
            RbShifting.SelectedValue = "" + dr["Job_Shifting"];
            txtEiligibility.Text = "" + dr["Job_Eiligibility"];
            txtJobPosition.Text = "" + dr["Job_Postion"];
            txtjobposteddate.Text = "" + dr["Job_PostedDate"];
            string[] date =  dr["Job_ToFromDate"].ToString().Split('-');
            txtdateto.Text = "" + date[0];
            txtdatefrom.Text = "" + date[1];
            string[] time =  dr["Job_Timing"].ToString().Split('-');
            ddlTimingto.SelectedValue = "" + time[0];
            ddlTimingfrom.SelectedValue = "" + time[1];

            
           

            string[] hiring =  dr["Job_HiringProcess"].ToString().Split(',');
           // string cb = "" + hiring[0];
          int i=0;
            foreach (ListItem li in CbHiringProcess.Items)
            {
                if (hiring[i]==li.Text )
                {
                    li.Selected = true;
                    i++;
                }
            }
          
            RbJobType.SelectedValue = "" + dr["Job_Type"];
            txtVacancy.Text = "" + dr["No_Of_Vacancy"];
            txtJobDescripation.Text = "" + dr["Job_Descripation"];
            txtjobstatus.Text = "" + dr["Job_Status"];
        }
        else
        {
            Message.Text = " There is no Job Details for this JobId";
        }
         

            con.Close();

    }
    string hiringpro;
    protected void BUpdate_Click(object sender, EventArgs e)
    {
        string salary = ddlMinSalary.SelectedValue.ToString() + "-" + ddlMaxSalary.SelectedValue.ToString() + "-" + "lakh per anum";
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
        con.ConnectionString = ConfigurationManager.ConnectionStrings["kush"].ConnectionString;
        SqlCommand ComExam = new SqlCommand("update Company_JobDetails  set Job_Title= '" + txtJobTitle.Text + "',Company_Name= '" + txtCompanyName.Text + "',Company_Address= '" + txtCompanyAddress.Text + "',Job_FuncationalArea= '" + txtFuncationalArea.Text + "',Job_Keyword= '" + txtKeyword.Text + "', Job_Salary='" + salary + "',Job_Location= '" + ddlLocation.SelectedValue + "',Job_Experiences= '" + txtJobTitle.Text + "',Job_Shifting= '" + RbShifting.SelectedValue + "',Job_Eiligibility= '" + txtEiligibility.Text + "',Job_Postion= '" + txtJobPosition.Text + "',Job_PostedDate= '" + txtjobposteddate.Text + "', Job_ToFromDate='" + date + "',Job_Timing= '" + timing + "',Job_HiringProcess= '" +hiringpro+ "',Job_Type= '" + RbJobType.SelectedValue + "',No_Of_Vacancy= '" + txtVacancy.Text + "', Job_Descripation='" + txtJobDescripation.Text + "',Job_Status= '" + txtjobstatus.Text+ "'where Company_JobId='" + txtJobId.Text + "'", con);
        con.Open();
        ComExam.ExecuteNonQuery();
        Message.Text = "Update Successfully ";
        con.Close();

    }
}