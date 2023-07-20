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
using System.Web.SessionState;


public partial class empdetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void details_Click(object sender, EventArgs e)
    {
    }
    protected void details_Click1(object sender, EventArgs e)
    {
        OracleConnection myConn = new OracleConnection(System.Configuration.ConfigurationManager.ConnectionStrings["DSNTrainee"].ToString());


        string Sql = "";
        OracleCommand cmd = new OracleCommand(Sql, myConn);
        string dt = "";
        OracleDataAdapter da = new OracleDataAdapter();
        OracleDataReader dr;
        try
        {
            Session["id"] = txtID.ToString();
            Sql = "SELECT Firstname,salary,contribution,gross_salary FROM Trainee02 where PERSONID= '" + txtID.Text.Trim() + "' ";
            cmd.CommandText = Sql;
            cmd.Connection = myConn;
            if (myConn.State == System.Data.ConnectionState.Closed)
                myConn.Open();
            dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                dr.Read();
                
                String Firname = dr.GetString(dr.GetOrdinal("Firstname"));
                int salary = dr.GetInt32(dr.GetOrdinal("salary"));
                int contrib = dr.GetInt32(dr.GetOrdinal("Contribution"));
                int gsalary = dr.GetInt32(dr.GetOrdinal("Gross_salary"));
                contri.Text = contrib.ToString();
                sal.Text = salary.ToString();
                Fname.Text = Firname;
                gsal.Text = gsalary.ToString();
                int cal = contrib * 5;
                if (cal > 24000)
                {
                    Lbl.Text = ("Person is eligible to take Loan= " + cal.ToString());
                }
                else
                    Lbl.Text = "Person is not eligible to take the loan";
                
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