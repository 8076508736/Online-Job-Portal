using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class _Default : System.Web.UI.Page
{
    CarrierDetail cd = new CarrierDetail();
    SqlConnection con = new SqlConnection();
    SqlCommand com = new SqlCommand();
   SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    
    string Connection = ConfigurationManager.ConnectionStrings["kush"].ConnectionString;

    int crntyear = System.DateTime.Now.Year;
    protected void Page_Load(object sender, EventArgs e)
    {



        JobSeekerId.Text = "" + Session["ID"];
        JobSeekerName.Text = "" + Session["Name"];
        Session["id"] =  JobSeekerId.Text;
        Session["name"] =  JobSeekerName.Text;
    
        for (int i = 1975;  i <= crntyear; i++)
        {
            
            ddlTdfromYear.Items.Add(i.ToString());
            ddlTdToYear.Items.Add(i.ToString());
        }
        if (RbExperience.SelectedIndex == 0)
        {
            WorkExperiencePanel.Visible = true;
        }
        if (RbExperience.SelectedIndex == 1)
        {
            WorkExperiencePanel.Visible = false;
        }
       
        if (RbTraining.SelectedIndex == 0)
        {
            TrainingPanel.Visible = true;
        }
        if (RbTraining.SelectedIndex == 1)
        {
            TrainingPanel.Visible = false;
        }
        if (RbAcademic.SelectedIndex == 0)
        {
            AcademicPanel.Visible = true;
        }
        if (RbAcademic.SelectedIndex == 1)
        {
            AcademicPanel.Visible = false;
        }
        if (RbCompetative.SelectedIndex == 0)
        {
            CompetetiveExamPanel.Visible = true;
        }
        if (RbCompetative.SelectedIndex == 1)
        {
            CompetetiveExamPanel.Visible =false;
        }
       
       
            

        }


    string Project1 = "My Project Work";
    string Project2 = "My Academic Work";
   
    
  

    protected void Button1_Click(object sender, EventArgs e)
    {

        string durationto = ddlTdToMonth.SelectedValue + "-" + ddlTdToYear.SelectedValue;
        string durationfrom = ddlTdToMonth.SelectedValue + "-" + ddlTdToYear.SelectedValue;
       // string work_exp= ddlWEYearTo.SelectedValue+"Year"+ddlWEYearFrom.SelectedValue+"Month";
      cd.insert(JobSeekerId.Text, Project1, ddlProjectChoose.SelectedValue, txtProjectTitle.Text, txtProjectteammember.Text, txtProjectTechnicalSkill.Text, txtProjectDescription.Text, txtProjectRole.Text);
      if (AcademicPanel.Visible == true)
      {
          cd.insert(JobSeekerId.Text, Project2, ddlAcademicChoose.SelectedValue, txtAcademicTitle.Text, txtAcademicTeamMemeber.Text, txtAcademicTechnichalSkill.Text, txtAcedamicDescription.Text, txtAcadmicRole.Text);
      }
      if (WorkExperiencePanel.Visible == true)
      {
          con = new SqlConnection();
          con.ConnectionString = Connection;
          con.Open();
          cmd = new SqlCommand();
          cmd.CommandText = "insert into JobSeeker_WorkExp (UserId,WE_CompanyName,WE_ExpYearTo,WE_ExpYearFrom,WE_Industry,WE_Designation,WE_ProjectName,WE_KeySkills,WE_Description,WE_Role) Values('" + JobSeekerId.Text + "','" + txtWECompanyName.Text + "','" + ddlWEYearTo.SelectedValue + "','" + ddlWEYearFrom.SelectedValue + "','" + ddlWEIndustry.SelectedValue + "','" + txtWEDesignation.Text + "','" + txtWEProjectName.Text + "','" + txtWEKeySkills.Text + "','" + txtWEDescription.Text + "','" + txtWERole.Text + "')";
          cmd.Connection = con;
          cmd.ExecuteNonQuery();
         
          con.Close();
      }
      if (TrainingPanel.Visible == true)
      {
          con = new SqlConnection();
          con.ConnectionString = Connection;
          con.Open();
          cmd = new SqlCommand();
          cmd.CommandText = "insert into JobSeeker_TrainingDetails (UserId,Training_CourseName,Training_InstituteName,Training_DurationTo,Training_DurationFrom,Training_Details) Values('" + JobSeekerId.Text + "','" + txtTDCourseName.Text + "','" + txtTDInstitute.Text + "','" + durationto + "','" + durationfrom + "','" + txtTDDetails.Text + "')";
          cmd.Connection = con;
          cmd.ExecuteNonQuery();

          con.Close();
      }
      if (CompetetiveExamPanel.Visible == true)
      {
          con = new SqlConnection();
          con.ConnectionString = Connection;
          con.Open();
          cmd = new SqlCommand();
          cmd.CommandText = "insert into JobSeeker_CompetativeDetails (UserId,Competative_ExamName,Competative_ResultType,Competative_Marks) Values('" + JobSeekerId.Text + "','" + DdlComExam_Name.SelectedValue + "','" +RbExamType.SelectedValue + "','" + txtExamMarks.Text + "')";
          cmd.Connection = con;
          cmd.ExecuteNonQuery();

          con.Close();
      }
        
     
          
           Message.Text = "Success";
           Response.Redirect("JobSeekerCarrier_Preferences.aspx");
     

    }
   
}