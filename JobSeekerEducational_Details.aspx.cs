using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;




public partial class _Default : System.Web.UI.Page
{
    EducationInsert edu1 = new EducationInsert();

    string jobid;
    
   
    protected void Page_Load(object sender, EventArgs e)
    {
      
        // This is session part in this page

        jobid = Session["id"].ToString();
        if (jobid != "")
        {
            JobSeekerId.Text = jobid;
        }
        if (Session["Fname"].ToString() != "" && Session["lname"].ToString() != "")
        {
            if (Session["Gendr"].ToString() == "Male")
            {
                JobSeekerName.Text = "Mr.";
            }
            if (Session["Gendr"].ToString() == "Female")
            {
                JobSeekerName.Text = "Miss.";
            }
            //JobSeekerName.Text += " " + Convert.ToString(Session["Fname"]) + " " + Session["lname"].ToString();
            JobSeekerName.Text = JobSeekerName.Text + " " + Convert.ToString(Session["Fname"]) + " " + Session["lname"].ToString();


        }
 
        //For Year  Dropdowlist //
        if (!Page.IsPostBack)
        {
       int crntyear = System.DateTime.Now.Year;
       for (int i = 1985; i <= crntyear; i++)
            {
                ddl10Year.Items.Add(i.ToString());
                ddl12Year.Items.Add(i.ToString());
                ddlGraduationYear.Items.Add(i.ToString());
                ddlPgYear.Items.Add(i.ToString());
            }

            ddl10Year.Items.Insert(0, "Select");
            ddl12Year.Items.Insert(0, "Select");
            ddlPgYear.Items.Insert(0, "Select");
            ddlGraduationYear.Items.Insert(0,"Select");
            
           
        }
        txtpginstitutename.Visible= false;
        txtpgstatename.Visible = false;
        txtpguniversityname.Visible = false;
        txtgraduationbranch.Visible = false;
        txtgraduationInstitueName.Visible = false;
        txtgraduationstate.Visible = false;
        txtgraduationUniversity.Visible = false;
        if (ddlPgState.SelectedValue == "Other")
        {
            txtpgstatename.Visible = true;
        }

        }

    protected void ddleducationaldetail_SelectedIndexChanged(object sender, EventArgs e)
    {
       

        if (ddleducationaldetail.SelectedIndex == 1)
        {
            HighSchoolPanel.Visible = true;
            IntermidiatePanel.Visible = true;
            GraduationPanel.Visible = true;
            PGPanel1.Visible = true;
           
        }


        if (ddleducationaldetail.SelectedIndex == 2)
        {
            HighSchoolPanel.Visible = true;
            IntermidiatePanel.Visible = true;
            GraduationPanel.Visible = true;
            PGPanel1.Visible = true;
        
        }

        if (ddleducationaldetail.SelectedIndex == 3)
        {
            HighSchoolPanel.Visible = true;
            IntermidiatePanel.Visible = true;
            GraduationPanel.Visible = true;
            PGPanel1.Visible = false;
          
        }
        if (ddleducationaldetail.SelectedIndex == 4)
        {
            HighSchoolPanel.Visible = true;
            IntermidiatePanel.Visible = true;
            GraduationPanel.Visible = true;
            PGPanel1.Visible = false;
            
        }
        if (ddleducationaldetail.SelectedIndex == 5)
        {
            HighSchoolPanel.Visible = true;
            IntermidiatePanel.Visible = true;
            GraduationPanel.Visible = true;
            PGPanel1.Visible = false;
           
        }
        if (ddleducationaldetail.SelectedIndex == 0)
        {
            HighSchoolPanel.Visible = true;
            GraduationPanel.Visible = false;
            PGPanel1.Visible = false;
            IntermidiatePanel.Visible = false;
            }

     }

    // this code for only  all dropdown list  to create  "SELECT"  and  "Other" 
    protected void ddlpgcountry_DataBound(object sender, EventArgs e)
    {
        ddlpgcountry.Items.Insert(0, "Select");
        ddlpgcountry.Items.Add("Other");

    }
    protected void ddl10CountryName_DataBound(object sender, EventArgs e)
    {
        ddl10CountryName.Items.Insert(0, "Select");
        ddl10CountryName.Items.Add("Other");

    }
    protected void ddl12CountryNmae_DataBound(object sender, EventArgs e)
    {
        ddl12CountryNmae.Items.Insert(0, "Select");
        ddl12CountryNmae.Items.Add("Other");
    }

    protected void ddlGraduationState_DataBound(object sender, EventArgs e)
    {
        ddlGraduationState.Items.Add("Other");
    }
    protected void ddlpguniversity_DataBound(object sender, EventArgs e)
    {
        ddlpguniversity.Items.Add("Other");
    }
    protected void ddlpginstitutename_DataBound(object sender, EventArgs e)
    {
        ddlpginstitutename.Items.Add("Other");
    }

    protected void ddl10StateName_DataBound(object sender, EventArgs e)
    {
        ddl10StateName.Items.Add("Other");
    }

    protected void ddl12StateName_DataBound(object sender, EventArgs e)
    {
        ddl12StateName.Items.Add("Other");
    }
    protected void ddlPgCourse_DataBound(object sender, EventArgs e)
    {
        ddlPgCourse.Items.Insert(0, "Select");
        ddlPgCourse.Items.Add("Other");
    }
    protected void ddlPgBranch_DataBound(object sender, EventArgs e)
    {
        ddlPgBranch.Items.Add("Other");
    }
    protected void ddlGraduationInstituteName_DataBound(object sender, EventArgs e)
    {
        ddlGraduationInstituteName.Items.Add("Other");
    }
    protected void ddlGraduationUniversity_DataBound(object sender, EventArgs e)
    {
        ddlGraduationUniversity.Items.Add("Other");
    }
    protected void ddlPgState_DataBound(object sender, EventArgs e)
    {
        ddlPgState.Items.Add("Other");
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        bool chk = false;
       {
           Educational edu = new Educational();
           string favsub = (txtf1subject.Text + "," + txtf2subject.Text + "," + txtf3subject.Text);
          edu.Educationins(jobid, ddleducationaldetail.SelectedValue, RbEducationType.SelectedValue, ddlNoOfBack.SelectedValue, favsub);
          



           if (PGPanel1.Visible == true)
           {
               string pgpassout = ddlPgYear.SelectedValue + "," + ddlPgMonth.SelectedValue;
               string pgmarks = rbpgmarkstype.SelectedValue + "," + txtpgmarks.Text;
               edu1.EducationalDetails(jobid,"PG", ddlPgCourse.SelectedItem.Text, ddlPgBranch.SelectedValue, ddlpgcountry.SelectedItem.Text, ddlPgState.SelectedItem.Text, ddlpginstitutename.SelectedValue, ddlpguniversity.SelectedValue, pgpassout, pgmarks);
           }

           if (GraduationPanel.Visible == true)
           {
               string graduationpassout = ddlGraduationMonth.SelectedValue + "," + ddlGraduationYear.SelectedValue;
               string graduationMarks = Rbgraduationmarkstype.SelectedValue + "," + txtGraduationMark.Text;
               edu1.EducationalDetails(jobid,"Graduation",ddlGraduationCourse.SelectedItem.Text, ddlGraduationBranch.SelectedValue, ddlGraduationCountry.SelectedItem.Text, ddlGraduationState.SelectedItem.Text, ddlGraduationInstituteName.SelectedItem.Text, ddlGraduationUniversity.SelectedItem.Text, graduationpassout, graduationMarks);


           }

           if (IntermidiatePanel.Visible == true)
           {
               string qulification12 = "Twelth";
               string interPassout = ddl12Month.SelectedValue + "," + ddl12Year.SelectedValue;
               string TwelthMarks = rb12markstype.SelectedValue + "," + txt12Marks.Text;
               edu1.EducationalDetails(jobid,"Twelth", qulification12, ddl12Backgroundname.SelectedValue, ddl12CountryNmae.SelectedItem.Text, ddl12StateName.SelectedValue, txt12SchoolName.Text, txt12BoardName.Text, interPassout, TwelthMarks);


           }

           if (HighSchoolPanel.Visible == true)
           {
               string TenPassout = ddl10Month.SelectedValue + "," + ddl10Year.SelectedValue;
               string TenMarks = rbhighschoolmarkstype.SelectedValue + "," + txt10Marks.Text;
               string qulification10 = "Tenth";
               edu1.EducationalDetails(jobid,"Tenth", qulification10, ddl10Backgroundname.SelectedValue, ddl10CountryName.SelectedItem.Text, ddl10StateName.SelectedValue, txt10SchoolName.Text, txt10BoardName.Text, TenPassout, TenMarks);


           }
           chk = true;
           Session["Name"] =  JobSeekerName.Text;
           Session["ID"] = "" + jobid;
        
           Response.Redirect("JobSeekerCarrier_DetailMaster.aspx");
           if (chk == false)
           {
               Message.Text= "Data is not saved";
           }

       }

        }





    protected void ddl10Year_DataBound(object sender, EventArgs e)
    {
        ddl10Year.Items.Insert(0, "Select");
    }
    protected void ddl12Year_DataBound(object sender, EventArgs e)
    {
        ddl12Year.Items.Insert(0, "Select");
    }
    protected void ddlGraduationYear_DataBound(object sender, EventArgs e)
    {
       ddlGraduationYear.Items.Insert(0, "Select");
    }
    protected void ddlGraduationCourse_DataBound(object sender, EventArgs e)
    {
      ddlGraduationCourse.Items.Insert(0, "Select");
    }
    protected void ddlGraduationCountry_DataBound(object sender, EventArgs e)
    {
        ddlGraduationCountry.Items.Insert(0,"Select");
    }
    protected void ddlGraduationBranch_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddl12Backgroundname_DataBound(object sender, EventArgs e)
    {
        ddl12Backgroundname.Items.Insert(0, "Select");
    }
}