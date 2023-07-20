<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="Account_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="bootstrap.css" />
    <link rel="stylesheet" href="Site.css" />
    <link rel="stylesheet" href="bootstrap.min.css" />
</head>
<body>
    <div style="background-color:#1F231B;width:100%;margin-top:-50px;">
                    <a runat="server" href="~/"> <img style="margin-right:20px;padding-bottom:10px;margin-left:10px"  src="https://engineersindia.com/assets/images/eil.png"/><img src="https://engineersindia.com/assets/images/azadi.png" /></a><h2  style="color:white;font-family:sans-serif;display:inline-block;align-content:center;margin-top:30px">Engineers India Limited EPF</h2>
                        </div>
         
        <div class="navbar-header" style="background-color:black;margin-top:10px;" >
                    
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                   
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a style="display:inline-block;align-content:center" runat="server" href="home.aspx"><h4>Home</h4></a></li>
                        <li><a style="display:inline-block;align-content:center" runat="server" href="https://engineersindia.com/contact-us"><h4>Contact</h4></a></li>
                        <li><a style="display:inline-block;align-content:center" runat="server" href="userlogin.aspx"><h4>Login</h4></a></li>
                        </ul>
                       </div>
           
    <form id="form1" runat="server">
    <div>
     <div style="width: 100%; background-color: lightblue;color:white">  
     <marquee direction="left"><strong> Welcome to Employee Provident Funds Management System of Engineers India Limited, Delhi</strong></marquee></div>  
    <div class="jumbotron">
    
        <h1>Employee Provisional Funds</h1>
        <p class="lead">The Employees' Provident Fund came into existence with the promulgation of the Employees' Provident Funds Ordinance on the 
            15th November, 1951. It was replaced by the Employees' Provident Funds Act, 1952. The Employees' Provident Funds Bill was introduced in
             the Parliament as Bill Number 15 of the year 1952 as a Bill to provide for the institution of provident funds for employees in factories
             and other establishments. The Act is now referred as the Employees' Provident Funds & Miscellaneous Provisions Act, 1952 which extends to
             the whole of India. The Act and Schemes framed there under are administered by a tri-partite Board known as the Central Board of Trustees, 
            Employees' Provident Fund,consisting of representatives of Government (Both Central and State), Employers, and Employees.</p>
        <p><a href="https://www.epfindia.gov.in/site_en/index.php" class="btn btn-primary btn-large">Learn more &raquo;</a></p>
    </div>
   
    <div class="row" style="margin-left:30px;">
        <div class="col-md-4" style=" background: #eee; box-shadow: 0 8px 8px -4px lightgrey;padding-bottom:57px;">
            <h2>About Us</h2>
            <p>
                We are a leading engineering consultancy and EPC company, delivering world-
                class projects for our clients across the globe
            </p>
            <p>
                <a class="btn btn-default" href="https://engineersindia.com/about-eil">Learn more &raquo;</a>
            </p>
        </div>
       
        <div class="col-md-4" style=" background: #eee; box-shadow: 0 8px 8px -4px lightgrey;">
            <h2>PayRoll Data </h2>
            <p>
                As per the provisions of the Act, a National Social Security Board has been constituted for recommending formulation 
                of social security schemes viz. Life and disability cover, health and maternity benefits, old age protection and any 
                other benefit as may be determined by the Government for unorganized workers.
            </p>
            <p>
                <a class="btn btn-default" href="https://labour.gov.in/payroll-data-epfo">Learn more &raquo;</a>
            </p>
        </div>
           <img style="margin-top:50px;margin-left:80px;" src="data:image/png;base64,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" />
        <div class="col-md-4" style=" background: #eee; box-shadow: 0 8px 8px -4px lightgrey;padding-bottom:57px;margin-top:5px;margin-left:1px;padding-right:100px;">
            <h2>Latest News</h2>
            <p>
                Stay updated with all the latest news concerning the Employee Provident Fund.
            </p>
            <p>
                <a class="btn btn-default" href="https://economictimes.indiatimes.com/defaultinterstitial.cms">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4" style=" background: #eee; box-shadow: 0 8px 8px -4px lightgrey;padding-bottom:78px;margin-top:5px;margin-left:0px;">
            <h2>Apply for loans</h2>
            <p>
                Stay tuned with us.

            </p>
            <p>
                <a class="btn btn-default" href="#coming">Learn more &raquo;</a>
            </p>
        </div>
       <img style="margin-top:50px;;margin-left:80px;" src=" https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFveZXViAIX3i5Pg726jUVxADCGu-2Qizndw&usqp=CAU" />
            </div>
    </div>
    </form>
</body>
</html>
