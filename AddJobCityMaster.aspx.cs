using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    jobcity jb = new jobcity();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Random rr = new Random();
            citycode.Text = txtcityname.Text.Substring(0, 4) + rr.Next(1000).ToString();
            int i = jb.CityInsert(citycode.Text, txtcityname.Text);
            if (i > 0)
            {
                Message.Text = "succes";
                txtcityname.Text = "";
                citycode.Text = "City Code";
            }
            else
            {
                Message.Text = "not saved";
            }
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Message.Text = ex.Message;
        }


    }
}