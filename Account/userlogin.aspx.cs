using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
using System.Data.SqlClient;
using System.Configuration;

public partial class Account_userlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        OracleConnection myConn = new OracleConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConPF"].ToString());
        OracleCommand cmd = new OracleCommand();
        OracleDataReader dr;
        string Sql = "";
        string dt = "";

        try
        {
            Session["id"] = txtID.ToString();
          
            Sql = "SELECT * FROM LOGINDETAILS where PID= '" + txtID.Text.Trim() + "' AND PASSWORD1='" + FNAME.Text.Trim() + "' ";
            cmd.CommandText = Sql;
            cmd.Connection = myConn;
            if (myConn.State == System.Data.ConnectionState.Closed)
                myConn.Open();
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();

                if (txtID.Text.Trim() == dr.GetValue(0).ToString() && FNAME.Text.Trim() == dr.GetValue(1).ToString())
                {
                    Response.Redirect("welcomepage.aspx");
                }
                else
                {
                    lblErr.Text = "Error in login.Wrong user id and password";

                }

            }
            else
            {
                lblErr.Text = "No record";
            }
        }
        catch (Exception ee)
        {
            lblErr.Text = "Error in login.";
        }
        finally
        {
            if (myConn.State == System.Data.ConnectionState.Open)
                myConn.Close();
        }
      
    }
}