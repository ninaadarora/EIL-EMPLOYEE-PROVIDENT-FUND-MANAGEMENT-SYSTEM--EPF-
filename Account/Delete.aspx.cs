using System;
using System.Collections.Generic;
using System.Linq;
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

public partial class Account_Delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtID.Text = string.Empty;
        }
    }
    protected void btnReg_Click(object sender, EventArgs e)
    {

    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        OracleConnection myConn = new OracleConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConPF"].ToString());
        OracleCommand cmd = new OracleCommand();

        string Sql = "";
        string dt = "";

        try
        {
            Sql = "delete from Trainee02 where PERSONID= '" + txtID.Text.Trim() + "' ";

            cmd.CommandText = Sql;
            cmd.Connection = myConn;
            if (myConn.State == System.Data.ConnectionState.Closed)
                myConn.Open();
            int rows = cmd.ExecuteNonQuery();

            if (rows > 0)
            {
                lblErr.Text = "record deleted";
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