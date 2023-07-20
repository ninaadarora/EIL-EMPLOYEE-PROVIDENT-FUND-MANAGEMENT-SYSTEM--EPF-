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
public partial class Account_Update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        OracleConnection myConn = new OracleConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConPF"].ToString());
        OracleCommand cmd = new OracleCommand();
        OracleDataReader dr;
        string Sql = "";
        string dt = "";

        try
        {
            Sql = "update Trainee02 set Salary='" + Salary.Text.Trim() + "',  firstname='" + Fname.Text.Trim() + "' , Lastname='" + Lname.Text.Trim() + "' , dob='" + dob.Text.Trim() + "'WHERE PERSONID= '" + txtID.Text.Trim() + "' ";
            cmd.CommandText = Sql;
            cmd.Connection = myConn;
            if (myConn.State == System.Data.ConnectionState.Closed)
                myConn.Open();
            int rows = cmd.ExecuteNonQuery();

            if (rows > 0)
            {
                lblErr.Text = "record updated";
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
         protected void img_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        dob.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }
    }
