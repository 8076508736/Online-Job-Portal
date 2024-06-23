using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SearchJobMaster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        userid.Text = "" + Session["userid"];

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
    
   // public static string fl = "";
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            string experience = ddlExperiencesTo.SelectedValue + "from" + ddlExperiencesFrom.SelectedValue;
            fetch ft = new fetch();
            if (ddlFuncationArea.SelectedIndex != 0)
            {
                GridView1.DataSource = ft.fetchbyfuncational(ddlFuncationArea.SelectedValue);
                GridView1.DataBind();
            }
            if (ddlLocation.SelectedIndex != 0)
            {
                GridView1.DataSource = ft.FetchbyLocation(ddlLocation.SelectedValue);
                GridView1.DataBind();
            }
            if (ddlExperiencesTo.SelectedIndex != 0 && ddlExperiencesFrom.SelectedIndex != 0)
            {
                GridView1.DataSource = ft.FetchbyExperiences(experience);
                GridView1.DataBind();
                // Label8.Text = experience.ToString();
            }
            if (txtkeywords.Text != "  ")
            {
                GridView1.DataSource = ft.Fetchbykeyword_position(txtkeywords.Text, txtkeywords.Text);
                GridView1.DataBind();
            }
        }
      catch(Exception ex)
        {
            Label7.Text = ex.Message;
      }

   }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("CompanyWholeDetails.aspx?company=" + GridView1.Rows[0].Cells[1].Text);
    }

    protected void ddlFuncationArea_DataBound(object sender, EventArgs e)
    {
        ddlFuncationArea.Items.Insert(0, "Select");
    }
    protected void ddlLocation_DataBound(object sender, EventArgs e)
    {
        ddlLocation.Items.Insert(0, "Select");
    }
    protected void ddlFuncationArea_DataBound1(object sender, EventArgs e)
    {
        ddlFuncationArea.Items.Insert(0, "Select");
    }
    protected void ddlLocation_DataBound1(object sender, EventArgs e)
    {
        ddlLocation.Items.Insert(0, "Select");
    }
}