using System;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Diagnostics;
using System.Data.OracleClient;
using DevExpress.Web.ASPxGridView;
using DevExpress.Web.ASPxEditors;
using System.Windows.Forms;

public partial class Update_Marks : System.Web.UI.Page
{
    OracleConnection con = new OracleConnection("Data Source=ifslive;User ID=ic_mfg;Password=nsk31mfg;Unicode=True");
    DataTable dt = new DataTable();
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString3"].ConnectionString;
    OracleCommand com; 


    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Request.QueryString["appt_no"].ToString();
        TextBox1.Enabled = false;
        TextBox2.Text = Request.QueryString["appt_name"].ToString();
        TextBox2.Enabled = false;
    }

    protected void Button_Update_Record_Click(object sender, System.EventArgs e)
    {
        con = new OracleConnection(strConnString);
        con.Open();

        com = new OracleCommand("UPDATE training_trainee_master v set v.iti_marks = '"+TextBox31.Text+"' where v.appt_no = '"+TextBox1.Text+"' ", con);

        com.Connection = con;
        com.CommandType = CommandType.Text;
        com.ExecuteNonQuery();

        TextBox31.Enabled = false;

        this.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('Marks Updated!');", true);

        Button_Update_Record.Enabled = false;
    }
}