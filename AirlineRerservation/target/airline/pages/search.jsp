<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Get search parameters
    String fromCity = request.getParameter("from");
    String toCity = request.getParameter("to");
    String date = request.getParameter("date");
    String passengers = request.getParameter("passengers");
%>

<jsp:include page="../includes/header.jsp">
    <jsp:param name="pageTitle" value="Search Flights"/>
</jsp:include>

<jsp:include page="../includes/navbar.jsp"/>

<div class="container">
    <h2>🔍 Search Results</h2>
    <p>Showing flights from <strong><%= fromCity %></strong> to <strong><%= toCity %></strong> on <strong><%= date %></strong> for <strong><%= passengers %></strong> passenger(s)</p>
    
    <!-- Flight Results -->
    <div class="flight-results">
        <div class="flight-card">
            <h3>✈️ Flight SW101</h3>
            <table style="width: 100%;">
                <tr>
                    <td><strong>Departure:</strong> <%= fromCity %> - 08:00 AM</td>
                    <td><strong>Arrival:</strong> <%= toCity %> - 10:30 AM</td>
                    <td><strong>Duration:</strong> 2h 30m</td>
                    <td style="text-align: right;"><strong>Price:</strong> ₹5,499</td>
                </tr>
            </table>
            <div style="text-align: right; margin-top: 10px;">
                <a href="booking.jsp?flight=SW101&from=<%= fromCity %>&to=<%= toCity %>&date=<%= date %>&price=5499" 
                   style="background: #28a745; color: white; padding: 10px 20px; text-decoration: none; border-radius: 5px;">
                   Book Now
                </a>
            </div>
        </div>

        <div class="flight-card">
            <h3>✈️ Flight SW202</h3>
            <table style="width: 100%;">
                <tr>
                    <td><strong>Departure:</strong> <%= fromCity %> - 02:15 PM</td>
                    <td><strong>Arrival:</strong> <%= toCity %> - 04:45 PM</td>
                    <td><strong>Duration:</strong> 2h 30m</td>
                    <td style="text-align: right;"><strong>Price:</strong> ₹6,299</td>
                </tr>
            </table>
            <div style="text-align: right; margin-top: 10px;">
                <a href="booking.jsp?flight=SW202&from=<%= fromCity %>&to=<%= toCity %>&date=<%= date %>&price=6299" 
                   style="background: #28a745; color: white; padding: 10px 20px; text-decoration: none; border-radius: 5px;">
                   Book Now
                </a>
            </div>
        </div>

        <div class="flight-card">
            <h3>✈️ Flight SW303</h3>
            <table style="width: 100%;">
                <tr>
                    <td><strong>Departure:</strong> <%= fromCity %> - 07:30 PM</td>
                    <td><strong>Arrival:</strong> <%= toCity %> - 10:00 PM</td>
                    <td><strong>Duration:</strong> 2h 30m</td>
                    <td style="text-align: right;"><strong>Price:</strong> ₹4,999</td>
                </tr>
            </table>
            <div style="text-align: right; margin-top: 10px;">
                <a href="booking.jsp?flight=SW303&from=<%= fromCity %>&to=<%= toCity %>&date=<%= date %>&price=4999" 
                   style="background: #28a745; color: white; padding: 10px 20px; text-decoration: none; border-radius: 5px;">
                   Book Now
                </a>
            </div>
        </div>
    </div>
</div>

<style>
.flight-card { background: white; border: 1px solid #ddd; padding: 20px; margin: 15px 0; border-radius: 8px; box-shadow: 0 2px 5px rgba(0,0,0,0.1); }
.flight-card:hover { box-shadow: 0 4px 10px rgba(0,0,0,0.15); }
</style>

<jsp:include page="../includes/footer.jsp"/>