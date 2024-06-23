﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FuncationalArea : System.Web.UI.Page
{
    Funcational fn = new Funcational();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Random rr = new Random();
            funcationid.Text = txtFuncationalAreaName.Text.Substring(0, 5) + rr.Next(1000).ToString();
            int i = fn.FuncationalInsert(funcationid.Text, txtFuncationalAreaName.Text);
            if (i > 0)
            {
                Message.Text = "succes";
                txtFuncationalAreaName.Text = "";
                funcationid.Text = "Funcational Area";
            }
            else
            {
                Message.Text = "not succes";
            }
            GridView1.DataBind();
            
        }
        catch (Exception ex)
        {
            Message.Text = ex.Message;
        }
    }
}