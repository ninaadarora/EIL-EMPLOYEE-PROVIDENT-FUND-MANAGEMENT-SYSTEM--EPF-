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

public partial class Login : System.Web.UI.Page
{
    private string Sql;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.Visible = false;
        }  
        if (!IsPostBack)
        {
            BindGrid();
        }
    }
    private void BindGrid()
    {
        string Sql = "";

        OracleConnection myConn = new OracleConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConPF"].ToString());
        OracleCommand cmd = new OracleCommand(Sql,myConn);
       // OracleDataReader dr;
        Sql = "SELECT * FROM Trainee02";
        OracleDataAdapter da = new OracleDataAdapter();
       
       
        try
        {
             
             
              
            cmd.CommandText = Sql;
            cmd.Connection = myConn;
            if (myConn.State == System.Data.ConnectionState.Closed)
                myConn.Open();

            cmd.CommandText = Sql;
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();

            ///conn.Open();
            da.Fill(ds);
            ///conn.Close();
                
                GridView2.DataSource = ds;
                GridView2.DataBind();

           
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
    protected void OnPaging(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;
        this.BindGrid();
    }
    protected void btnReg_Click(object sender, EventArgs e)
    {
        OracleConnection myConn = new OracleConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConPF"].ToString());
        OracleCommand cmd = new OracleCommand();
        OracleDataReader dr;
        string Sql = "";
        string dt = "";

        try
        {
            Sql = "insert into  Trainee02  (PersonID,FirstName,LastName, DOB ,nominee ,Salary ,City) values  ('" + txtID.Text.Trim() + "','" + Fname.Text.Trim() + "','" + Lname.Text.Trim() + "','" + dob.Text.Trim() + "','" + Nominee.Text.Trim() + "','" + Salary.Text.Trim() + "','" + City.Text.Trim() + "')";
            cmd.CommandText = Sql;
            cmd.Connection = myConn;
            if (myConn.State == System.Data.ConnectionState.Closed)
                myConn.Open();
            int rows = cmd.ExecuteNonQuery();

            if (rows > 0)
            {
                lblErr.Text = "record inserted";
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

    protected void btndelete_Click(object sender, EventArgs e)
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
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        OracleConnection myConn = new OracleConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConPF"].ToString());
        OracleCommand cmd = new OracleCommand();
        OracleDataReader dr;
        string Sql = "";
        string dt = "";

        try
        {
            Sql = "update Trainee02 set Salary='" + Salary.Text.Trim() + "' WHERE PERSONID= '" + txtID.Text.Trim() + "' ";
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
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        OracleConnection myConn = new OracleConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConPF"].ToString());
        OracleCommand cmd = new OracleCommand();
        OracleDataReader dr;
        string Sql = "";
        string dt = "";

        try
        {
            Sql = "SELECT * FROM Trainee02 where PERSONID= '" + txtID.Text.Trim() + "' AND FIRSTNAME='" + Fname.Text.Trim() + "' ";
            cmd.CommandText = Sql;
            cmd.Connection = myConn;
            if (myConn.State == System.Data.ConnectionState.Closed)
                myConn.Open();
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();

                if (txtID.Text.Trim() == dr.GetValue(0).ToString() && Fname.Text.Trim() == dr.GetValue(1).ToString())
                {
                    Response.Redirect("About.aspx");
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
    protected void img_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible)
        {
            Calendar1.Visible = false;
        }
        else
        {
            Calendar1.Visible = true;
        }  
    }
   

    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;
        this.BindGrid();
    }
    protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
    {
        dob.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;  
    }
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.IsWeekend || e.Day.IsOtherMonth)
        {
            e.Day.IsSelectable = false;
            e.Cell.BackColor = System.Drawing.Color.Gray;
        }  
    }
    
}