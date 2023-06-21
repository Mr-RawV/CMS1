<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="CMS.User.DashBoardPage.DashBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DashBoard</title>
    <link href="/ui/css/style.css" rel="stylesheet" />
    <link href="/ui/bs3/css/bootstrap.min.css" rel="stylesheet" />
    <script src="/ui/bs3/js/bootstrap.min.js"></script>
    <link href="/ui/font-awesome/font-awesome.min.css" rel="stylesheet" />
    <style type="text/css"> 
        .footer
        {
        background-color:gray;
        width:100%;
        height:50px;
        font-size:20px;
        text-align:center;
        line-height:50px;
        position:fixed;
        bottom:0px;
        left:0px;
        right:0px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">NCCS</a>
            </div>
            <ul class="nav navbar-nav">
                <li><a href="#">Home</a></li>
                <li><a href="/User/Student/StudentList.aspx" target="frame">Student Detail</a></li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="/User/Faculty/Faculty.aspx" target="frame">Faculty<span class="caret"></span></a>
                     <ul class="dropdown-menu">
                        <li><a href="#">Page 1-1</a></li>
                        <li><a href="#">Page 1-2</a></li>
                        <li><a href="#">Page 1-3</a></li>
                    </ul>
                </li>
                <li><a href="/User/Teacher/teacherList.aspx" target="frame">Teachers</a></li>
                <li><a href="/User/Staff/StaffList.aspx" target="frame">Staff</a></li>
                <li><a href="/User/UpdateList/UpdateList.aspx" target="frame">Update Members</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-user"></span>Admin</a></li>
                <li><a href="../LoginPage/Login.aspx"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
            </ul>
        </div>
    </nav>
    <div class="content">
<iframe width="100%" height="900px" style="border:0px solid;" name="frame"> </iframe>
</div>

<div class="footer"> 
	© 2001-2023 NCCS. All Rights Reserved.
</div>
</body>
</html>
