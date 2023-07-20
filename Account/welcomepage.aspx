<%@ Page Language="C#" AutoEventWireup="true" CodeFile="welcomepage.aspx.cs" Inherits="Account_welcomepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <style>
        .panel-body {
            align-items: center;
            align-content: center;
            background-color: white;
        }

        .grid {
            align-content: flex-start;
            align-items: center;
        }

        .cal {
            align-content: center;
        }
        .navbar-header{
            margin-top:10px;
        }
       
    </style>
</head>
<body >

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
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li  class="active"><a style="display:inline-block;align-content:center" runat="server" href="../Login.aspx"><h4>Home</h4></a></li>
                        <li><a style="display:inline-block;align-content:center; color:white;" onMouseOver="this.style.color='grey'"  onMouseOut="this.style.color='white'" runat="server" href="Delete.aspx"><h4>Delete</h4></a></li>
                        <li><a style="display:inline-block;align-content:center;color:white;" onMouseOver="this.style.color='grey'"  onMouseOut="this.style.color='white'" runat="server" href="Update.aspx"><h4>Update</h4></a></li>
                    </ul>
            </div>
        </nav>
         <!--Navbar Header End Here-->
        <div style="max-width: 100em">
            <div style="max-height: 300px;">


                <div style="grid-row-align: start;">

                    <div class="panel panel-default" style="background-color:#3A4F95;">
                        <div class="panel-heading h4 text-primary text-center">
                            Enter Information of the Employee
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="panel-body" style="max-width:100%; background-color:#E2EDF0;">
            <div class="form-horizontal" role="form">
                <div class="form-group">

                    <div style="grid-row-align: start;">
                        <label class="col-sm-2 control-label" for="txtID">Employee ID</label>
                        <div class="col-sm-2">
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <asp:TextBox class="form-control" ID="txtID" runat="server" TextMode="Number"></asp:TextBox>
                                </ContentTemplate>
                            </asp:UpdatePanel>

                        </div>
                    </div>
                </div>


                <div class="form-group">
                    <div style="grid-row-align: start;">
                        <label class="col-sm-2 control-label"></label>

                        <div class="col-sm-2">

                            <asp:Button style="margin-top:20px; margin-bottom:20px;" CssClass="btn btn-success " ID="btnReg" OnClick="btnReg_Click" runat="server" Text="Calculate"></asp:Button>

                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <div style="align-self: center">
                            <asp:UpdatePanel ID="UpdatePanel4" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <asp:Label CssClass="label label-danger" ID="lblErr" runat="server"></asp:Label>
                                </ContentTemplate>
                            </asp:UpdatePanel>

                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="cal">



                        <label class="col-xs-2 control-label" for="netsal">PF Amount</label>
                        <div class="col-xs-2">
                            <div style="align-content: flex-end">
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <asp:TextBox class="form-control" ID="netsal" runat="server"></asp:TextBox>
                                    </ContentTemplate>
                                </asp:UpdatePanel>

                                <br />
                                <br />
                                <br />
                                <br />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="cal" style="margin-left:300px;">



                            <label class="col-xs-2 control-label" for="gsal">Salary</label>
                            <div class="col-xs-2">
                                <div style="align-content: flex-end">
                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:TextBox  class="form-control" ID="gsal" runat="server"></asp:TextBox>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>


                                </div>
                            </div>
                            <div class="form-group inline">
                                <div class="col-sm-offset-2 col-sm-10">

                                    <asp:Button style="margin-left:-230px;padding-right:20px;padding-left:20px;margin-top:-80px;" CssClass="btn btn-success " ID="save" OnClick="save_Click" runat="server" Text="Save"></asp:Button>

                                    <br />
                                    <br />

                                </div>


                                <div class="form-group">
                                    <div style="grid-row-align: start;">
                                        <label class="col-sm-2 control-label"></label>

                                        <div class="col-sm-2">
                                            <asp:Button  style="margin-left:-220px;padding-right:20px;padding-left:20px;margin-top:-20px;" CssClass ="btn btn-danger " ID="logout" OnClick="logout_Click" runat="server" Text="Logout"></asp:Button>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
            </div>

             <div class="container body-content" style="align-content:center;align-items:center;width:100%">
            <hr />
            <footer>
               <p  >&copy; <%: DateTime.Now.Year %> - EIL Employee Provident Funds</p>
            </footer>
        </div>
    </form>
</body>
</html>
