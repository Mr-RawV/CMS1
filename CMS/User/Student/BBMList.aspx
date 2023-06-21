﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BBMList.aspx.cs" Inherits="CMS.User.Student.BBMList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BBM Students</title>
    <link href="/ui/css/TableStyle.css" rel="stylesheet" />
          <link href="/ui/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="/ui/bootstrap/bootstrap.min.js"></script>
    <script type="text/javascript">
         function DoDelete(regNo)
         {
            document.getElementById("<%=hddRowID.ClientID %>").value = regNo;
            //document.getElementById("<%=btnDelete.ClientID %>"). click();
            __doPostBack('<%=btnDelete.UniqueID %>', '');
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server" />
        <div id="tbl" runat="server">
        </div>
        <asp:Button ID="btnDelete" Style="display:none" runat="server" OnClick="btnDelete_Click" />
        <asp:HiddenField ID="hddRowID" runat="server" />
    </form>
</body>
</html>
