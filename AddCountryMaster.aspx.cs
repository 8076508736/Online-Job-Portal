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
    Country coun = new Country();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {


            Random rr = new Random();
            countrycode.Text = txtcountryname.Text.Substring(0, 4) + rr.Next(10000).ToString();
            int i = coun.CountryInsert(countrycode.Text, txtcountryname.Text);
            if (i > 0)
            {

                Message.Text = "Data Inserted";
                countrycode.Text = "Country Code";
                txtcountryname.Text = "";
                GridView1.DataBind();
            }
            else
            {
                Message.Text = "Data not Inserted";
            }
           

        }
        catch (Exception ex)
        {
            Message.Text = ex.Message;
        }
    

    }
}