<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Get booking details
    String flightNumber = request.getParameter("flight");
    String fromCity = request.getParameter("from");
    String toCity = request.getParameter("to");
    String date = request.getParameter("date");
    String price = request.getParameter("price");
    String passengerName = request.getParameter("passengerName");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    
    // Generate booking ID
    String bookingId = "SW" + (int)(Math.random() * 1000000);
%>

<jsp:include page="../includes/header.jsp">
    <jsp:param name="pageTitle" value="Booking Confirmation"/>
</jsp:include>

<jsp:include page="../includes/navbar.jsp"/>

<div class="container">
    <div style="background: #d4edda; color: #155724; padding: 25px; border-radius: 10px; text-align: center; margin-bottom: 25px;">
        <h2 style="margin: 0;">🎉 Booking Confirmed!</h2>
        <p style="margin: 10px 0 0 0; font-size: 1.1em;">Thank you for choosing SkyWings Airlines</p>
    </div>
    
    <!-- E-Ticket -->
    <div style="border: 2px dashed #0066cc; padding: 25px; border-radius: 10px; background: white;">
        <h3 style="text-align: center; color: #0066cc;">✈️ E-TICKET</h3>
        <table style="width: 100%; border-collapse: collapse;">
            <tr>
                <td style="padding: 10px; border-bottom: 1px solid #ddd;"><strong>Booking ID:</strong></td>
                <td style="padding: 10px; border-bottom: 1px solid #ddd;"><%= bookingId %></td>
            </tr>
            <tr>
                <td style="padding: 10px; border-bottom: 1px solid #ddd;"><strong>Passenger Name:</strong></td>
                <td style="padding: 10px; border-bottom: 1px solid #ddd;"><%= passengerName %></td>
            </tr>
            <tr>
                <td style="padding: 10px; border-bottom: 1px solid #ddd;"><strong>Flight Number:</strong></td>
                <td style="padding: 10px; border-bottom: 1px solid #ddd;"><%= flightNumber %></td>
            </tr>
            <tr>
                <td style="padding: 10px; border-bottom: 1px solid #ddd;"><strong>Route:</strong></td>
                <td style="padding: 10px; border-bottom: 1px solid #ddd;"><%= fromCity %> to <%= toCity %></td>
            </tr>
            <tr>
                <td style="padding: 10px; border-bottom: 1px solid #ddd;"><strong>Date:</strong></td>
                <td style="padding: 10px; border-bottom: 1px solid #ddd;"><%= date %></td>
            </tr>
            <tr>
                <td style="padding: 10px; border-bottom: 1px solid #ddd;"><strong>Time:</strong></td>
                <td style="padding: 10px; border-bottom: 1px solid #ddd;">08:00 AM</td>
            </tr>
            <tr>
                <td style="padding: 10px;"><strong>Total Amount:</strong></td>
                <td style="padding: 10px; font-size: 1.2em; color: #0066cc;"><strong>₹<%= price %></strong></td>
            </tr>
        </table>
    </div>
    
    <div style="text-align: center; margin-top: 25px;">
        <p><strong>📧 Contact Email:</strong> <%= email %></p>
        <p><strong>📞 Contact Phone:</strong> <%= phone %></p>
        <p style="color: #666; font-style: italic;">A confirmation email has been sent to your registered email address.</p>
        
        <div style="margin-top: 20px;">
            <button onclick="window.print()" style="background: #0066cc; color: white; padding: 10px 20px; border: none; border-radius: 5px; margin: 0 10px; cursor: pointer;">
                🖨️ Print Ticket
            </button>
            <a href="../../index.jsp" style="background: #28a745; color: white; padding: 10px 20px; text-decoration: none; border-radius: 5px; margin: 0 10px; display: inline-block;">
                ✈️ Book Another Flight
            </a>
        </div>
    </div>
</div>

<jsp:include page="../includes/footer.jsp"/>