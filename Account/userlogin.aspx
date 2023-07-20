<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="userlogin.aspx.cs" Inherits="Account_userlogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>  </title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
     <style>
    .jumbotron{
        width:100%;
     background: #699cc2;
    }
     </style>
</head>

<body >
    <form id="form1" runat="server">
      <div style="max-width: 100em">
      <div style="max-height:300px";>
                <div style="grid-row-align:  start;">
                    <div class="panel panel-default">
                    
                            
                <div style="background-color:#1F231B;width:100%">
                    <a runat="server" href="~/"> <img style="margin-right:20px;padding-bottom:10px;margin-left:10px"  src="https://engineersindia.com/assets/images/eil.png"/><img src="https://engineersindia.com/assets/images/azadi.png" /></a><h2  style="color:white;font-family:sans-serif;display:inline-block;align-content:center;margin-top:30px">Engineers India Limited EPF</h2>
                        </div>
           
                    </div>
                </div>
           </div>
            </div>
        <div class="navbar-header" style="background-color:black;" >
                    
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                   
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a style="display:inline-block;align-content:center" runat="server" href="home.aspx"><h4>Home</h4></a></li>
                        <li><a style="display:inline-block;align-content:center" runat="server" href="https://engineersindia.com/contact-us"><h4>Contact</h4></a></li>
                        <li class="active"><a style="display:inline-block;align-content:center" runat="server" href="userlogin.aspx"><h4>Login</h4></a></li>
                    </ul>
                       </div>
           
          <div style="width: 100%; background-color: lightblue;color:white; margin-right:-300px;">
        <marquee direction="left"><strong> Welcome to Employee Provident Funds Management System Login page of Engineers India Limited, Delhi</strong></marquee></div>  
     <br />
        <div class="container">

 
        
        <div class="jumbotron">
                           <div class="loginn">
                         
                            <label style="margin-top:5px;" class="col-sm-2 control-label" for="txtID">Employee ID</label>
                           
                                <asp:TextBox style="width:200px;" class="form-control" ID="txtID" runat="server" TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="ID cannot be blank" ControlToValidate="txtID" ForeColor="Red"></asp:RequiredFieldValidator>  
                          
                      
                      
                               
                           <label style="margin-top:30px;" class="col-sm-2 control-label" for="FNAME">Password</label>
                       
                            <asp:TextBox style="width:200px;" class="form-control" ID="FNAME" TextMode="Password" runat="server"></asp:TextBox>
                             <br />
                       
                            <asp:Label CssClass="label label-danger" ID="lblErr" runat="server"></asp:Label>
                    
                           
                            <asp:Button style="margin-left:200px;" CssClass="btn btn-success " ID="submit" OnClick="submit_Click" runat="server" Text="Login"></asp:Button>
                            </div>
                      </div>
        <div style="float:right;position:absolute;margin-top:-250px;margin-left:600px;"><img width="400" height="200" src="eil_eng_logo_1.jpg" alt="logo /></div>
         <br />
       </div>
            </form>
     <div class="container body-content" style="align-content:center;align-items:center;width:100%;">

            <hr />
            <footer>
               <p  >&copy; <%: DateTime.Now.Year %> - EIL Employee Provident Funds</p>
            </footer>
        </div>

          </body>
       </html>
