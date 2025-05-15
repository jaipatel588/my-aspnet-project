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

public partial class Apply_Leave : System.Web.UI.Page
{
    //global variables
    string strConnString1 = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString3"].ConnectionString;

    OracleConnection con;
    OracleCommand com,com1; 

    protected void Page_Load(object sender, EventArgs e)
    {
        DropDownList1.SelectedIndexChanged += DropDownList1_SelectedIndexChanged;
        Label6.Visible = false;
        Label7.Visible = false;
        Label8.Visible = false;
        Label9.Visible = false;
        RadioButtonList3.Visible = false;
        ASPxDateEdit3.Visible = false;
        RadioButtonList2.Visible = false;
        RadioButtonList1.Visible = false;

        con = new OracleConnection(strConnString1);
        con.Open();

        com = new OracleCommand("select * from training_trainee_leave_bal " +
                               " where appt_no = " + Label_Appt_no.Text + " ", con);

        OracleDataReader myreader;
        myreader = com.ExecuteReader();
        Avail_CL.Text = myreader["bal_cl"].ToString();
    }

    protected void ASPxButton1_Click(object sender, EventArgs e)
    {
        String yr1 = ASPxDateEdit1.Date.Year.ToString();
        String mn1 = ASPxDateEdit1.Date.Month.ToString();
        String dd1 = ASPxDateEdit1.Date.Day.ToString();
        Label10.Text = dd1 + "-" + mn1 + "-" + yr1;

        String yr2 = ASPxDateEdit2.Date.Year.ToString();
        String mn2 = ASPxDateEdit2.Date.Month.ToString();
        String dd2 = ASPxDateEdit2.Date.Day.ToString();
        Label11.Text = dd2 + "-" + mn2 + "-" + yr2;

        String yr3 = ASPxDateEdit2.Date.Year.ToString();
        String mn3 = ASPxDateEdit2.Date.Month.ToString();
        String dd3 = ASPxDateEdit2.Date.Day.ToString();
        Label12.Text = dd3 + "-" + mn3 + "-" + yr3;

        con = new OracleConnection(strConnString);
        con.Open();

        Label3.Text = Session["user_name"].ToString();

        com = new OracleCommand("INSERT INTO TRAINING_TRAINEE_LEAVE(appt_no,leave_type,from_date,to_date,ro_status,so_status,reason,shift,non_punch_date,which_non_punch,occasion,appt_name)" +
        "VALUES('" + Label3.Text + "' , '" + DropDownList1.SelectedValue + "' , to_date('" + Label10.Text + "','dd-mm-yyyy'), to_date('" + Label11.Text + "','dd-mm-yyyy'),'PENDING','PENDING', "+
        " '" + TextBox1.Text + "', '" + RadioButtonList3.SelectedValue + "'  ,to_date('" + Label12.Text + "','dd-mm-yyyy'), '" + RadioButtonList1.SelectedValue + "' , '" + RadioButtonList2.SelectedValue + "', '"+Label_Name.Text+"')", con);
        
        com.Connection = con;
        com.CommandType = CommandType.Text; 
        com.ExecuteNonQuery();

        com1 = new OracleCommand("select employee_information_api.get_emp_full_name('31','" + Label_Appt_no.Text + "')  ename from dual");
        com1.Connection = con;
        com1.CommandType = CommandType.Text;
        OracleDataAdapter da = new OracleDataAdapter(com1);
        DataTable dt = new DataTable();


        da.Fill(dt);

        for (int i = 0; i < dt.Rows.Count; i++)
        {
            Label_Name.Text = dt.Rows[i]["ename"].ToString();
        }
        
        calculate_leave();

        this.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('LEAVE SUBMITTED !');", true);
    }

    protected void calculate_leave()
    {
        string leave = DropDownList1.SelectedValue;
        if (DropDownList1.SelectedValue == "Casual Leave")
        {
            int cl;
            con = new OracleConnection(strConnString1);
            con.Open();

            com = new OracleCommand("select * from training_trainee_leave_bal " +
                                   " where appt_no = " + Label_Appt_no.Text + " ", con);

            OracleDataReader myreader;
            myreader = com.ExecuteReader();
            while (myreader.Read())
            {
                 if(Convert.ToInt32(myreader["bal_cl"].ToString())>0 && Convert.ToInt32(myreader["bal_cl"].ToString()) <12  )
                 {
                  
                            cl = Convert.ToInt32(myreader["bal_cl"].ToString()) - 1 ;
                            com = new OracleCommand("update training_trainee_leave_bal" +
                                                    " set bal_cl = "+cl+" " +
                                                  " where appt_no = " + Label_Appt_no.Text + " ", con);
                           com.Connection = con;
                          com.CommandType = CommandType.Text;
                          com.ExecuteNonQuery();
                } 
                else
                {
                    this.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('CL are not available !');", true);
                }
            }
         }
       }
    

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "Condonation")
        {
            Label6.Visible = true;
            Label7.Visible = true;
            Label8.Visible = true;
            Label9.Visible = true;
            RadioButtonList1.Visible = true;
            RadioButtonList2.Visible = true;
            ASPxDateEdit3.Visible = true;
            RadioButtonList3.Visible = true;
            Label2.Visible = true;

            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            ASPxDateEdit1.Visible = false;
            ASPxDateEdit2.Visible = false;
            TextBox1.Visible = false;
        }
        else
        {
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            ASPxDateEdit1.Visible = true;
            ASPxDateEdit2.Visible = true;
            TextBox1.Visible = true;
        }
    }
}