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


public partial class Appt_Notice_Send : System.Web.UI.Page
{
    string strConnString1 = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;

    OracleConnection con;
    OracleCommand com; 

    protected void Page_Load(object sender, EventArgs e)
    {

    }
}