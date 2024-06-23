using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    College cg = new College();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        Random rr = new Random();

        Collegecode.Text = txtcollegename.Text.Substring(0, 5) + rr.Next(1000).ToString();
        int i = cg.CollegeInsert(Collegecode.Text, ddlStateCode.SelectedValue, txtcollegename.Text);
        if (i > 0)

            Message.Text = "Data Inserted";
        else

            Message.Text = "Data not saved";
        GridView1.DataBind();

    }
    protected void ddlStateCode_DataBound(object sender, EventArgs e)
    {
        ddlStateCode.Items.Insert(0, "Select");
    }
}