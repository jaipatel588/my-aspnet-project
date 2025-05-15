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

public partial class First_Aid_Request : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
    string strConnString1 = ConfigurationManager.ConnectionStrings["ConnectionString3"].ConnectionString;

    OracleConnection con, con1;
    OracleCommand com, com1; 

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        Label55.Text = Session["user_name"].ToString();
        
        con = new OracleConnection(strConnString1);
        con.Open();

        com = new OracleCommand("select employee_information_api.get_emp_full_name('31','" + Label55.Text + "')  ename from dual");
        com.Connection = con;
        com.CommandType = CommandType.Text;
        OracleDataAdapter da = new OracleDataAdapter(com);
        DataTable dt = new DataTable();
        da.Fill(dt);

        for (int i = 0; i < dt.Rows.Count; i++)
        {
            Label56.Text = dt.Rows[i]["ename"].ToString();
        }

        con.Close();

        con1 = new OracleConnection(strConnString);
        con1.Open();
        com1 = new OracleCommand("INSERT INTO TRAINING_TRAINEE_FIRSTAID_REQ(appt_no,appt_name,request,ro_approval,request_date)" +
                                 "VALUES('" + Label55.Text + "', '" + Label56.Text + "' , '" + TextBox1.Text + "','PENDING',sysdate)", con);
        com1.Connection = con1;
        com1.CommandType = CommandType.Text;
        com1.ExecuteNonQuery();

        con1.Close();
    }
}

                