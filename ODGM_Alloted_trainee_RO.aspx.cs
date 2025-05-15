using System.Data;
using System.Data.OracleClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.ComponentModel.Design;
using DevExpress.Web.ASPxNavBar;
using DevExpress.Web.ASPxEditors;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ODGM_Alloted_trainee_RO : System.Web.UI.Page
{     
    OracleConnection con;
    OracleCommand cmd;
    String str = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString3"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new OracleConnection(str);
        cmd = new OracleCommand("select employee_information_api.get_emp_full_name('31','" + Session["user_name"] + "')  ename , " +
                                "ifsapp.employee_information_api.Get_Actual_Cost_Centre('31','" + Session["user_name"] + "') dept_code " +
                                "from dual");
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        OracleDataAdapter da = new OracleDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        for (int i = 0; i < dt.Rows.Count; i++)
        {
            Label2.Text = dt.Rows[i]["dept_code"].ToString();
        }
    }
}