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
    Qulification quli = new Qulification();
   
    protected void Page_Load(object sender, EventArgs e)
    {

        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

       
            Random rr = new Random();
            qulificationid.Text = txtqulificationname.Text.Substring(0, 3) + rr.Next(10000).ToString();
           
            int i= quli.QulificationInsert(qulificationid.Text, txtqulificationname.Text);
            GridView1.DataBind();
            
            if (i > 0)
                Message.Text = "saved";
            else
                Message.Text = "not saved";


      

    }
}