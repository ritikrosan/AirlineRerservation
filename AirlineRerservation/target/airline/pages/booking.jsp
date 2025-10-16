<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Get flight details from parameters
    String flightNumber = request.getParameter("flight");
    String fromCity = request.getParameter("from");
    String toCity = request.getParameter("to");
    String date = request.getParameter("date");
    String price = request.getParameter("price");
%>

<jsp:include page="../includes/header.jsp">
    <jsp:param name="pageTitle" value="Book Flight"/>
</jsp:include>

<jsp:include page="../includes/navbar.jsp"/>

<div class="container">
    <h2>📋 Flight Booking</h2>
    
    <!-- Flight Summary -->
    <div style="background: #e3f2fd; padding: 20px; border-radius: 8px; margin-bottom: 25px;">
        <h3>Flight: <%= flightNumber %></h3>
        <table style="width: 100%;">
            <tr>
                <td><strong>Route:</strong> <%= fromCity %> to <%= toCity %></td>
                <td><strong>Date:</strong> <%= date %></td>
                <td><strong>Time:</strong> 08:00 AM</td>
                <td style="text-align: right;"><strong>Price:</strong> ₹<%= price %></td>
            </tr>
        </table>
    </div>
    
    <!-- Booking Form -->
    <form action="confirmation.jsp" method="post">
        <input type="hidden" name="flight" value="<%= flightNumber %>">
        <input type="hidden" name="from" value="<%= fromCity %>">
        <input type="hidden" name="to" value="<%= toCity %>">
        <input type="hidden" name="date" value="<%= date %>">
        <input type="hidden" name="price" value="<%= price %>">
        
        <h3>👤 Passenger Details</h3>
        <table style="width: 100%;">
            <tr>
                <td style="padding: 10px; width: 50%;">
                    <label><strong>Full Name:</strong></label><br>
                    <input type="text" name="passengerName" required style="width: 100%; padding: 8px;">
                </td>
                <td style="padding: 10px; width: 50%;">
                    <label><strong>Email:</strong></label><br>
                    <input type="email" name="email" required style="width: 100%; padding: 8px;">
                </td>
            </tr>
            <tr>
                <td style="padding: 10px;">
                    <label><strong>Phone Number:</strong></label><br>
                    <input type="tel" name="phone" required style="width: 100%; padding: 8px;">
                </td>
                <td style="padding: 10px;">
                    <label><strong>Date of Birth:</strong></label><br>
                    <input type="date" name="dob" required style="width: 100%; padding: 8px;">
                </td>
            </tr>
        </table>
        
        <h3>💳 Payment Information</h3>
        <table style="width: 100%;">
            <tr>
                <td style="padding: 10px;">
                    <label><strong>Card Number:</strong></label><br>
                    <input type="text" name="cardNumber" placeholder="1234 5678 9012 3456" required style="width: 100%; padding: 8px;">
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; width: 50%;">
                    <label><strong>Expiry Date:</strong></label><br>
                    <input type="month" name="expiry" required style="width: 100%; padding: 8px;">
                </td>
                <td style="padding: 10px; width: 50%;">
                    <label><strong>CVV:</strong></label><br>
                    <input type="text" name="cvv" maxlength="3" required style="width: 100%; padding: 8px;">
                </td>
            </tr>
        </table>
        
        <div style="text-align: center; margin-top: 25px;">
            <button type="submit" style="background: #28a745; color: white; padding: 12px 40px; border: none; border-radius: 5px; font-size: 16px; cursor: pointer;">
                ✅ Confirm Booking
            </button>
        </div>
    </form>
</div>

<jsp:include page="../includes/footer.jsp"/>