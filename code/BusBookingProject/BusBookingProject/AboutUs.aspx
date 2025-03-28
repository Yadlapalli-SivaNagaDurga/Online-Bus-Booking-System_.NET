<%@ Page Title="About Us" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="BusBookingProject.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background: linear-gradient(to right, #e3f2fd, #bbdefb);
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            font-size: 1.3rem; /* Increased font size */
        }
        .navbar {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 5px 15px;
            font-size: 16px;
            height: 45px;
            background-color: white; /* Changed color from black to white */
        }
        .navbar a {
            color: black;
            text-decoration: none;
            font-size: 18px;
            font-weight: bold;
            padding: 0 15px;
            line-height: 45px;
        }
        .navbar a:hover {
            color: #BDE8CA;
        }
        .container {
            margin-top: 4%;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
        }
        .card {
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.15);
            padding: 40px; /* Increased padding */
            margin: 15px 0;
            width: 75%;
            max-width: 850px;
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
            text-align: center;
        }
        .card:hover {
            transform: translateY(-6px);
            box-shadow: 0px 10px 25px rgba(0, 0, 0, 0.25);
        }
        .card h4 {
            color: #004d99;
            border-bottom: 3px solid #004d99;
            padding-bottom: 6px;
            margin-bottom: 12px;
            font-size: 1.8rem; /* Increased font size */
            font-weight: bold;
            text-transform: uppercase;
        }
        .card p, .card ul {
            font-size: 1.4rem; /* Increased font size */
            line-height: 2.0;
            color: #333;
            text-align: justify;
        }
        .card ul {
            padding-left: 30px;
        }
        .card ul li {
            margin-bottom: 12px;
        }
        @media (max-width: 768px) {
            .card {
                width: 90%;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="card">
            <h4>Welcome</h4>
            <p>Welcome to <strong>Bus Booking Project</strong>! We are among the top 10 service providers for online bus booking in India. We aim to revolutionize the way people book their bus tickets, making travel easier and more convenient.</p>
        </div>

        <div class="card">
            <h4>Our Mission</h4>
            <p>Our mission is to provide an exceptional and seamless travel experience. By integrating modern technology with reliable transportation services, we strive to deliver the best online booking service for travelers in India.</p>
        </div>

        <div class="card">
            <h4>What Sets Us Apart</h4>
            <p>We are committed to delivering the highest level of customer satisfaction. Here are some reasons why we are trusted by our users:</p>
            <ul>
                <li>Our presence in all major cities across India ensures widespread service availability.</li>
                <li>We offer fast and easy booking with minimal steps.</li>
                <li>24/7 customer support to resolve your queries promptly.</li>
                <li>We collaborate with top bus operators, ensuring reliable and safe travel.</li>
                <li>Secure online payment options for smooth transactions.</li>
            </ul>
        </div>

        <div class="card">
            <h4>Our Vision</h4>
            <p>We envision becoming India's leading platform for online bus booking, offering the most reliable, user-friendly, and affordable services for travelers.</p>
        </div>

        <div class="card">
            <h4>Our Commitment to Service</h4>
            <p>Customer satisfaction is our top priority. We are dedicated to maintaining a smooth booking process, offering quick resolution for queries, and continuously improving our services.</p>
        </div>
    </div>
</asp:Content>
