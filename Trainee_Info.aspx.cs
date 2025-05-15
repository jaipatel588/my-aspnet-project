using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Trainee_Info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Request.QueryString["appt_name"].ToString();
        TextBox1.Enabled = false;
        TextBox2.Text = Request.QueryString["appt_no"].ToString();
        TextBox2.Enabled = false;
        TextBox3.Text = Request.QueryString["appt_contact_no"].ToString();
        TextBox3.Enabled = false;
        TextBox4.Text = Request.QueryString["appt_email"].ToString();
        TextBox4.Enabled = false;
        TextBox5.Text = Request.QueryString["gender"].ToString();
        TextBox5.Enabled = false;
        TextBox6.Text = Request.QueryString["appt_dob"].ToString();
        TextBox6.Enabled = false;
        TextBox7.Text = Request.QueryString["trade_code"].ToString();
        TextBox7.Enabled = false;
        TextBox8.Text = Request.QueryString["appt_doj"].ToString();
        TextBox8.Enabled = false;
        TextBox9.Text = Request.QueryString["appt_bank_acc_no"].ToString();
        TextBox9.Enabled = false;
        TextBox10.Text = Request.QueryString["appt_bank_ifsc_code"].ToString();
        TextBox10.Enabled = false;
        //--------------------------------------------------------------------------------------------------------------------------------
        TextBox11.Text = Request.QueryString["portal_reg_no"].ToString();
        TextBox11.Enabled = false;
        TextBox15.Text = Request.QueryString["proximity_card_no"].ToString();
        TextBox15.Enabled = false;
        TextBox24.Text = Request.QueryString["category"].ToString();
        TextBox24.Enabled = false;
        TextBox25.Text = Request.QueryString["disability"].ToString();
        TextBox25.Enabled = false;
        TextBox33.Text = Request.QueryString["appt_reporting_date"].ToString();
        TextBox33.Enabled = false;
        TextBox34.Text = Request.QueryString["appt_ending_date"].ToString();
        TextBox34.Enabled = false;
        TextBox35.Text = Request.QueryString["date_of_birth"].ToString();
        TextBox35.Enabled = false;
        TextBox32.Text = Request.QueryString["emergency_contact_no"].ToString();
        TextBox32.Enabled = false;
        TextBox37.Text = Request.QueryString["aadhar_no"].ToString();
        TextBox37.Enabled = false;
        ////-----------------------------------------------------------------------------------------------------------------------------------
        TextBox12.Text = Request.QueryString["address_line_1"].ToString();
        TextBox12.Enabled = false;
        TextBox13.Text = Request.QueryString["address_line_2"].ToString();
        TextBox13.Enabled = false;
        TextBox14.Text = Request.QueryString["pincode"].ToString();
        TextBox14.Enabled = false;
        TextBox26.Text = Request.QueryString["state"].ToString();
        TextBox26.Enabled = false;
        ////-----------------------------------------------------------------------------------------------------------------------------------
        TextBox27.Text = Request.QueryString["education_type"].ToString();
        TextBox27.Enabled = false;
        TextBox18.Text = Request.QueryString["passout_year"].ToString();
        TextBox18.Enabled = false;
        TextBox28.Text = Request.QueryString["education_trade"].ToString();
        TextBox28.Enabled = false;
        TextBox17.Text = Request.QueryString["other"].ToString();
        TextBox17.Enabled = false;
        TextBox36.Text = Request.QueryString["marks"].ToString();
        TextBox36.Enabled = false;
        ////----------------------------------------------------------------------------------------------------------------------------------
        TextBox19.Text = Request.QueryString["bank_name_portal"].ToString();
        TextBox19.Enabled = false;
        TextBox20.Text = Request.QueryString["acc_holder_name_portal"].ToString();
        TextBox20.Enabled = false;
        TextBox21.Text = Request.QueryString["acc_no_portal"].ToString();
        TextBox21.Enabled = false;
        TextBox22.Text = Request.QueryString["ifsc_code_portal"].ToString();
        TextBox22.Enabled = false;
        ////----------------------------------------------------------------------------------------------------------------------------------
        TextBox23.Text = Request.QueryString["remarks"].ToString();
        TextBox23.Enabled = false;
        TextBox38.Text = Request.QueryString["status"].ToString();
        TextBox38.Enabled = false;
        //------------------------------------------------------------------------------------------------------------------------------------
        TextBox16.Text = Request.QueryString["dept_no"].ToString();
        TextBox16.Enabled = false;
        TextBox29.Text = Request.QueryString["dept_joining_from"].ToString();
        TextBox29.Enabled = false;
        TextBox30.Text = Request.QueryString["ro_pbno"].ToString();
        TextBox30.Enabled = false;
    }
}



