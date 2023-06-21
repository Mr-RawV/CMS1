<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateTeacher.aspx.cs" Inherits="CMS.User.UpdateList.UpdateTeacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <link href="/ui/css/style.css" rel="stylesheet" />
    <link href="/ui/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
            <h2>Teacher Detail</h2>
        </div>
        <div class="row">
        <div class="form-check col-4">
             <asp:Label Text="Name" runat="server" CssClass="form-label" />
            <asp:TextBox ID="Name" runat="server" CssClass="form-control" />
            <asp:Label Text="Contact" runat="server" CssClass="form-label" />
            <asp:TextBox ID="contact" runat="server" CssClass="form-control" />
            <asp:Label Text="Gender:" runat="server" CssClass="form-label" />
            <asp:RadioButtonList runat="server" ID="gender">
                <asp:ListItem Value="Male" Text="Male" />
                <asp:ListItem Value="Female" Text="Female" />
            </asp:RadioButtonList>     
        </div>
         <div class="form-check col-4">
            <asp:Label Text="Address"  runat="server" CssClass="form-label" />
            <asp:TextBox ID="address" runat="server" CssClass="form-control" />
            <asp:Label Text="Department" runat="server" CssClass="form-label" />
            <asp:TextBox ID="dept" runat="server" CssClass="form-control" />
            <asp:Label Text="Salary" runat="server" CssClass="form-label" />
            <asp:TextBox ID="salary" runat="server" CssClass="form-control" />
        </div>
            </div>
      <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="BtnSave_Click" CssClass="btn-light"/>
        </div>
    </form>
</body>
</html>
