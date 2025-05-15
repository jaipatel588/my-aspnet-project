using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Update_Info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Request.QueryString["appt_name"].ToString();
        TextBox1.Enabled = false;
        TextBox2.Text = Request.QueryString["appt_no"].ToString();
        TextBox2.Enabled = false;
    }
}