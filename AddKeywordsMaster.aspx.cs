using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    keyword ke = new keyword();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Random rr = new Random();
            keywordid.Text = txtkeywordname.Text.Substring(0, 5) + rr.Next(1000).ToString();
            int i = ke.KeywordInsert(ddlfuncationalareaId.SelectedValue,keywordid.Text,txtkeywordname.Text);
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
}