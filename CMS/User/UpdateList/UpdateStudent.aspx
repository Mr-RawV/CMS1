<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateList.aspx.cs" Inherits="CMS.User.UpdateList.UpdateList" %>

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
            <h2>Student Detail</h2>
        </div>
        <div class="row">
        <div class="form-check col-4">
            <asp:Label Text="RollNo"  runat="server" CssClass="form-label" />
            <asp:TextBox ID="roll" runat="server" CssClass="form-control" />
            
            <asp:Label Text="Address"  runat="server" CssClass="form-label" />
            <asp:TextBox ID="address" runat="server" CssClass="form-control" />
            <asp:Label Text="Faculty" runat="server" CssClass="form-label"/>
            <asp:DropDownList ID="ddlfaculty" runat="server" CssClass="form-control">
                <asp:ListItem Value="BIM" Text="BIM" />
                <asp:ListItem Value="BHM" Text="BHM" />
                <asp:ListItem Value="BCA" Text="BCA" />
                <asp:ListItem Value="BBM" Text="BBM" />
                <asp:ListItem Value="CSIT" Text="CSIT" />
                </asp:DropDownList>
            <asp:Label Text="Gender:" runat="server" CssClass="form-label" />
            <asp:RadioButtonList runat="server" ID="gender">
                <asp:ListItem Value="Male" Text="Male" />
                <asp:ListItem Value="Female" Text="Female" />
            </asp:RadioButtonList>     
        </div>
         <div class="form-check col-4">
            <asp:Label Text="Name" runat="server" CssClass="form-label" />
            <asp:TextBox ID="Name" runat="server" CssClass="form-control" />
            <asp:Label Text="Contact" runat="server" CssClass="form-label" />
            <asp:TextBox ID="contact" runat="server" CssClass="form-control" />
            <asp:Label Text="Semester" runat="server" CssClass="form-label" />
            <asp:TextBox ID="sem" runat="server" CssClass="form-control" />
             <asp:Label Text="Batch" runat="server" CssClass="form-label" />
            <asp:TextBox ID="batch" runat="server" CssClass="form-control" />
        </div>
            </div>
      <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="BtnSave_Click" CssClass="btn-light"/>
    </form>
</body>
</html>
