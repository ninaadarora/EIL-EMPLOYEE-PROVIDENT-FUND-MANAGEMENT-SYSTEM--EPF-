<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Account_Update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <style>
        .form-group {
            align-items: center;
            align-content: center;
            background-color:  #99BBD5;
        }

        .panel-body {
            align-items: center;
            align-content: center;
            background-color:  #99BBD5;
            margin-left: 10px;
        }
    </style>
    <title></title>
</head>
<body>
      <nav  style= "background:black;" class="navbar navbar-default">
            <div class="container-fluid">
                <!--Navbar Header Start Here-->
               <div class="container">
                <div style="background-color:black;width:100%">
                    <a runat="server" href="~/"> <img style="margin-right:20px"  src="https://engineersindia.com/assets/images/eil.png"/><img src="https://engineersindia.com/assets/images/azadi.png" /></a><h2  style="color:white;font-family:sans-serif;display:inline-block;align-content:center;margin-top:30px">Engineers India Limited EPF</h2>
                        </div>
                <div class="navbar-header" >
                    
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                   </div>
                </div>
                   <!--Menu Start Here-->
                <div class="navbar-collapse collapse" style="margin-top:10px">
                    <ul class="nav navbar-nav">
                        <li><a style="display:inline-block;align-content:center; color:white;"  onMouseOver="this.style.color='grey'"  onMouseOut="this.style.color='white'" runat="server" href="welcomepage.aspx"><h4>Home</h4></a></li>
                        <li><a style="display:inline-block;align-content:center; color:white;" onMouseOver="this.style.color='grey'"  onMouseOut="this.style.color='white'" runat="server" href="Delete.aspx"><h4>Delete</h4></a></li>
                        <li class="active"><a style="display:inline-block;align-content:center;color:black;" runat="server" href="Update.aspx"><h4>Update</h4></a></li>
                    </ul>
            </div>
        </nav>
    <form id="form1" runat="server">
          <div style="max-width:100%;">
            <div >
                <div style="max-height: 5px">

                    <div style="border-top: 5px;">
                        <div style="margin-top: 5px;">
                            <div style="grid-row-align: center;">
                                <div class="panel panel-default" style="background-color:#3A4F95;">
                                    <div class="panel-heading h4 text-primary text-center">
                                        Enter the Details to be Updated
                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
              </div>
                        <div class="form-group" style="margin-top:100px;background-color: #99BBD5;margin-left:30px; ">
                           
                            
                            <label class="col-sm-2 control-label" for="PersonID">Employee ID</label>
                                
                            <div class="col-sm-4">
                                
                                <asp:TextBox style="margin-left:-30px;" class="form-control" ID="txtID" runat="server" TextMode="Number"></asp:TextBox>
                                    
                            </div>
                        </div>
                    </div>
                    <div class="form-group" style="margin-left:30px;">
                        <label class="col-sm-2 control-label" for="Fname">First Name</label>
                        <div class="col-sm-4">
                            <asp:TextBox style="margin-left:-30px;" class="form-control" ID="Fname" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group" style="margin-left:30px;">
                        <label class="col-sm-2 control-label" for="Lname">Last Name</label>
                        <div class="col-sm-4">
                            <asp:TextBox style="margin-left:-30px;" class="form-control" ID="Lname" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    
                     <div class="form-group" style="margin-left:30px;">
                                        <label class="col-sm-2 control-label" for="Salary">Salary</label>
                                        <div class="col-sm-4">
                                            <asp:TextBox style="margin-left:-30px;" class="form-control" ID="Salary" runat="server"></asp:TextBox>
                                        </div>
                   
                      <div class="form-group" style="margin-left:0px;">
                                        <label class="col-sm-2 control-label" for="dob">D.O.B</label>
                                        <div class="col-sm-4">
                                            <asp:TextBox style="margin-left:-30px;" class="form-control" ID="dob" runat="server"></asp:TextBox>
                                            <div>
                                            <asp:ImageButton ID="img" runat="server" Height="17px" ImageUrl="~/Account/Calendar-output.png" OnClick="img_Click" Width="21px" />
                                            <asp:Calendar ID="Calendar1" runat="server"
                                                OnSelectionChanged="Calendar1_SelectionChanged" Visible="False"></asp:Calendar>
                                        </div>
                                            </div>
                                    </div>
                    <div>
                        <div>
                                            </div>
                    <div class="form-group" style="margin-left:30px;">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Label style="margin-left:-30px;" CssClass="label label-danger" ID="lblErr" runat="server"></asp:Label>

                        </div>
                    </div>
                            <div class="form-group inline">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <asp:Button style="margin-left:-25px;padding-left:20px;padding-right:20px;margin-top:20px;" CssClass="btn btn-success " ID="btnUpdate" OnClick="btnUpdate_Click" runat="server" Text="Update"></asp:Button>
                                </div>

                            </div>
                        </div>
                    </div>
    <div>
    
    </div>
        <br />
        <br />
        <br />
        <br />
     <br />
          <br />
        <br />
        <br />
        <br />
        <br />
        <br />
         <br 
         <br />
         <br />
         <br />
         <br />
         <br />
        <div style="display:block;">
          <div class="container body-content" style="align-content:center;align-items:center;width">
            <hr />
            <footer>
               <p  >&copy; <%: DateTime.Now.Year %> - EIL Employee Provident Funds</p>
            </footer>
        </div>
            </div>
    </form>
</body>
</html>
