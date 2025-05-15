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

public partial class Dept_Change_Request : System.Web.UI.Page
{
    string strConnString1 = ConfigurationManager.ConnectionStrings["ConnectionString3"].ConnectionString;

    OracleConnection con, con1,con2;
    OracleCommand com, com1, com2; 

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label53.Text = Session["user_name"].ToString();

        con = new OracleConnection(strConnString1);
        con.Open();

        com = new OracleCommand("select employee_information_api.get_emp_full_name('31','" + Session["user_name"] + "')  ename , " +
                                "ifsapp.employee_information_api.Get_Actual_Cost_Centre('31','" + Session["user_name"] + "') dept_code " +
                                "from dual"); 
        com.Connection = con;
        com.CommandType = CommandType.Text;
        OracleDataAdapter da = new OracleDataAdapter(com);
        DataTable dt = new DataTable();
        da.Fill(dt);

        for (int i = 0; i < dt.Rows.Count; i++)
        {
            Label53.Text = dt.Rows[i]["ename"].ToString();
            Label55.Text = dt.Rows[i]["dept_code"].ToString();
        }
        com.ExecuteNonQuery();
        con.Close();

        con1 = new OracleConnection(strConnString1);
        con1.Open();
        com1 = new OracleCommand("INSERT INTO training_trainee_deptchangereq(appt_no,appt_name,request,dgm_approval,request_date)" +
                                 "VALUES('" + Label53.Text + "', '" + Label55.Text + "' , '" + TextBox1.Text + "','PENDING',sysdate)", con);
        com1.Connection = con1;
        com1.CommandType = CommandType.Text;
        com1.ExecuteNonQuery();
        this.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('Request Sent!');", true);

        con1.Close();
    }
}