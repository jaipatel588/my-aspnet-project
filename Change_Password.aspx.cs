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

public partial class Change_Password : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;

    OracleConnection con;
    OracleCommand com; 

    protected void Page_Load(object sender, EventArgs e)
    {

    }
 
    protected void btn_chngpass_submit_Click(object sender, System.EventArgs e)
    {
        OracleConnection con = new OracleConnection("Data Source=misdb;User ID=ic_mfg;Password=ic_mfg;Unicode=True");
        OracleDataAdapter oda = new OracleDataAdapter("SELECT PASSWORD FROM training_system_login WHERE PASSWORD = '" + txt_pwd.Text + "' ", con);
        DataTable dt = new DataTable();
        oda.Fill(dt);
        if (dt.Rows.Count.ToString() == "1")
        {
            if (txt_pwd.Text != new_pass.Text)
            {
                con.Open();
                OracleCommand com = new OracleCommand("UPDATE training_system_login SET PASSWORD = '" + new_pass.Text + "' WHERE PASSWORD = '" + txt_pwd.Text + "'", con);
                com.ExecuteNonQuery();
                con.Close();
                this.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('Password Changed Successfully !');", true);
            }
            else
            {
                this.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('New Password Cannot Be Same As Previous !');", true);
            }
        }
        else
        {
            this.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('Record Not Found !');", true);
        }
        
    }
}