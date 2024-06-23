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
    State st = new State();
    protected void Page_Load(object sender, EventArgs e)
    {
       

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
            Random rr = new Random();
            statecode.Text = txtstatename.Text.Substring(0, 4) + rr.Next(1000).ToString();
            int i = st.StateInsert(statecode.Text, txtstatename.Text, ddlcountrycode.SelectedValue);
        if(i>0)

            Message.Text = "Data Inserted";
        else
      Message.Text = "This State Name is  already enter Please enter other Name" ;
        GridView1.DataBind();
      
    }
}