using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    University un = new University();
   
    protected void Page_Load(object sender, EventArgs e)
    {

       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {

            Random rr = new Random();
            universitycode.Text = txtuniversityname.Text.Substring(0, 5) + rr.Next(1000).ToString();
            int i = un.UniversityInsert(universitycode.Text, ddlstatecode.SelectedValue, txtuniversityname.Text);
            if (i < 0)
                Message.Text = "Data Inserted";
            else
                Message.Text = "";
            GridView1.DataBind();
        }
        catch (Exception ex)
        {

        }
        

    }
}