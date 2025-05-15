using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;
using System.Configuration;
using System.Windows.Forms;
public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_login_submit_Click(object sender, EventArgs e)
    {
        OracleConnection con;
        OracleCommand cmd;
        String str = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;

        con = new OracleConnection(str);
        cmd = new OracleCommand("training_login");
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        OracleParameter username = cmd.Parameters.Add("user_", OracleType.VarChar, 50);
        OracleParameter passwd = cmd.Parameters.Add("password_", OracleType.VarChar, 50);
        OracleParameter role = cmd.Parameters.Add("role_", OracleType.VarChar, 50);
        username.Direction = ParameterDirection.Input;
        passwd.Direction = ParameterDirection.Input;
        role.Direction = ParameterDirection.ReturnValue;
        username.Value = txt_userid.Text;
        passwd.Value = txt_pwd.Text;
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        if (role.Value.ToString() == "EMP" || role.Value.ToString() == "TRAINEE" || role.Value.ToString() == "RO" || role.Value.ToString() == "ODGM")
        {
            Session["user_level"] = role.Value.ToString();
            Session["user_name"] = txt_userid.Text;
            //Session["dept"] = lbl_sect_code_det1.Text;
            Response.Redirect("~/home1.aspx");
        }
        else
        {
            this.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('Invalid Username or Password!');", true);
        }
    }
}