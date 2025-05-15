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


public partial class RO_Alloted_Trainee : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString3"].ConnectionString;
    OracleConnection con;
    OracleCommand com;

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
                ASPxGridView3.DataSource = dt;
                ASPxGridView3.DataBind();
            }
        }
    }

    //protected void Button_RO_Approval_Click(object sender, EventArgs e)
    //{
    //    con = new OracleConnection(strConnString);
    //    con.Open();

    //    int rowcount;
    //    int startindx;

    //    rowcount = ASPxGridView3.VisibleRowCount;
    //    startindx = ASPxGridView3.VisibleStartIndex;

    //    int x;
    //    int indx = 0;
    //    x = ASPxGridView3.Selection.Count;

    //    if (x > 0)
    //    {
    //        List<object> str = (List<object>)ASPxGridView3.GetSelectedFieldValues("APPT_NO");
    //        foreach (var items in str)
    //        {
    //            indx = ASPxGridView3.FindVisibleIndexByKeyValue(items);

    //            com = new OracleCommand("UPDATE TRAINING_TRAINEE_MASTER SET RO_APPROVAL_STATUS = 'ACCEPTED' where APPT_NO = " + ASPxGridView3.GetRowValues(indx, "APPT_NO").ToString() + " ", con);
    //            com.Connection = con;
    //            com.CommandType = CommandType.Text;
    //            com.ExecuteNonQuery();
    //        }
    //        this.ASPxGridView3.DataBind();
    //        con.Close();

    //        this.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('Apprentice Accepted!');", true);
    //    }
    //    ASPxGridView3.DataColumns["RO_APPROVAL_STATUS"].Visible = true;
    //}
    //protected void Button_Approve_Leave_Click(object sender, EventArgs e)
    //{
    //    con = new OracleConnection(strConnString);
    //    con.Open();

    //    int rowcount;
    //    int startindx;

    //    rowcount = ASPxGridView3.VisibleRowCount;
    //    startindx = ASPxGridView3.VisibleStartIndex;

    //    int x;
    //    int indx = 0;
    //    x = ASPxGridView3.Selection.Count;

    //    if (x > 0)
    //    {
    //        List<object> str = (List<object>)ASPxGridView3.GetSelectedFieldValues("APPT_NO");
    //        foreach (var items in str)
    //        {
    //            indx = ASPxGridView3.FindVisibleIndexByKeyValue(items);

    //            com = new OracleCommand("UPDATE TRAINING_TRAINEE_MASTER SET RO_APPROVAL_STATUS = 'ACCEPTED' where APPT_NO = " + ASPxGridView3.GetRowValues(indx, "APPT_NO").ToString() + " ", con);
    //            com.Connection = con;
    //            com.CommandType = CommandType.Text;
    //            com.ExecuteNonQuery();
    //        }
    //        this.ASPxGridView3.DataBind();
    //        con.Close();

    //        this.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('Apprentice Accepted!');", true);
    //    }
    //    //ASPxGridView3.DataColumns["RO_APPROVAL_STATUS"].Visible = true;
    //}
    protected void Button_Accept_RO_Click(object sender, EventArgs e)
    {
        con = new OracleConnection(strConnString);
        con.Open();

        int rowcount;
        int startindx;

        rowcount = ASPxGridView3.VisibleRowCount;
        startindx = ASPxGridView3.VisibleStartIndex;

        int x;
        int indx = 0;
        x = ASPxGridView3.Selection.Count;

        if (x > 0)
        {
            List<object> str = (List<object>)ASPxGridView3.GetSelectedFieldValues("APPT_NO");
            foreach (var items in str)
            {
                indx = ASPxGridView3.FindVisibleIndexByKeyValue(items);

                com = new OracleCommand("UPDATE TRAINING_TRAINEE_MASTER SET RO_APPROVAL_STATUS = 'ACCEPTED' where APPT_NO = " + ASPxGridView3.GetRowValues(indx, "APPT_NO").ToString() + " ", con);
                com.Connection = con;
                com.CommandType = CommandType.Text;
                com.ExecuteNonQuery();
            }
            this.ASPxGridView3.DataBind();
            con.Close();

            this.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('Apprentice Accepted!');", true);
        }
    }
}