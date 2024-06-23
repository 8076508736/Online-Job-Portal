using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{


    Department dp = new Department();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            Random rr = new Random();
            department_id.Text = txtdepartmentname.Text.Substring(0, 4) + rr.Next(1000).ToString();
            int i = dp.DepartmentInsert(ddlcourseid.SelectedValue, department_id.Text, txtdepartmentname.Text);
            if (i > 0)
                Message.Text = "succes";

            else
                Message.Text = "not succes";
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Message.Text = ex.Message;
        }
    }
    protected void ddlcourseid_DataBound(object sender, EventArgs e)
    {
        ddlcourseid.Items.Insert(0, "Select");
    }
}