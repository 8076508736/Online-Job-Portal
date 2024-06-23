using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class JobSeekerDetails : System.Web.UI.Page
{


    SqlConnection con = new SqlConnection();
    SqlDataReader dr, pg, dr1, gra, twelth, tenth,pro,aca,tra,exp,exam,pre;
    string kush1;
    string jobseekerid ;

   
   
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["kush"].ConnectionString;

         jobseekerid = "" + Session["userid"];
      
        
      
        SqlCommand com = new SqlCommand("select * from JobSeeker_PersonalDetails where UserId='" + jobseekerid + "'", con);
        con.Open();
        dr = com.ExecuteReader();
        if (dr.Read())
        {
            Label26.Text ="" + dr["FirstName"];
            Label60.Text = "" + dr["LastName"];
            Label61.Text = dr["Address_Of_Communication"].ToString();
            Label63.Text = "" + dr["PinCode"];
            Label27.Text = "" + dr["EmailId"];
            Label28.Text = "" + dr["DOB"];
            Label29.Text = "" + dr["Gender"];
            Label31.Text = "" + dr["MobileNo"];
            Label32.Text = "" + dr["Std_PhoneNo"];
            Label33.Text = "" + dr["Current_Residence_City"];
            con.Close();

            SqlCommand comm = new SqlCommand("select * from JobSeeker_Educational_Details where UserId='" + jobseekerid + "'", con);
            con.Open();
            dr1 = comm.ExecuteReader();
            if (dr1.Read())
            {
            
                    kush1="" + dr1["HighestQulification"];
                    if(kush1 !=null)
                    {
                     Panel1.Visible =true;
                    }
                Label43.Text = "" + dr1["HighestQulification"];

                      Label42.Text = "" + dr1["Type"];
                          Label41.Text = "" + dr1["No_Of_BackPaper"];
                          Label40.Text = "" + dr1["Favorite_Subject"];
                        

            }  con.Close();
            SqlCommand cpg = new SqlCommand("select * from JobSeeker_EducationalDetails  where UserId='" + jobseekerid + "' and Type='" + "PG" + "'", con);
            con.Open();
            pg = cpg.ExecuteReader();
            if (pg.Read())
            {
                kush1 = "" + pg["Type"];
                if (kush1 != null)
                {
                    PgPanel.Visible = true;
                   
                }
                Label52.Text = "" + pg["Course/Qulification"];
                Label53.Text = "" + pg["BranchName"];
                Label54.Text = "" + pg["CountryName"];
                Label55.Text = "" + pg["StateName"];
                Label56.Text = "" + pg["InstituteName"];
                Label57.Text = "" + pg["UniversityName"];
                Label58.Text = "" + pg["PassingYear"];
                Label64.Text = "" + pg["TotalMarks"];
               
               

            } con.Close();

            SqlCommand cg = new SqlCommand("select * from JobSeeker_EducationalDetails  where UserId='" + jobseekerid + "' and Type='" + "Graduation" + "'", con);
            con.Open();
            gra = cg.ExecuteReader();
            if (gra.Read())
            {
                kush1 = "" + gra["Type"];
                if (kush1 != null)
                {   
                    GraduationPanel.Visible = true;

                }
                Label68.Text = "" + gra["Course/Qulification"];
                Label70.Text = "" + gra["BranchName"];
                Label72.Text = "" + gra["CountryName"];
                Label74.Text = "" + gra["StateName"];
                Label76.Text = "" + gra["InstituteName"];
                Label78.Text = "" + gra["UniversityName"];
                Label80.Text = "" + gra["PassingYear"];
                Label82.Text = "" + gra["TotalMarks"];

                

            }con.Close();

            SqlCommand twel = new SqlCommand("select * from JobSeeker_EducationalDetails  where UserId='" + jobseekerid + "' and Type='" + "Twelth" + "'", con);
            con.Open();
            twelth = twel.ExecuteReader();
            if (twelth.Read())
            {
                kush1 = "" + twelth["Type"];
                if (kush1 != null)
                {
                    Panel12th.Visible = true;

                }
                Label85.Text = "" + twelth["Course/Qulification"];
                Label87.Text = "" + twelth["BranchName"];
                Label89.Text = "" + twelth["CountryName"];
                Label91.Text = "" + twelth["StateName"];
                Label93.Text = "" + twelth["InstituteName"];
                Label95.Text = "" + twelth["UniversityName"];
                Label97.Text = "" + twelth["PassingYear"];
                Label99.Text = "" + twelth["TotalMarks"];

                

            }con.Close();
            SqlCommand ten = new SqlCommand("select * from JobSeeker_EducationalDetails  where UserId='" + jobseekerid + "' and Type='" + "Tenth" + "'", con);
            con.Open();
            tenth = ten.ExecuteReader();
            if (tenth.Read())
            {
                kush1 = "" + tenth["Type"];
                if (kush1 != null)
                {
                    Panel10th.Visible = true;

                }
                Label102.Text = "" + tenth["Course/Qulification"];
                Label104.Text = "" + tenth["BranchName"];
                Label106.Text = "" + tenth["CountryName"];
                Label108.Text = "" + tenth["StateName"];
                Label110.Text = "" + tenth["InstituteName"];
                Label112.Text = "" + tenth["UniversityName"];
                Label114.Text = "" + tenth["PassingYear"];
                Label116.Text = "" + tenth["TotalMarks"];

                

            }con.Close();

            SqlCommand project = new SqlCommand("select * from JobSeeker_CarrierDetails  where UserId='" + jobseekerid + "' and Project_Type='" + "My Project Work" + "'", con);
            con.Open();
            pro = project.ExecuteReader();
            if (pro.Read())
            {
                kush1 = "" +pro["Project_Type"];
                if (kush1 != null)
                {
                    MyProjectPanel.Visible = true;

                }
                
                Label121.Text = "" + pro["Project_Choose"];
                Label123.Text = "" + pro["Project_Title"];
                Label125.Text = "" + pro["Project_TeamMember"];
                Label127.Text = "" + pro["Project_TechnicalSkill"];
                Label129.Text = "" + pro["Project_Descripation"];
                Label131.Text = "" + pro["Project_Role"];

                

            }con.Close();
            SqlCommand academic = new SqlCommand("select * from JobSeeker_CarrierDetails  where UserId='" + jobseekerid + "' and Project_Type='" + "My Academic Work" + "'", con);
            con.Open();
             aca= academic.ExecuteReader();
            if (aca.Read())
            {
                kush1 = "" + aca["Project_Type"];
                if (kush1 != null)
                {
                    MyAcedamicPanel.Visible = true;

                }

                Label134.Text = "" + aca["Project_Choose"];
                Label136.Text = "" + aca["Project_Title"];
                Label138.Text = "" + aca["Project_TeamMember"];
                Label140.Text = "" + aca["Project_TechnicalSkill"];
                Label142.Text = "" + aca["Project_Descripation"];
                Label144.Text = "" + aca["Project_Role"];

              
            }  con.Close();
            SqlCommand training = new SqlCommand("select * from JobSeeker_TrainingDetails  where UserId='" + jobseekerid + "'", con);
            con.Open();
            tra = training.ExecuteReader();
            if (tra.Read())
            {
                kush1 = "" + tra["Training_CourseName"];
                if (kush1 != null)
                {
                    MyTrainingPanel.Visible = true;

                }

                Label149.Text = "" + tra["Training_CourseName"];
                Label151.Text = "" + tra["Training_InstituteName"];
                Label153.Text = "" + tra["Training_DurationTo"];
                Label155.Text = "" + tra["Training_DurationFrom"];
                Label157.Text = "" + tra["Training_Details"];
              

                
            }con.Close();
            SqlCommand workexp = new SqlCommand("select * from JobSeeker_WorkExp  where UserId='" + jobseekerid + "'", con);
            con.Open();
            exp = workexp.ExecuteReader();
            if (exp.Read())
            {
                kush1 = "" + exp["WE_CompanyName"];
                if (kush1 != null)
                {
                    MyWorkExpPanel.Visible = true;

                }

                Label161.Text = "" + exp["WE_CompanyName"];
                string totalexp = "" + exp["WE_ExpYearTo"] + " from " + exp["WE_ExpYearFrom"];
                Label163.Text = totalexp;
                Label165.Text = "" + exp["WE_Industry"];
                Label167.Text = "" + exp["WE_Designation"];
                Label169.Text = "" + exp["WE_ProjectName"];
                Label171.Text = "" + exp["WE_KeySkills"];
                Label174.Text = "" + exp["WE_Description"];
                Label175.Text = "" + exp["WE_Role"];
               


              
            }  con.Close();
            SqlCommand ComExam = new SqlCommand("select * from JobSeeker_CompetativeDetails  where UserId='" + jobseekerid + "'", con);
            con.Open();
            exam = ComExam.ExecuteReader();
            if (exam.Read())
            {
                kush1 = "" + exam["Competative_ExamName"];
                if (kush1 != null)
                {
                  CompetativePanel.Visible = true;

                }

                Label180.Text = "" + exam["Competative_ExamName"];
                Label181.Text = "" + exam["Competative_ResultType"];
                Label182.Text = "" + exam["Competative_Marks"];


            } con.Close();
            SqlCommand preference = new SqlCommand("select * from JobSeeker_CarrierPreference  where UserId='" + jobseekerid + "'", con);
            con.Open();
            pre = preference.ExecuteReader();
            if (pre.Read())
            {
                kush1 = "" + pre["LookingFor"];
                if (kush1 != null)
                {
                    CarrierPrefercencePanel.Visible = true;

                }

                Label196.Text = "" + pre["LookingFor"];
                Label197.Text = "" + pre["WorkPreference"];
                Label198.Text = "" + pre["Expected_MinSalary"];
                string[] l1 = pre["Language1"].ToString().Split('-');
                Label186.Text = "" + l1[0];
                Label199.Text = "" + l1[1];
                string[] l2 = pre["Language2"].ToString().Split('-');
                Label187.Text = "" + l2[0];
                Label200.Text = "" + l2[1];
                string[] l3 = pre["Language3"].ToString().Split('-');
                Label188.Text = "" + l3[0];
                Label201.Text = "" + l3[1];
   
                Label202.Text = "" + pre["Job_Type1"];
                Label203.Text = "" + pre["Job_Type2"];
                Label204.Text = "" + pre["Job_Type3"];
                Label205.Text = "" + pre["Job_Location1"];
                Label206.Text = "" + pre["Job_Location2"];
                
                //Text = "" + pre["Job_Location3"];

            } con.Close();
        }
       

     
    }
    

   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Session["UserId"] = jobseekerid;
        Response.Redirect("JobSeeker_Update.aspx");
    }
}