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


public partial class Account_welcomepage : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("userlogin.aspx");

            }
            
        }
        if (!IsPostBack)
        {
            txtID.Text = string.Empty;
            netsal.Text = string.Empty;
        }
    }
   
    double sala, etf, etfamt, nsal;
    protected void btnReg_Click(object sender, EventArgs e)
    {
        OracleConnection myConn = new OracleConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConPF"].ToString());
       
        
        string Sql = "";
        OracleCommand cmd = new OracleCommand(Sql, myConn);
        string dt = "";
        OracleDataAdapter da = new OracleDataAdapter();
        OracleDataReader dr;
        try
        {
            Session["id"] = txtID.ToString();
            Sql = "SELECT salary FROM Trainee02 where PERSONID= '" + txtID.Text.Trim() +  "' ";
            cmd.CommandText = Sql;
            cmd.Connection = myConn;
            if (myConn.State == System.Data.ConnectionState.Closed)
                myConn.Open();
            dr = cmd.ExecuteReader();
        
            if (dr.HasRows)
            {
                dr.Read();

                
                    int salary =dr.GetInt32(dr.GetOrdinal("salary"));
                 
                   
                    nsal = salary * 0.12;
                    netsal.Text = nsal.ToString();
                    double gross = salary - nsal;
                    gsal.Text = gross.ToString();
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
    protected void save_Click(object sender, EventArgs e)
    {
        OracleConnection myConn = new OracleConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConPF"].ToString());
        OracleCommand cmd = new OracleCommand();
        OracleDataReader dr;
        string Sql = "";
        string dt = "";

        try
        {
            Sql = "update Trainee02 set contribution='" + netsal.Text.Trim() + "',  Gross_salary='" + gsal.Text.Trim() +  "'WHERE PERSONID= '" + txtID.Text.Trim() + "' ";
            cmd.CommandText = Sql;
            cmd.Connection = myConn;
            if (myConn.State == System.Data.ConnectionState.Closed)
                myConn.Open();
            int rows = cmd.ExecuteNonQuery();
            if (rows > 0)
            {
                lblErr.Text = "record saved";
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

    protected void logout_Click(object sender, EventArgs e)
    {
        
        Session.Abandon();
        Session.Remove("id");
        
        Response.Redirect("userlogin.aspx");
    }
    
    }

    

