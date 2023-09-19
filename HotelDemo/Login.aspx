﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HotelDemo.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="msapplication-tap-highlight" content="no" />
    <title>Login | Hotel</title>
    <!-- CORE CSS-->
    <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection" />
    <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection" />
    <!-- Custome CSS-->
    <link href="css/layouts/page-center.css" type="text/css" rel="stylesheet" media="screen,projection" />
</head>
<body class="grey">
    <div id="login-page" class="row">
        <div class="col s12 z-depth-4 card-panel">
            <form id="formLogin" class="login-form" runat="server">
                <div class="row">
                    <div class="input-field col s12 center">
                        <p class="center login-form-text">Hotel Login</p>
                    </div>
                </div>
                <div class="row margin">
                    <div class="input-field col s12">
                        <i class="mdi-social-person-outline prefix"></i>
                        <asp:TextBox runat="server" TextMode="Email" data-error=".errorEmail" ID="txtEmail"></asp:TextBox>
                        <div class="errorEmail"></div>
                        <label for="txtEmail" class="center-align">Email</label>
                    </div>
                </div>
                <div class="row margin">
                    <div class="input-field col s12">
                        <i class="mdi-action-lock-outline prefix"></i>
                        <asp:TextBox runat="server" TextMode="Password" data-error=".errorPassword" ID="txtPassword"></asp:TextBox>
                        <div class="errorPassword"></div>
                        <label for="txtPassword">Password</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12 m12 l12  login-text">
                        <asp:CheckBox runat="server" ID="chkRememberme" />
                        <label for="chkRememberme">Remember me</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <asp:Button runat="server" ID="btnLogin" Text="Login" OnClick="btnLogin_Click" class="btn cyan waves-effect waves-light right"></asp:Button>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s6 m6 l6">
                        <p class="margin medium-small"><a href="register">Register Now !</a></p>
                    </div>

                    <div class="input-field col s12 centertext">
                        <asp:Label runat="server" ID="lblError" ForeColor="Red"></asp:Label>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- jQuery Library -->
    <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
    <!--materialize js-->
    <script type="text/javascript" src="js/materialize.js"></script>

    <script type="text/javascript" src="js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="js/additional-methods.min.js"></script>
    <script src="js/CustomValidation.js"></script>
</body>
</html>
