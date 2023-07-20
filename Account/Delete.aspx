<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Delete.aspx.cs" Inherits="Account_Delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Delete</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <style>
        .form-group {
            align-items: center;
            align-content: center;
            background-color:#E2EDF0;
        }

        .panel-body {
            align-items: center;
            align-content: center;
            background-color: #E2EDF0;
       
            max-width: 100%;
            grid-row-align: end;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
       
   <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
       
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
                        <li class="active"><a style="display:inline-block;align-content:center; color:black;" runat="server" href="Delete.aspx"><h4>Delete</h4></a></li>
                        <li><a style="display:inline-block;align-content:center;color:white;" onMouseOver="this.style.color='grey'"  onMouseOut="this.style.color='white'" runat="server" href="Update.aspx"><h4>Update</h4></a></li>
                    </ul>
            </div>
        </nav>
        
        
        
         <div style="max-width:100%">
<div style="max-height:300px";>
                <div style="grid-row-align:  start;">
                    <div class="panel panel-default" style="background-color:#3A4F95;">
                        <div class="panel-heading h4 text-primary text-center">
                           Enter the Details to be Deleted
                        </div>
                    </div>
                </div>
</div>
            </div>


            <div class="panel-body">
                <div class="form-horizontal" role="form">
                    <div class="form-group" >
                       
                             <div style="grid-row-align:start;">
                            <label class="col-sm-2 control-label" for="txtID">Employee ID</label>
                            <div class="col-sm-4">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" >
<ContentTemplate>
                                   <asp:TextBox class="form-control" ID="txtID" runat="server" TextMode="Number"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="ID cannot be blank" ControlToValidate="txtID" ForeColor="Red"></asp:RequiredFieldValidator>  
    </ContentTemplate>
</asp:UpdatePanel>
                            </div>
                                </div>
                        </div>
                    
                   
                    <div class="form-group" style="margin-top:-10px;">
                                <div style="grid-row-align:  start;">
   
                        <label class="col-sm-2 control-label" for="Fname">First Name</label>
                        <div class="col-sm-4">
                            <asp:TextBox class="form-control" ID="Fname" runat="server"></asp:TextBox>
                        </div>
                    </div>
                        </div>
                            
                    <div class="form-group" style="margin-top:25px;">

                       <div style="grid-row-align:  start;">
                        <label class="col-sm-2 control-label" for="Lname">Last Name</label>
                        <div class="col-sm-4">
                            <asp:TextBox class="form-control" ID="Lname" runat="server"></asp:TextBox>
                        </div>
                           </div>
                                
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Label CssClass="label label-danger" ID="lblErr" runat="server"></asp:Label>

                        </div>
                    </div>
                    <div>
                        <div>
                            <div class="form-group inline">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <asp:Button CssClass ="btn btn-danger " style="padding-left:20px;padding-right:20px;" ID="btnDelete" OnClick="btnDelete_Click" runat="server" Text="Delete"></asp:Button>
                                </div>

                            </div>
                        </div>
                    </div>
                    </div>
                </div>
          <div class="container body-content" style="align-content:center;align-items:center;width">
            <hr />
            <footer>
               <p  >&copy; <%: DateTime.Now.Year %> - EIL Employee Provident Funds</p>
            </footer>
        </div>
    </form>
</body>
</html>
