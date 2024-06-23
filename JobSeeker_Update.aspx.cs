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

       jobseekerid = "" + Session["UserId"];
       if (!Page.IsPostBack)
       {
           con.ConnectionString = ConfigurationManager.ConnectionStrings["kush"].ConnectionString;

          



           SqlCommand com = new SqlCommand("select * from JobSeeker_PersonalDetails     where UserId='" + jobseekerid + "'", con);
           con.Open();
           dr = com.ExecuteReader();
           if (dr.Read())
           {
               TextBox1.Text = "" + dr["FirstName"];
               TextBox2.Text = "" + dr["LastName"];
               TextBox3.Text = dr["Address_Of_Communication"].ToString();
               TextBox4.Text = "" + dr["PinCode"];
               TextBox5.Text = "" + dr["EmailId"];
               TextBox6.Text = "" + dr["DOB"];
               TextBox7.Text = "" + dr["Gender"];
               TextBox8.Text = "" + dr["MobileNo"];
               TextBox9.Text = "" + dr["Std_PhoneNo"];
               TextBox10.Text = "" + dr["Current_Residence_City"];
               con.Close();

               SqlCommand comm = new SqlCommand("select * from JobSeeker_Educational_Details where UserId='" + jobseekerid + "'", con);
               con.Open();
               dr1 = comm.ExecuteReader();
               if (dr1.Read())
               {

                   kush1 = "" + dr1["HighestQulification"];
                   if (kush1 != null)
                   {
                       Panel1.Visible = true;
                   }

                   TextBox11.Text = "" + dr1["HighestQulification"];

                   TextBox12.Text = "" + dr1["Type"];
                   TextBox13.Text = "" + dr1["No_Of_BackPaper"];
                   TextBox14.Text = "" + dr1["Favorite_Subject"];


               } con.Close();
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
                   TextBox15.Text = "" + pg["Course/Qulification"];
                   TextBox16.Text = "" + pg["BranchName"];
                   TextBox17.Text = "" + pg["CountryName"];
                   TextBox18.Text = "" + pg["StateName"];
                   TextBox19.Text = "" + pg["InstituteName"];
                   TextBox20.Text = "" + pg["UniversityName"];
                   TextBox21.Text = "" + pg["PassingYear"];
                   TextBox22.Text = "" + pg["TotalMarks"];



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
                   TextBox23.Text = "" + gra["Course/Qulification"];
                   TextBox24.Text = "" + gra["BranchName"];
                   TextBox25.Text = "" + gra["CountryName"];
                   TextBox26.Text = "" + gra["StateName"];
                   TextBox27.Text = "" + gra["InstituteName"];
                   TextBox28.Text = "" + gra["UniversityName"];
                   TextBox29.Text = "" + gra["PassingYear"];
                   TextBox30.Text = "" + gra["TotalMarks"];



               } con.Close();

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
                   TextBox31.Text = "" + twelth["Course/Qulification"];
                   TextBox32.Text = "" + twelth["BranchName"];
                   TextBox33.Text = "" + twelth["CountryName"];
                   TextBox34.Text = "" + twelth["StateName"];
                   TextBox35.Text = "" + twelth["InstituteName"];
                   TextBox36.Text = "" + twelth["UniversityName"];
                   TextBox37.Text = "" + twelth["PassingYear"];
                   TextBox38.Text = "" + twelth["TotalMarks"];



               } con.Close();
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
                   TextBox39.Text = "" + tenth["Course/Qulification"];
                   TextBox40.Text = "" + tenth["BranchName"];
                   TextBox41.Text = "" + tenth["CountryName"];
                   TextBox42.Text = "" + tenth["StateName"];
                   TextBox43.Text = "" + tenth["InstituteName"];
                   TextBox44.Text = "" + tenth["UniversityName"];
                   TextBox45.Text = "" + tenth["PassingYear"];
                   TextBox46.Text = "" + tenth["TotalMarks"];



               } con.Close();

               SqlCommand project = new SqlCommand("select * from JobSeeker_CarrierDetails  where UserId='" + jobseekerid + "' and Project_Type='" + "My Project Work" + "'", con);
               con.Open();
               pro = project.ExecuteReader();
               if (pro.Read())
               {
                   kush1 = "" + pro["Project_Type"];
                   if (kush1 != null)
                   {
                       MyProjectPanel.Visible = true;

                   }

                   TextBox47.Text = "" + pro["Project_Choose"];
                   TextBox48.Text = "" + pro["Project_Title"];
                   TextBox49.Text = "" + pro["Project_TeamMember"];
                   TextBox50.Text = "" + pro["Project_TechnicalSkill"];
                   TextBox51.Text = "" + pro["Project_Descripation"];
                   TextBox52.Text = "" + pro["Project_Role"];



               }
               con.Close();
               SqlCommand academic = new SqlCommand("select * from JobSeeker_CarrierDetails  where UserId='" + jobseekerid + "' and Project_Type='" + "My Academic Work" + "'", con);
               con.Open();
               aca = academic.ExecuteReader();
               if (aca.Read())
               {
                   kush1 = "" + aca["Project_Type"];
                   if (kush1 != null)
                   {
                       MyAcedamicPanel.Visible = true;

                   }

                   TextBox53.Text = "" + aca["Project_Choose"];
                   TextBox54.Text = "" + aca["Project_Title"];
                   TextBox55.Text = "" + aca["Project_TeamMember"];
                   TextBox56.Text = "" + aca["Project_TechnicalSkill"];
                   TextBox57.Text = "" + aca["Project_Descripation"];
                   TextBox58.Text = "" + aca["Project_Role"];


               } con.Close();
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

                   TextBox59.Text = "" + tra["Training_CourseName"];
                   TextBox60.Text = "" + tra["Training_InstituteName"];
                   TextBox61.Text = "" + tra["Training_DurationTo"];
                   TextBox62.Text = "" + tra["Training_DurationFrom"];
                   TextBox63.Text = "" + tra["Training_Details"];



               } con.Close();
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

                   TextBox64.Text = "" + exp["WE_CompanyName"];
                   //TextBox65.Text = "" + exp["WE_TotalExp"];
                   TextBox66.Text = "" + exp["WE_Industry"];
                   TextBox67.Text = "" + exp["WE_Designation"];
                   TextBox68.Text = "" + exp["WE_ProjectName"];
                   TextBox69.Text = "" + exp["WE_KeySkills"];
                   TextBox70.Text = "" + exp["WE_Description"];
                   TextBox71.Text = "" + exp["WE_Role"];




               } con.Close();
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

                   TextBox72.Text = "" + exam["Competative_ExamName"];
                   TextBox73.Text = "" + exam["Competative_ResultType"];
                   TextBox74.Text = "" + exam["Competative_Marks"];


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

                   TextBox75.Text = "" + pre["LookingFor"];
                   TextBox76.Text = "" + pre["WorkPreference"];
                   TextBox77.Text = "" + pre["Expected_MinSalary"];
                   string[] l1 = pre["Language1"].ToString().Split('-');
                   txtlan1.Text = "" + l1[0];
                   TextBox78.Text = "" + l1[1];
                   string[] l2 = pre["Language2"].ToString().Split('-');
                   txtlan2.Text = "" + l2[0];
                   TextBox79.Text = "" + l2[1];
                   string[] l3 = pre["Language3"].ToString().Split('-');
                   txtlan3.Text = "" + l3[0];
                   TextBox80.Text = "" + l3[1];

                   //TextBox79.Text = "" + pre["Language2"];
                   //TextBox80.Text = "" + pre["Language3"];
                   TextBox81.Text = "" + pre["Job_Type1"];
                   TextBox82.Text = "" + pre["Job_Type2"];
                   TextBox83.Text = "" + pre["Job_Type3"];
                   TextBox84.Text = "" + pre["Job_Location1"];
                   TextBox85.Text = "" + pre["Job_Location2"];
                   TextBox86.Text = "" + pre["Job_Location3"];



               } con.Close();
           }
       }
   }

     
    



  
  

  
    protected void Bedu_Click(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["kush"].ConnectionString;
        SqlCommand comm = new SqlCommand("update JobSeeker_Educational_Details set HighestQulification= '" + TextBox11.Text + "',Type= '" + TextBox12.Text + "',No_Of_BackPaper= '" + TextBox13.Text + "',Favorite_Subject= '" + TextBox14.Text + "' where UserId='" + jobseekerid + "'", con);
        con.Open();
        comm.ExecuteNonQuery();
        con.Close();
        Message1.Text = "Update Successfully";
      
    }
    protected void editPg_Click(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["kush"].ConnectionString;
        SqlCommand cpg = new SqlCommand("update JobSeeker_EducationalDetails set [Course/Qulification]= '" + TextBox15.Text + "',BranchName= '" + TextBox16.Text + "',CountryName= '" + TextBox17.Text + "',StateName= '" + TextBox18.Text + "',InstituteName= '" + TextBox19.Text + "',UniversityName= '" + TextBox20.Text + "',PassingYear= '" + TextBox21.Text + "',TotalMarks= '" + TextBox22.Text + "'  where UserId='" + jobseekerid + "' and Type='" + "PG" + "'", con);
        con.Open();
        cpg.ExecuteNonQuery();
        con.Close();
        Message2.Text = "Update Successfully";

    }
    protected void Upadate_Click(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["kush"].ConnectionString;
        SqlCommand cgra = new SqlCommand("update JobSeeker_EducationalDetails set [Course/Qulification]= '" + TextBox23.Text + "',BranchName= '" + TextBox24.Text + "',CountryName= '" + TextBox25.Text + "',StateName= '" + TextBox26.Text + "',InstituteName= '" + TextBox27.Text + "',UniversityName= '" + TextBox28.Text + "',PassingYear= '" + TextBox29.Text + "',TotalMarks= '" + TextBox30.Text + "'  where UserId='" + jobseekerid + "' and Type='" + "Graduation" + "'", con);
        con.Open();
        cgra.ExecuteNonQuery();
        con.Close();
        Message3.Text = "Update Successfully";
    }
    protected void Update12_Click(object sender, EventArgs e)
    {

        con.ConnectionString = ConfigurationManager.ConnectionStrings["kush"].ConnectionString;
        SqlCommand c12 = new SqlCommand("update JobSeeker_EducationalDetails set [Course/Qulification]= '" + TextBox31.Text + "',BranchName= '" + TextBox32.Text + "',CountryName= '" + TextBox33.Text + "',StateName= '" + TextBox34.Text + "',InstituteName= '" + TextBox35.Text + "',UniversityName= '" + TextBox36.Text + "',PassingYear= '" + TextBox37.Text + "',TotalMarks= '" + TextBox38.Text + "'  where UserId='" + jobseekerid + "' and Type='" + "Twelth" + "'", con);
        con.Open();
        c12.ExecuteNonQuery();
        con.Close();
        Message4.Text = "Update Successfully";
    }
    protected void B10UPDATE_Click(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["kush"].ConnectionString;
        SqlCommand c10 = new SqlCommand("update JobSeeker_EducationalDetails set [Course/Qulification]= '" + TextBox39.Text + "',BranchName= '" + TextBox40.Text + "',CountryName= '" + TextBox41.Text + "',StateName= '" + TextBox42.Text + "',InstituteName= '" + TextBox43.Text + "',UniversityName= '" + TextBox44.Text + "',PassingYear= '" + TextBox45.Text + "',TotalMarks= '" + TextBox46.Text + "'  where UserId='" + jobseekerid + "' and Type='" + "Tenth" + "'", con);
        con.Open();
        c10.ExecuteNonQuery();
        con.Close();
        Message5.Text = "Update Successfully";
    }
    protected void UPDATEProject_Click(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["kush"].ConnectionString;
        SqlCommand project = new SqlCommand("update  JobSeeker_CarrierDetails set Project_Choose= '" + TextBox47.Text + "',Project_Title= '" + TextBox48.Text + "',Project_TeamMember= '" + TextBox49.Text + "',Project_TechnicalSkill= '" + TextBox50.Text + "',Project_Descripation= '" + TextBox51.Text + "',Project_Role= '" + TextBox52.Text + "' where UserId='" + jobseekerid + "' and Project_Type='" + "My Project Work" + "'", con);
        con.Open();
        project.ExecuteNonQuery();
       con.Close();
       Message6.Text = "Update Successfully";
    }
    protected void Academic_Click(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["kush"].ConnectionString;
        SqlCommand aca = new SqlCommand("update  JobSeeker_CarrierDetails set Project_Choose= '" + TextBox53.Text + "',Project_Title= '" + TextBox54.Text + "',Project_TeamMember= '" + TextBox55.Text + "',Project_TechnicalSkill= '" + TextBox56.Text + "',Project_Descripation= '" + TextBox57.Text + "',Project_Role= '" + TextBox58.Text + "' where UserId='" + jobseekerid + "' and Project_Type='" + "My Academic Work" + "'", con);
        con.Open();
        aca.ExecuteNonQuery();
        con.Close();
        Message7.Text = "Update Successfully";
    }
    protected void Btraining_Click(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["kush"].ConnectionString;
        SqlCommand training = new SqlCommand("update JobSeeker_TrainingDetails set Training_CourseName= '" + TextBox59.Text + "',Training_InstituteName= '" + TextBox60.Text + "',Training_DurationTo= '" + TextBox61.Text + "',Training_DurationFrom= '" + TextBox62.Text + "',Training_Details= '" + TextBox63.Text + "' where UserId='" + jobseekerid + "'", con);
        con.Open();
        training.ExecuteNonQuery();
        con.Close();
        Message8.Text = "Update Successfully";
  } 
    
    protected void BWork_Click(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["kush"].ConnectionString;
        SqlCommand workexp = new SqlCommand("update  JobSeeker_WorkExp set WE_CompanyName= '" + TextBox64.Text + "',WE_TotalExp= '" + TextBox65.Text + "',WE_Industry= '" + TextBox66.Text + "',WE_Designation= '" + TextBox67.Text + "',WE_ProjectName= '" + TextBox68.Text + "',WE_KeySkills= '" + TextBox69.Text + "',WE_Description= '" + TextBox70.Text + "',WE_Role= '" + TextBox71.Text + "'  where UserId='" + jobseekerid + "'", con);
        con.Open();
        workexp.ExecuteNonQuery();
       con.Close();
       Message9.Text = "Update Successfully";
    }
    protected void bCompetative_Click(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["kush"].ConnectionString;
        SqlCommand ComExam = new SqlCommand("update JobSeeker_CompetativeDetails  set Competative_ExamName= '" + TextBox72.Text + "',Competative_ResultType= '" + TextBox73.Text + "',Competative_Marks= '" + TextBox74.Text + "' where UserId='" + jobseekerid + "'", con);
        con.Open();
        ComExam.ExecuteNonQuery();
        con.Close();
      
    }
    protected void BCarrierPreference_Click(object sender, EventArgs e)
    {
        string lan1, lan2, lan3;
        lan1=txtlan1.Text +"-"+ TextBox78.Text;
        lan2=txtlan2.Text+"-"+TextBox79.Text;
        lan3=txtlan2.Text+"-"+TextBox80.Text;
        con.ConnectionString = ConfigurationManager.ConnectionStrings["kush"].ConnectionString;
        SqlCommand preference = new SqlCommand("update JobSeeker_CarrierPreference set LookingFor= '" + TextBox75.Text + "',WorkPreference= '" + TextBox76.Text + "',Expected_MinSalary= '" + TextBox77.Text + "',Language1= '" + lan1 + "',Language2= '" + lan2 + "',Language3= '" + lan3 + "',Job_Type1= '" + TextBox81.Text + "',Job_Type2= '" + TextBox82.Text + "',Job_Type3= '" + TextBox83.Text + "',Job_Location1= '" + TextBox84.Text + "',Job_Location2= '" + TextBox85.Text + "',Job_Location3= '" + TextBox86.Text + "'where UserId='" + jobseekerid + "'", con);
        con.Open();
        preference.ExecuteNonQuery();
        con.Close();
        Message11.Text = "Updated";
     

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.ConnectionStrings["kush"].ConnectionString;
        SqlCommand cmd = new SqlCommand("update JobSeeker_PersonalDetails set FirstName= '" + TextBox1.Text + "',LastName= '" + TextBox2.Text + "',EmailId= '" + TextBox3.Text + "',DOB= '" + TextBox4.Text + "',Gender= '" + TextBox5.Text + "',Address_Of_Communication= '" + TextBox6.Text + "',PinCode= '" + TextBox7.Text + "',MobileNo= '" + TextBox8.Text + "',Std_PhoneNo= '" + TextBox9.Text + "',Current_Residence_City= '" + TextBox10.Text + "' where UserId= '" + jobseekerid + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        Message.Text = "Update Successfully";
    }
}
