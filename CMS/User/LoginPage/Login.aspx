<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CMS.User.LoginPage.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="/ui/bootstrap/css/bootstrap.css" rel="stylesheet" />
    <script src="/ui/bootstrap/js/bootstrap.min.js"></script>
    <link href="/ui/font-awesome/font-awesome.min.css" rel="stylesheet" />
    <link href="/ui/css/style.css" rel="stylesheet" />
</head>
<body>
    <div class="jumbotron-fluid col-md-12 text-center">
        <div class="container">
            <h1>NCCS College System</h1>
            <p>Working Towards Excellency</p>
        </div>
    </div> 
    <div class ="container2">
        <div class="row">
            <div class="account-col">
                <div class="login-head"><h1>Login</h1></div>
                <div id="msg" runat="server" class="error">
                        <div class="alert alert-danger" runat="server" id="errMsg" visible="false"></div>
                    </div>
                    <div class="login-logo">
                        <i class="fa fa-user" aria-hidden="true"></i>
                    </div>
                <div class="login-body">
                    <form role="form" id="loginForm" runat="server">
                    <div class="form-group">
                        <span class="glyphicon glyphicon-user"></span>
                        <asp:Label Text="UserName" runat="server" />
                        <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <asp:Label Text="Password" runat="server"/>
                        <asp:TextBox runat="server" ID="Pwd" TextMode="Password" CssClass="form-control" />
                    </div>
                    <asp:Button ID="btnLogin" class="btn btn-default" runat="server" Text="Submit" OnClick="btnLogin_Click" />
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script>
        // Define an array of background images to use
        var bgImages = ['/Image/1.jpg', '/Image/6.jpg'];
        var currentIndex = 0;
       

		// Change the background image every 5 seconds
		setInterval(function() {
			currentIndex = (currentIndex + 1) % bgImages.length;
			document.querySelector('.container2').style.backgroundImage = 'url(' + bgImages[currentIndex] + ')';
		}, 5000);
 
    </script>
</body>
</html>
