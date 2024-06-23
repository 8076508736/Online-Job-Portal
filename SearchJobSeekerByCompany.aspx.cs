using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Data;

public partial class SearchJobSeekerByCompany : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection();
    SqlCommand com = new SqlCommand();
    SqlDataReader dr;
    string userid;
    string Comid;




    protected void Page_Load(object sender, EventArgs e)
    {
        CompanyId.Text = "" + Session["comid"];
        con.ConnectionString = ConfigurationManager.ConnectionStrings["kush"].ConnectionString;
        Comid = CompanyId.Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //if (txtQulification.Text != null)
        //{
        //    con.ConnectionString = ConfigurationManager.ConnectionStrings["kush"].ConnectionString;
        //    com.Connection = con;
        //    string  qry = "select * from JobSeeker_EducationalDetails where [Course/Qulification]='" + txtQulification.Text + "'  ";
        //    SqlDataAdapter da = new SqlDataAdapter(qry, con);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);
        //    GridView1.DataSource = ds.Tables[0];
        //    GridView1.DataBind();

        //}


        
        com.Connection = con;
        if (txtQulification.Text != "" && txttechnology.Text == "" && ddlWEYearTo.SelectedIndex == 0 && ddlWEYearFrom.SelectedIndex == 0)
        {

            //com.CommandText = "select UserId,[Course/Qulification],BranchName,InstituteName,UniversityName,CountryName from JobSeeker_EducationalDetails where [Course/Qulification]='" + txtQulification.Text + "'  ";
            com.CommandText = "SELECT jw.WE_KeySkills as KeySkill, jw.WE_ExpYearTo as ExpTO,jw.WE_ExpYearFrom AS ExpFrom, jw.WE_CompanyName as CompanyName , jp.EmailId,jp.UserId,jp.FirstName+' '+ jp.LastName as Name,je.[Course/Qulification] FROM JobSeeker_EducationalDetails  je INNER JOIN JobSeeker_PersonalDetails jp ON je.UserId = jp.UserId INNER JOIN JobSeeker_WorkExp jw ON je.UserId = jw.UserId where je.[Course/Qulification] LIKE '%" + txtQulification.Text + "%'";
            con.Open();
            SqlDataReader dr = com.ExecuteReader();
            if (dr.HasRows)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
                dr.Close();

            }


            con.Close();
        }
        //con.Close();


        if (txttechnology.Text != "" && ddlWEYearTo.SelectedIndex == 0 && ddlWEYearFrom.SelectedIndex == 0 && txtQulification.Text == "")
        {

            //com.CommandText = "select UserId,WE_CompanyName,WE_ExpYearTo,WE_ExpYearFrom,WE_Industry,WE_KeySkills from JobSeeker_WorkExp WHERE WE_KeySkills LIKE '%" + txttechnology.Text + "%'";
            com.CommandText = "SELECT jwe.WE_KeySkills as KeySkill, jwe.WE_ExpYearTo as ExpTo, jwe.WE_ExpYearFrom as ExpFrom, jwe.WE_CompanyName as CompanyName, jpd.EmailId, jpd.UserId, jpd.FirstName+''+ jpd.LastName as Name, jpd.MobileNo FROM  JobSeeker_PersonalDetails as jpd INNER JOIN JobSeeker_WorkExp as jwe ON jpd.UserId = jwe.UserId where jwe.WE_KeySkills LIKE '%" + txttechnology.Text + "%'  ";
            con.Open();
            SqlDataReader dr1 = com.ExecuteReader();
            if (dr1.HasRows)
            {
                GridView1.DataSource = dr1;
                GridView1.DataBind();
                dr1.Close();

            }
            con.Close();

        }
        //if (ddlWEYearTo.SelectedIndex != 0 && ddlWEYearFrom.SelectedIndex == 0 && txtQulification.Text == "" && txttechnology.Text == "")
        //{
        //    com.CommandText = "select * from JobSeeker_WorkExp WHERE WE_ExpYearTo = '" + ddlWEYearTo.SelectedValue + "'";
        //    con.Open();
        //    SqlDataReader dr1 = com.ExecuteReader();
        //    if (dr1.Read())
        //    {
        //        GridView1.DataSource = dr1;
        //        GridView1.DataBind();
        //        dr1.Close();

        //    }
        //    con.Close();

        //}
        //if (ddlWEYearFrom.SelectedIndex != 0 && ddlWEYearTo.SelectedIndex == 0 && txtQulification.Text == "" && txttechnology.Text == "")
        //{
        //    com.CommandText = "select * from JobSeeker_WorkExp WHERE WE_ExpYearFrom = '" + ddlWEYearFrom.SelectedValue + "'";
        //    con.Open();
        //    SqlDataReader dr1 = com.ExecuteReader();
        //    if (dr1.Read())
        //    {
        //        GridView1.DataSource = dr1;
        //        GridView1.DataBind();
        //        dr1.Close();

        //    }
        //    con.Close();

        //}
        if (ddlWEYearTo.SelectedIndex != 0 && ddlWEYearFrom.SelectedIndex != 0 && txtQulification.Text == "" && txttechnology.Text == "")
        {
            //com.CommandText = "select UserId,WE_CompanyName,WE_ExpYearTo,WE_ExpYearFrom,WE_Industry,WE_KeySkills from JobSeeker_WorkExp WHERE WE_ExpYearTo = '" + ddlWEYearTo.SelectedValue + "' and WE_ExpYearFrom='" + ddlWEYearFrom.SelectedValue + "'";
            com.CommandText = "SELECT jwe.WE_KeySkills as KeySkill, jwe.WE_ExpYearTo as ExpTo, jwe.WE_ExpYearFrom as ExpFrom, jwe.WE_CompanyName as CompanyName, jpd.EmailId, jpd.UserId, jpd.FirstName+''+ jpd.LastName as Name, jpd.MobileNo FROM  JobSeeker_PersonalDetails as jpd INNER JOIN JobSeeker_WorkExp as jwe ON jpd.UserId = jwe.UserId where (jwe.WE_ExpYearTo LIKE '%" + ddlWEYearTo.SelectedValue + "%' and   jwe.WE_ExpYearFrom LIKE '%" + ddlWEYearFrom.SelectedValue + "%') ";

            con.Open();
            SqlDataReader dr1 = com.ExecuteReader();
            if (dr1.HasRows)
            {
                GridView1.DataSource = dr1;
                GridView1.DataBind();
                dr1.Close();

            }
            con.Close();

        }
        if (txtQulification.Text != "" && txttechnology.Text != "" && ddlWEYearFrom.SelectedIndex != 0 && ddlWEYearTo.SelectedIndex != 0)
        {
            // com.CommandText = "SELECT JobSeeker_WorkExp.WE_KeySkills, JobSeeker_WorkExp.WE_ExpYearTo,JobSeeker_WorkExp.WE_ExpYearFrom, JobSeeker_WorkExp.WE_CompanyName, JobSeeker_PersonalDetails.UserId,JobSeeker_PersonalDetails.FirstName+' '+ JobSeeker_PersonalDetails.LastName as Name,JobSeeker_EducationalDetails.[Course/Qulification] FROM   JobSeeker_EducationalDetails INNER JOIN JobSeeker_PersonalDetails ON JobSeeker_EducationalDetails.UserId = JobSeeker_PersonalDetails.UserId INNER JOIN JobSeeker_WorkExp ON JobSeeker_EducationalDetails.UserId = JobSeeker_WorkExp.UserId where JobSeeker_EducationalDetails.[Course/Qulification] LIKE '%"+txtQulification.Text +"%' and (JobSeeker_WorkExp.WE_ExpYearTo LIKE '%"+ddlWEYearTo.SelectedValue+"%' and   JobSeeker_WorkExp.WE_ExpYearFrom LIKE '%"+ddlWEYearFrom.SelectedValue+"%')  and JobSeeker_WorkExp.WE_KeySkills LIKE '%"+txttechnology.Text+"%'";
            com.CommandText = "SELECT jw.WE_KeySkills as KeySkill, jw.WE_ExpYearTo as Exp_To,jw.WE_ExpYearFrom as Exp_From, jw.WE_CompanyName as CompanyName, jp.EmailId,jp.UserId,jp.FirstName+' '+ jp.LastName as Name,je.[Course/Qulification] as Qulification FROM JobSeeker_EducationalDetails  je INNER JOIN JobSeeker_PersonalDetails jp ON je.UserId = jp.UserId INNER JOIN JobSeeker_WorkExp jw ON je.UserId = jw.UserId where je.[Course/Qulification]  LIKE '%" + txtQulification.Text + "%' and (jw.WE_ExpYearTo LIKE '%" + ddlWEYearTo.SelectedValue + "%' and   jw.WE_ExpYearFrom LIKE '%" + ddlWEYearFrom.SelectedValue + "%')  and jw.WE_KeySkills LIKE '%" + txttechnology.Text + "%'  ";

            con.Open();
            SqlDataReader dr1 = com.ExecuteReader();
            if (dr1.HasRows)
            {
                GridView1.DataSource = dr1;
                GridView1.DataBind();
                dr1.Close();

            }
            con.Close();

        }


    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       Session["userid"] = GridView1.SelectedRow.Cells[7].Text;
    
        Session["comid"] = Comid;
       
        Response.Redirect("StudentDetails.aspx");

        // Response.Redirect("StudentDetails.aspx?userid=" + GridView1.SelectedRow.Cells[1].Text);

    }
    protected void chkall_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox chkall = (CheckBox)sender;
        if (chkall.Checked)
        {

            foreach (GridViewRow grv in GridView1.Rows)
            {
                ((CheckBox)grv.Cells[1].Controls[1]).Checked = true;
            }
        }
        else
        {
            foreach (GridViewRow grv in GridView1.Rows)
            {
                ((CheckBox)grv.Cells[1].Controls[1]).Checked = false;
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {


        //foreach (GridViewRow grv in GridView1.Rows)
        //{
        //    if (((CheckBox)grv.Cells[1].Controls[1]).Checked)
        //    {

        //       emailid += grv.Cells[6].Text + ",";
        //    }
        //    MailSender.SendEmail("kushkrtiwari.com", "9415890163", emailid, "Hello", "Hi............", System.Web.Mail.MailFormat.Html, "");


        //    string kush = emailid;


        //}
    }
    protected void Send_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow grv in GridView1.Rows)
        {
            if (((CheckBox)grv.Cells[1].Controls[1]).Checked)
            {

                //userid += grv.Cells[7].Text + ",";
                userid = grv.Cells[7].Text;
                Session["userid"] = userid;
                Session["comid"] = Comid;
               

            }


        }

        con.Open();
        SqlCommand cmd;
        cmd = new SqlCommand("insert into UserJobs values(@UserId,@CompanyId,@Date)", con);
        cmd.Parameters.AddWithValue("@UserId", userid);
        cmd.Parameters.AddWithValue("@CompanyId", Comid);
        cmd.Parameters.AddWithValue("@Date", System.DateTime.Now);
        cmd.ExecuteNonQuery();
        con.Close();
        Label6.Text = "Send";
        
        


    }
}