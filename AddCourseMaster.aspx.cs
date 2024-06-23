using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    Course cour = new Course();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Random rr = new Random();
        courseid.Text = txtcoursename.Text.Substring(0, 3) + rr.Next(10000).ToString();
        int i = cour.CourseInsert(courseid.Text, txtcoursename.Text, ddlqulificationid.SelectedValue);
        GridView1.DataBind();

        if (i > 0)
        {
            Message.Text = "saved";
            txtcoursename.Text = "";
            courseid.Text = "Course Id";
        }
        else
        {

            Message.Text = "not saved";
        }

    }
    protected void ddlqulificationid_DataBound(object sender, EventArgs e)
    {
        ddlqulificationid.Items.Insert(0, "Select");
    }
}