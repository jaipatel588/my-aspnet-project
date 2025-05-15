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

public partial class Allot_Department : System.Web.UI.Page
{
    OracleConnection con = new OracleConnection("Data Source=ifslive;User ID=ic_mfg;Password=nsk31mfg;Unicode=True");
    DataTable dt = new DataTable();
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString3"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Request.QueryString["appt_no"].ToString();
        TextBox1.Enabled = false;
        TextBox2.Text = Request.QueryString["appt_name"].ToString();
        TextBox2.Enabled = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String yr1 = ASPxDateEdit2.Date.Year.ToString();
        String mn1 = ASPxDateEdit2.Date.Month.ToString();
        String dd1 = ASPxDateEdit2.Date.Day.ToString();
        Label30.Text = dd1 + "-" + mn1 + "-" + yr1;

        String yr2 = ASPxDateEdit3.Date.Year.ToString();
        String mn2 = ASPxDateEdit3.Date.Month.ToString();
        String dd2 = ASPxDateEdit3.Date.Day.ToString();
        Label31.Text = dd2 + "-" + mn2 + "-" + yr2;

        con = new OracleConnection(strConnString);
        con.Open();

       OracleCommand com1 = new OracleCommand("UPDATE TRAINING_TRAINEE_MASTER " +
                            "SET DEPT_NO = '" + DropDownList6.SelectedValue + "', DEPT_JOINING_FROM = to_date('" + Label30.Text + "','dd-mm-yyyy') , DEPT_JOINING_TO = to_date('" + Label31.Text + "','dd-mm-yyyy'), " +
                            "RO_PBNO = '" + DropDownList7.Text + "' , ro_approval_status = 'PENDING'" +
                            "WHERE APPT_NO = '" + TextBox1.Text + "'  ", con);
        com1.Connection = con;
        com1.CommandType = CommandType.Text;
        com1.ExecuteNonQuery();

        con.Close();

        this.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('Department Alloted !');", true);
    }      
}