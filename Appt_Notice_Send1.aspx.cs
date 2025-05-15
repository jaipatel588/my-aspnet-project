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


public partial class Appt_Notice_Send1 : System.Web.UI.Page
{
    string strConnString1 = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;

    OracleConnection con;
    OracleCommand com; 

    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Request.QueryString["appt_no"].ToString();
        TextBox1.Enabled = false;
        TextBox2.Text = Request.QueryString["appt_name"].ToString();
        TextBox2.Enabled = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new OracleConnection(strConnString1);
        con.Open();

        com = new OracleCommand("INSERT INTO TRAINING_TRAINEE_NOTICE(APPT_NO,APPT_NAME,MESSAGE,MESSAGE_DATE)" +
        "VALUES('" + TextBox1.Text + "' , '" + TextBox2.Text + "', '" + TextBox3.Text + "',sysdate)", con);

        com.Connection = con;
        com.CommandType = CommandType.Text;
        com.ExecuteNonQuery();

        con.Close();

        this.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('Message Sent!');", true);
    }
}