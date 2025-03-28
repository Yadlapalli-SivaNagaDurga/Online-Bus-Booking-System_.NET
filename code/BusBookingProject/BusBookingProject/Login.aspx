<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BusBookingProject.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        body {
            /* Gradient background with lighter tones */
            background: -webkit-radial-gradient(circle, #88c2ff, #d6e7ff);
            background: -moz-radial-gradient(circle, #88c2ff, #d6e7ff);
            background: -ms-radial-gradient(circle, #88c2ff, #d6e7ff);
            height: 100vh;
            margin: 0;
        }

        .centered-form {
            margin-top: 10%;
        }

            .centered-form .panel {
                background: rgba(255, 255, 255, 0.9);
                box-shadow: rgba(0, 0, 0, 0.1) 0px 8px 16px;
                border-radius: 8px;
                padding: 20px;
            }

        label.label-floatlabel {
            font-weight: bold;
            color: #0096c7;
            font-size: 12px;
        }

        .input-group-addon {
            background-color: #f1f1f1;
            border: 1px solid #ccc;
        }

        .panel-title {
            font-size: 24px;
            font-weight: bold;
            color: #333;
            text-align: center;
        }

        .btn-success {
            background-color: #4caf50;
            border: none;
            color: white;
            padding: 12px 24px;
            font-size: 16px;
            width: 100%;
            border-radius: 5px;
        }

        .btn-success:hover {
            background-color: #45a049;
        }

        a {
            color: #007bff;
            font-size: 14px;
            text-align: center;
            display: block;
            margin-top: 20px;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="padding100" style="margin-top:3%">
        <div class="container">
            <div id="loginbox" style="margin-top: 10%;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-custom">
                        <div class="panel-title">
                            Sign In
                        </div>
                    </div>
                    <div style="padding-top: 30px" class="panel-body">
                        <asp:Label ID="lblErrorMsg" runat="server" /><br />
                        <br />
                        <asp:ValidationSummary ID="vsLogin" runat="server" CssClass="alert alert-danger" ShowSummary="true" ValidationGroup="vgLogin" />
                        <div id="loginform" class="form-horizontal" role="form">
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox runat="server" placeholder="Enter Mobile No" ID="txtUserId" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUserId" Display="None" ID="rfvLoginId" ValidationGroup="vgLogin"
                                    CssClass="text-danger" ErrorMessage="The email field is required." /><br />
                            </div>
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <asp:TextBox runat="server" ID="txtPassword" placeholder="Enter Password Here" TextMode="Password" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" Display="None" CssClass="text-danger" ID="rfvPassword"
                                    ErrorMessage="The password field is required." ValidationGroup="vgLogin" />
                            </div>
                            <div class="input-group">
                                <div class="checkbox">
                                    <label>
                                        <asp:CheckBox runat="server" ID="RememberMe" />
                                        <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me</asp:Label>
                                    </label>
                                </div>
                            </div>
                            <div  class="form-group">
                                <!-- Button -->
                                <div class="col-sm-12 controls">
                                    <asp:Button runat="server" ID="btnLogin" Text="Log in" CssClass="btn btn-success" style="width:auto;"   ValidationGroup="vgLogin" CausesValidation="True" OnClick="btnLogin_Click" /><br /><br />
                                    <a href="UserRegistration.aspx">Register as a new user</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
