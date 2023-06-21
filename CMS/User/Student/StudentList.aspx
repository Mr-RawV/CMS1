<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentList.aspx.cs" Inherits="CMS.User.Student.StudentList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Students List</title>
    <link href="/ui/bs5/css/bootstrap.css" rel="stylesheet" />
    <link href="/ui/css/style.css" rel="stylesheet" />
    <link href="/ui/css/TableStyle.css" rel="stylesheet" />
    <script src="/ui/bs5/js/bootstrap.min.js"></script>
</head>
<body>
    <div>
        <ul class="list-group list-group-horizontal-lg justify-content-center">
            <li class="list-group-item"><a href="/User/Student/BIMList.aspx" target="iframe">BIM</a></li>
            <li class="list-group-item"><a href="/User/Student/BBMList.aspx" target="iframe">BBM</a></li>
            <li class="list-group-item"><a href="/User/Student/BHMList.aspx" target="iframe">BHM</a></li>
            <li class="list-group-item"><a href="/User/Student/BCAList.aspx" target="iframe">BCA</a></li>
            <li class="list-group-item"><a href="/User/Student/CSITList.aspx" target="iframe">CSIT</a></li>
        </ul>
    </div>
    <div class="content">
        <iframe width="100%" height="300px" style="border:0px solid;" name="iframe"> 

        </iframe>
    </div>
</body>
</html>
