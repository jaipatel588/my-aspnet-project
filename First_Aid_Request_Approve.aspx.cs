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
public partial class First_Aid_Request_Approve : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
    OracleConnection con;
    OracleCommand com, com1;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string selectedValues = Request.QueryString["selectedValues"];
            if (!String.IsNullOrEmpty(selectedValues))
            {
                string[] valuesArray = selectedValues.Split(',');

                DataTable dt = new DataTable();
                dt.Columns.Add("SelectedValues");
                foreach (string value in valuesArray)
                {
                    dt.Rows.Add(value);

                }
                ASPxGridView1.DataSource = dt;
                ASPxGridView1.DataBind();
            }
        }
    }
    protected void Button_Approve_Click(object sender, EventArgs e)
    {
        con = new OracleConnection(strConnString);
        con.Open();

        int rowcount;
        int startindx;

        rowcount = ASPxGridView1.VisibleRowCount;
        startindx = ASPxGridView1.VisibleStartIndex;

        int x;
        int indx = 0;
        x = ASPxGridView1.Selection.Count;

        if (x > 0)
        {
            List<object> str = (List<object>)ASPxGridView1.GetSelectedFieldValues("APPT_NO");
            foreach (var items in str)
            {
                indx = ASPxGridView1.FindVisibleIndexByKeyValue(items);

                com = new OracleCommand("UPDATE TRAINING_TRAINEE_FIRSTAID_REQ SET RO_STATUS = 'APPROVED' where APPT_NO = " + ASPxGridView1.GetRowValues(indx, "APPT_NO").ToString() + " ", con);
                com.Connection = con;
                com.CommandType = CommandType.Text;
                com.ExecuteNonQuery();
            }
            this.ASPxGridView1.DataBind();
            con.Close();

            this.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('First Aid Approved!');", true);

        }
    }
}