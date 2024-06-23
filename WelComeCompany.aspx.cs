using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class WelComeCompany : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection();
        com = new SqlCommand();
        CompanyId.Text = "" + Session["CompanyId"];
        Session["comid"] = "" + CompanyId.Text;
        ComId.Text =""+ Session["comid"];

        con.ConnectionString = ConfigurationManager.ConnectionStrings["kush"].ConnectionString;
        com.Connection = con;
        com.CommandText = "Select CompanyId,Company_Name,Company_Type,Company_Details,Company_Location,Company_EmailId from Company_Details where CompanyId='" + CompanyId.Text + "' ";
        con.Open();
        dr = com.ExecuteReader();
        if (dr.Read())
        {
            
            companyname.Text= "" + dr["Company_Name"];
            ComName.Text = "" + dr["Company_Name"];
            CompanyType.Text = "" + dr["Company_Type"];
            CompanyDetails.Text = "" + dr["Company_Details"];
            companyLocation.Text = "" + dr["Company_Location"];
            companyemailid.Text = "" + dr["Company_EmailId"];

        }
        con.Close();

    }
}