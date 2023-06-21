<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateList.aspx.cs" Inherits="CMS.User.UpdateList.UpdateList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="/ui/bs5/css/bootstrap.css" rel="stylesheet" />
    <link href="/ui/css/style.css" rel="stylesheet" />
    <link href="/ui/css/TableStyle.css" rel="stylesheet" />
    <script src="/ui/bs5/js/bootstrap.min.js"></script>
</head>
<body>
    <div>
        <ul class="list-group list-group-horizontal-lg justify-content-center">
            <li class="list-group-item"><a href="/User/UpdateList/UpdateStudent.aspx" target="iframe">Update Student</a></li>
            <li class="list-group-item"><a href="/User/UpdateList/UpdateTeacher.aspx" target="iframe">Update Teacher</a></li>
            <li class="list-group-item"><a href="/User/UpdateList/UpdateStaff.aspx" target="iframe">Update Staff</a></li>
        </ul>
    </div>
    <div class="content1">
        <iframe width="100%" height="900px" style="border:0px solid;" name="iframe"> 

        </iframe>
    </div>
</body>
</html>
