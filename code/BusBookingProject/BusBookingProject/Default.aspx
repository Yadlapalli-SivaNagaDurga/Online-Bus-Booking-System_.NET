<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BusBookingProject.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:6%">
        <div class="row">
            <div class="col-lg-12">
                <asp:Image ID="imgBus" ImageAlign="AbsMiddle" ImageUrl="~/img/banner-home-1.jpg" style="width:100%" runat="server" />
            </div>
            <div class="col-lg-12" style="margin-top:2%">
                <div class="panel panel-default">
                    <div class="panel-heading">
                         <div class=" panel-title">
                        <h3>Introduction About Online Bus Booking</h3>
                    </div>
                       </div>
                    <div class="panel-body">
                        <p style="font-size:large">
                         The Online Bus Booking System is a web-based application designed to streamline the process of
                         enables users to book seats instantly, check real-time availability, and access important travel
                         information, ensuring a seamless and hassle-free experience.<br />
                         Buses play a crucial role in transportation, serving various purposes such as public transit, private hire,
                         school transport, tourism, and promotional campaigns. Whether for daily commutes, long-distance
                         travel, or special events, this system simplifies ticket booking, making travel more convenient and
                         accessible for everyone.<br />
                         With a user-friendly interface and quick response time, the Online Bus Booking System eliminates the
                         need for manual reservations, reducing waiting times and enhancing customer satisfaction.
                        </p>
                    </div>
                </div>
            </div>
             <div class="col-lg-12" style="margin-top:2%">
                <div class="panel panel-default">
                    <div class="panel-heading">
                         <div class=" panel-title">
                        <h3>Why Online Bus Booking is Important?</h3>
                    </div>
                       </div>
                    <div class="panel-body" style="font-size:large">
                           <ul>
                               <li>
                               Fast & Easy Online bus booking.
                               </li>
                               <li>
                                   Zero booking fees No Extra Charges for online booking.
                               </li>
                               <li>
                                   100 % Secure to book your bus tickets with Online Bus Booking System.
                               </li>
                               <li>
                                   All Credit/Debit/Internet Banking Accepted.
                               </li>
                               <li>
                                   Get tickets to your mobile.
                               </li>
                               <li>
                                   Online cancellation and phone support available.
                               </li>
                               <li>
                                   The fastest way to book bus tickets.
                               </li>
                               <li>
                                   Book bus tickets online for Major routes across India.
                               </li>
                           </ul>
                       
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</asp:Content>
