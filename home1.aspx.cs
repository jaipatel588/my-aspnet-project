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

public partial class home1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        label_user_id.Text = Session["user_name"].ToString();
     
        OracleConnection con;
        OracleCommand cmd;
        String str = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString3"].ConnectionString;
        String str1 = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;


        
            String ses_op_;
            ses_op_ = Session["user_level"].ToString();

            if (ses_op_ == "EMP")   //admin all options
            {
                con = new OracleConnection(str);
                cmd = new OracleCommand("select employee_information_api.get_emp_full_name('31','" + label_user_id.Text + "')  ename , " +
                                        "ifsapp.employee_information_api.Get_Actual_Cost_Centre('31','" + label_user_id.Text + "') dept_code " +
                                        "from dual");
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                OracleDataAdapter da = new OracleDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    lbl_sect_code_det.Text = dt.Rows[i]["ename"].ToString();
                    lbl_sect_code_det1.Text = dt.Rows[i]["dept_code"].ToString();

                }

                ASPxNavBar1.Groups.Add("Training Department");

                ASPxNavBar1.Groups[1].Items.Add("Send Message").NavigateUrl = "Appt_Notice_Send.aspx";

                ASPxNavBar1.Groups[1].Items.Add("Register Trainee").NavigateUrl = "Register_Trainee.aspx";

                ASPxNavBar1.Groups[1].Items.Add("View Trainee Records").NavigateUrl = "Trainee_Record.aspx";

                ASPxNavBar1.Groups[1].Items.Add("Update Trainee Records").NavigateUrl = "Update_Trainee_Record.aspx";

                ASPxNavBar1.Groups[1].Items.Add("Allot Department").NavigateUrl = "AllotPage2.aspx";

                ASPxNavBar1.Groups[1].Items.Add("Update ITI Trainee Marks").NavigateUrl = "ITI_Marks_Update.aspx";

                ASPxNavBar1.Groups[1].Items.Add("Download Master").NavigateUrl = "download_master.aspx";

                ASPxSplitter2.GetPaneByName("ContentUrlPane").ContentUrl = "first_page.aspx";

                con.Close();
            }
            else if (ses_op_ == "TRAINEE")   //admin all options
            {
                con = new OracleConnection(str);
                cmd = new OracleCommand("select employee_information_api.get_emp_full_name('31','" + label_user_id.Text + "')  ename , " +
                                        "ifsapp.employee_information_api.Get_Actual_Cost_Centre('31','" + label_user_id.Text + "') dept_code " +
                                        "from dual");
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                OracleDataAdapter da = new OracleDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    lbl_sect_code_det.Text = dt.Rows[i]["ename"].ToString();
                    lbl_sect_code_det1.Text = dt.Rows[i]["dept_code"].ToString();

                }

                ASPxNavBar1.Groups.Add("Trainee");

                ASPxNavBar1.Groups[1].Items.Add("Inbox").NavigateUrl = "Notice_Appt.aspx";

                ASPxNavBar1.Groups[1].Items.Add("View Attendence").NavigateUrl = "Attendence.aspx";

                ASPxNavBar1.Groups[1].Items.Add("Apply Leave").NavigateUrl = "Apply_Leave.aspx";

                ASPxNavBar1.Groups[1].Items.Add("Leave Status").NavigateUrl = "Leave_Status.aspx";

                ASPxNavBar1.Groups[1].Items.Add("Department Change Request").NavigateUrl = "Dept_Change_Request.aspx";

                ASPxNavBar1.Groups[1].Items.Add("First Aid Request").NavigateUrl = "First_Aid_Request.aspx";

                ASPxSplitter2.GetPaneByName("ContentUrlPane").ContentUrl = "first_page.aspx";

                con.Close();
            }

            else if (ses_op_ == "RO")   //ro all options
            {
                con = new OracleConnection(str);
                cmd = new OracleCommand("select employee_information_api.get_emp_full_name('31','" + label_user_id.Text + "')  ename , " +
                                        "ifsapp.employee_information_api.Get_Actual_Cost_Centre('31','" + label_user_id.Text + "') dept_code " +
                                        "from dual");
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                OracleDataAdapter da = new OracleDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    lbl_sect_code_det.Text = dt.Rows[i]["ename"].ToString();
                    lbl_sect_code_det1.Text = dt.Rows[i]["dept_code"].ToString();

                }

                ASPxNavBar1.Groups.Add("Reporting Officer");

                ASPxNavBar1.Groups[1].Items.Add("Alloted Trainees").NavigateUrl = "RO_Alloted_Trainee.aspx";

                ASPxNavBar1.Groups[1].Items.Add("Approve Leave").NavigateUrl = "Approve_Leave.aspx";

                ASPxNavBar1.Groups[1].Items.Add("First Aid Request Approve").NavigateUrl = "First_Aid_Request_Approve.aspx";

                ASPxNavBar1.Groups[1].Items.Add("ITI Marks Given By R/O").NavigateUrl = "RO_ITI_Marks_Update.aspx";
                
                ASPxSplitter2.GetPaneByName("ContentUrlPane").ContentUrl = "first_page.aspx";

                con.Close();
            }

            else if (ses_op_ == "ODGM")   //ro all options
            {
                con = new OracleConnection(str);
                cmd = new OracleCommand("select employee_information_api.get_emp_full_name('31','" + label_user_id.Text + "')  ename , " +
                                        "ifsapp.employee_information_api.Get_Actual_Cost_Centre('31','" + label_user_id.Text + "') dept_code " +
                                        "from dual");

                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                OracleDataAdapter da = new OracleDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    lbl_sect_code_det.Text = dt.Rows[i]["ename"].ToString();
                    lbl_sect_code_det1.Text = dt.Rows[i]["dept_code"].ToString();
                }

                ASPxNavBar1.Groups.Add("Head Of Dept.");

                ASPxNavBar1.Groups[1].Items.Add("Alloted Trainees").NavigateUrl = "ODGM_Alloted_trainee_RO.aspx";

                ASPxNavBar1.Groups[1].Items.Add("Dept Change Request").NavigateUrl = "ODGM_Dept_Change_Req.aspx";
            }
    }
}

