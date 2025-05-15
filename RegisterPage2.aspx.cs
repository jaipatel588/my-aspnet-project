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


public partial class RegisterPage2 : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString3"].ConnectionString;
    string strConnString1 = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;

    OracleConnection con,con1;
    OracleCommand com, com1; 

    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Request.QueryString["emp_name"].ToString();
        TextBox1.Enabled = false;
        TextBox2.Text = Request.QueryString["emp_code"].ToString();
        TextBox2.Enabled = false;
        TextBox3.Text = Request.QueryString["emg_contact_no"].ToString();
        TextBox3.Enabled = false;
        TextBox4.Text = Request.QueryString["e_mail_id"].ToString();
        TextBox4.Enabled = false;
        TextBox5.Text = Request.QueryString["emp_sex"].ToString();
        TextBox5.Enabled = false;
        TextBox6.Text = Request.QueryString["date_of_birth"].ToString();
        TextBox6.Enabled = false;
        TextBox7.Text = Request.QueryString["qualification"].ToString();
        TextBox7.Enabled = false;
        TextBox8.Text = Request.QueryString["date_of_join"].ToString();
        TextBox8.Enabled = false;
        TextBox9.Text = Request.QueryString["emp_bank_acc_no"].ToString();
        TextBox9.Enabled = false;
        TextBox10.Text = Request.QueryString["dd_payable_at_par"].ToString();
        TextBox10.Enabled = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String yr1 = ASPxDateEdit1.Date.Year.ToString();
        String mn1 = ASPxDateEdit1.Date.Month.ToString();
        String dd1 = ASPxDateEdit1.Date.Day.ToString();
        Label58.Text = dd1 + "-" + mn1 + "-" + yr1;

        String yr2 = ASPxDateEdit2.Date.Year.ToString();
        String mn2 = ASPxDateEdit2.Date.Month.ToString();
        String dd2 = ASPxDateEdit2.Date.Day.ToString();
        Label62.Text = dd2 + "-" + mn2 + "-" + yr2;

        String yr3 = ASPxDateEdit3.Date.Year.ToString();
        String mn3 = ASPxDateEdit3.Date.Month.ToString();
        String dd3 = ASPxDateEdit3.Date.Day.ToString();
        Label63.Text = dd3 + "-" + mn3 + "-" + yr3;

        String yr4 = ASPxDateEdit4.Date.Year.ToString();
        String mn4 = ASPxDateEdit4.Date.Month.ToString();
        String dd4 = ASPxDateEdit4.Date.Day.ToString();
        Label64.Text = dd4 + "-" + mn4 + "-" + yr4;

        con = new OracleConnection(strConnString);
        con.Open();

        com = new OracleCommand("INSERT INTO TRAINING_TRAINEE_MASTER(APPT_NAME,APPT_NO,APPT_CONTACT_NO,APPT_EMAIL,GENDER,APPT_DOB,TRADE_CODE,APPT_DOJ,APPT_BANK_ACC_NO,APPT_BANK_IFSC_CODE,portal_reg_no,proximity_card_no,category,disability,address_line_1,address_line_2,pincode,state,education_type,passout_year,"+
        " education_trade,other,bank_name_portal,acc_holder_name_portal,acc_no_portal,ifsc_code_portal,remarks,appt_reporting_date,appt_ending_date,date_of_birth,marks,emergency_contact_no,aadhar_no,status)" +
        "VALUES('" + TextBox1.Text + "' , '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "' , '" + TextBox5.Text + "' , '" + TextBox6.Text + "' , '" + TextBox7.Text + "' , "+
        " '" + TextBox8.Text + "' , '" + TextBox9.Text + "' , '" + TextBox10.Text + "','" + TextBox11.Text + "', '" + TextBox15.Text + "','" + DropDownList4.SelectedValue + "','" + DropDownList7.SelectedValue + "',"+
        " '" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + DropDownList5.SelectedValue + "','" + DropDownList8.SelectedValue + "','" + TextBox18.Text + "','" + DropDownList9.SelectedValue + "','" + TextBox17.Text + "','" + TextBox19.Text + "','" + TextBox20.Text + "','" + TextBox21.Text + "','" + TextBox22.Text + "','" + TextBox23.Text + "', to_date('" + Label62.Text + "','dd-mm-yyyy'), to_date('" + Label63.Text + "','dd-mm-yyyy'), to_date('" + Label64.Text + "','dd-mm-yyyy'), '" + TextBox16.Text + "', '" + TextBox24.Text + "','" + TextBox25.Text + "','" + DropDownList1.SelectedValue + "')", con);
        
        com.Connection = con;
        com.CommandType = CommandType.Text;
        com.ExecuteNonQuery();

        con1 = new OracleConnection(strConnString1);
        con1.Open();
        com1 = new OracleCommand("INSERT INTO TRAINING_SYSTEM_LOGIN(apptno,password,role)"+
                                 "VALUES('" + TextBox2.Text + "' , '" + TextBox2.Text + "', 'TRAINEE')", con);
        com1.Connection = con1;
        com1.CommandType = CommandType.Text;
        com1.ExecuteNonQuery();

        con.Close();
        con1.Close();

        this.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('Apprentice Registered!');", true);

    }
    protected void DropDownList8_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList8.SelectedValue == "OTHER")
        {
            Label61.Visible = true;
            TextBox17.Visible = true;
        }
        else
        {
            Label61.Visible = false;
            TextBox17.Visible = false;
        }
    }
    protected void DropDownList9_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList9.SelectedValue == "Other")
        {
            Label61.Visible = true;
            TextBox17.Visible = true;
        }
        else
        {
            Label61.Visible = false;
            TextBox17.Visible = false;
        }
    }
}
