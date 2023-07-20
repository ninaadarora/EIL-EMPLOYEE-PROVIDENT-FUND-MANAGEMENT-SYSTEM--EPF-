<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Login.aspx.cs" Inherits="Login"  %>

  <asp:Content  ContentPlaceHolderid="head" runat="server">

    <title>Registration Form </title>

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" />
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <style>
        .panel-body {
            align-items: center;
            align-content: center;
            background-color: azure;
        }

        .grid {
            align-content: flex-start;
            align-items: center;
        }
    </style>


      </asp:Content>
   <asp:Content  ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  
        <div style="max-width: 100em">
<div style="max-height:300px";>
    

                <div style="grid-row-align:  start;">
                    <div class="panel panel-default">
                        <div class="panel-heading h4 text-primary text-center">
                            INFORMATION DETAILS
                        </div>
                    </div>
                </div>
</div>
            </div>


            <div class="panel-body">
                <div class="form-horizontal" role="form">
                    <div class="form-group">
                       
                             <div style="grid-row-align:  start;">
                            <label class="col-sm-2 control-label" for="txtID">Personid</label>
                            <div class="col-sm-4">
                                <asp:TextBox class="form-control" ID="txtID" runat="server" TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="ID cannot be blank" ControlToValidate="txtID" ForeColor="Red"></asp:RequiredFieldValidator>  
                            </div>
                                </div>
                        </div>
                    
                   
                    <div class="form-group">
                                <div style="grid-row-align:  start;">
   
                        <label class="col-sm-2 control-label" for="Fname">First Name</label>
                        <div class="col-sm-4">
                            <asp:TextBox class="form-control" ID="Fname" runat="server"></asp:TextBox>
                        </div>
                    </div>
                        </div>
                            
                    <div class="form-group">

                      
                        <label class="col-sm-2 control-label" for="Lname">Last Name</label>
                        <div class="col-sm-4">
                            <asp:TextBox class="form-control" ID="Lname" runat="server"></asp:TextBox>
                        </div>
                                
                           
                    </div>
                    <div class="form-group">
                      
                        <label class="col-sm-2 control-label" for="dob">D.O.B</label>
                        
                        <div class="col-sm-4 inline">
                            <asp:TextBox class="form-control" ID="dob" runat="server"></asp:TextBox>  <asp:CompareValidator id="dateValidator" runat="server"
  Type="Date" Operator="DataTypeCheck" ControlToValidate="dob"
  ErrorMessage="Please enter a valid date." ForeColor="Red">
</asp:CompareValidator>
                            <div class="col-sm-2">
                            <asp:ImageButton ID="img" runat="server" Height="17px" ImageUrl="~/Account/Calendar-output.png" OnClick="img_Click" Width="21px" />
                            <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged1" ShowGridLines="True" Width="220px">  
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />  
                                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />  
            <OtherMonthDayStyle ForeColor="#CC9966" />  
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />  
            <SelectorStyle BackColor="#FFCC66" />  
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />  
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />  
        </asp:Calendar>  

                        </div>
                            </div>
                    </div>
                     
                    
                    <div class="form-group">
                          
                        <label class="col-sm-2 control-label" for="Nominee">Nominee</label>
                        <div class="col-sm-4">
                            <asp:TextBox class="form-control" ID="Nominee" runat="server"></asp:TextBox>
                        </div>
                                </div>
                
                    <div class="form-group">
                      
                        <label class="col-sm-2 control-label" for="Salary">Salary</label>
                        <div class="col-sm-4">
                            <asp:TextBox class="form-control" ID="Salary" runat="server"></asp:TextBox>
                            <asp:RangeValidator runat="server" Type="Integer" 
MinimumValue="0" MaximumValue="1000000000" ControlToValidate="Salary" 
ErrorMessage="Value must be a whole number between 0 and 100000000" ForeColor="Red" />
                        </div>
                    </div>
                    <div class="form-group inline">
                        <label class="col-xs-2 control-label" for="City">City</label>
                        <div class="col-sm-4">
                            <asp:TextBox class="form-control" ID="City" runat="server"></asp:TextBox>

                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Label CssClass="label label-danger" ID="lblErr" runat="server"></asp:Label>

                        </div>
                    </div>

                    <div class="form-group inline">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button CssClass="btn btn-success " ID="btnReg" OnClick="btnReg_Click" runat="server" Text="Register"></asp:Button>


                        </div>
                    </div>
                    <div>
                    </div>
                    <div class="grid" >
                        <div style="align-content:center"">
                            <div style="align-items:center">
                                <div style="border-color:black">
                                    <div style="border-width:3em">
                                        <div style="background-color:aliceblue">
                                        
                                           
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" class="table table-bordered table-condensed table-responsive table-hover " AllowPaging="true" OnPageIndexChanging="GridView2_PageIndexChanging"  >
                                <Columns>
                                    <asp:BoundField ItemStyle-Width="150px" DataField="PERSONID" HeaderText="PERSONID" />
                                    <asp:BoundField ItemStyle-Width="150px" DataField="FIRSTNAME" HeaderText="FIRSTNAME" />
                                    <asp:BoundField ItemStyle-Width="150px" DataField="City" HeaderText="City" />
                                    <asp:BoundField ItemStyle-Width="150px" DataField="SALARY" HeaderText="SALARY" />
                                    <asp:BoundField ItemStyle-Width="150px" DataField="DOB" HeaderText="DOB" />
                              
                                </Columns>
                                
                            </asp:GridView>
                                           
                        </div>
                                        </div>
                            </div>
                                </div>
                            </div>
                        
                    </div>
                    <br />
                    <br />

                    
                </div>
            </div>
        
                
     
      

     </asp:Content>