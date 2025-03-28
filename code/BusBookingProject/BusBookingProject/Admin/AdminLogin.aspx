<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="BusBookingProject.Admin.AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }

        /* Full Page Layout */
        html, body {
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            background-color: #D4EDDA; /* Light pastel blue */
        }

        /* Navbar */
        .navbar {
            width: 100%;
            background: #FFFFFF; /* Light pastel green */
            padding: 15px 0;
            text-align: center;
            color: #000000;
            font-size: 22px;
            font-weight: bold;
            position: fixed;
            top: 0;
            left: 0;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        }

        /* Login Container */
        .login-container {
            background: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.3);
            text-align: center;
            width: 100%;
            max-width: 400px;
            margin-top: 80px;
        }

        .login-container h3 {
            color: #004AAD;
            margin-bottom: 20px;
        }

        .form-control {
            width: 100%;
            padding: 12px;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 16px;
            margin-bottom: 15px;
            transition: 0.3s;
        }

        .form-control:focus {
            border-color: #004AAD;
            box-shadow: 0px 0px 6px rgba(0, 74, 173, 0.5);
            outline: none;
        }

        .btn-custom {
            background-color: #004AAD;
            color: #000;
            width: 100%;
            padding: 12px;
            font-size: 18px;
            font-weight: bold;
            border: none;
            border-radius: 8px;
            transition: 0.3s;
        }

        .btn-custom:hover {
            background-color: #003580;
            cursor: pointer;
        }

        /* Footer */
        .footer {
            width: 100%;
            text-align: center;
            background: #FFFFFF;
            color: #000000;
            padding: 10px 0;
            position: fixed;
            bottom: 0;
            left: 0;
            box-shadow: 0px -4px 8px rgba(0, 0, 0, 0.2);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Navbar -->
    <div class="navbar">Admin Panel - Bus Booking System</div>

    <!-- Login Form -->
    <div class="login-container">
        <h3>Admin Login</h3>
        <asp:Label ID="lblErrorMsg" runat="server" CssClass="text-danger" /><br />
        <asp:ValidationSummary ID="vsLogin" runat="server" CssClass="alert alert-danger" ShowSummary="true" ValidationGroup="vgLogin" />

        <div class="form-group">
            <asp:TextBox runat="server" ID="txtUserId" placeholder="Enter Admin ID" CssClass="form-control" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUserId" Display="None" ID="rfvLoginId" ValidationGroup="vgLogin" ErrorMessage="Admin ID is required." />
        </div>
        <div class="form-group">
            <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" placeholder="Enter Password" CssClass="form-control" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" Display="None" ID="rfvPassword" ValidationGroup="vgLogin" ErrorMessage="Password is required." />
        </div>
        <div class="form-group">
            <asp:Button runat="server" ID="btnLogin" Text="Log in" CssClass="btn btn-custom" ValidationGroup="vgLogin" OnClick="btnLogin_Click" />
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">&copy; 2025 Bus Booking System - Admin Panel</div>
</asp:Content>
