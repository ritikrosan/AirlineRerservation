<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Set page title
    String pageTitle = "Home";
%>

<jsp:include page="../includes/header.jsp">
    <jsp:param name="pageTitle" value="<%= pageTitle %>"/>
</jsp:include>

<jsp:include page="../includes/navbar.jsp"/>

<div class="container">
    <!-- Welcome Section -->
    <div class="welcome-section">
        <h2>Welcome to SkyWings Airlines</h2>
        <p>Experience world-class service and comfortable travel with SkyWings Airlines. Book your flights easily and enjoy premium amenities.</p>
    </div>

    <!-- Quick Stats -->
    <div class="stats-section">
        <div class="stat-card">
            <h3>50+</h3>
            <p>Destinations</p>
        </div>
        <div class="stat-card">
            <h3>1000+</h3>
            <p>Daily Flights</p>
        </div>
        <div class="stat-card">
            <h3>1M+</h3>
            <p>Happy Customers</p>
        </div>
        <div class="stat-card">
            <h3>24/7</h3>
            <p>Support</p>
        </div>
    </div>

    <!-- Main Search Form -->
    <div class="search-form">
        <h3>Find Your Perfect Flight</h3>
        <form action="flight.jsp" method="get">
            <table>
                <tr>
                    <td>
                        <label>From City:</label>
                        <select name="fromCity" required>
                            <option value="">Select Departure City</option>
                            <option value="DEL">Delhi (DEL)</option>
                            <option value="BOM">Mumbai (BOM)</option>
                            <option value="BLR">Bangalore (BLR)</option>
                            <option value="HYD">Hyderabad (HYD)</option>
                            <option value="MAA">Chennai (MAA)</option>
                            <option value="CCU">Kolkata (CCU)</option>
                        </select>
                    </td>
                    <td>
                        <label>To City:</label>
                        <select name="toCity" required>
                            <option value="">Select Arrival City</option>
                            <option value="DEL">Delhi (DEL)</option>
                            <option value="BOM">Mumbai (BOM)</option>
                            <option value="BLR">Bangalore (BLR)</option>
                            <option value="HYD">Hyderabad (HYD)</option>
                            <option value="MAA">Chennai (MAA)</option>
                            <option value="CCU">Kolkata (CCU)</option>
                        </select>
                    </td>
                    <td>
                        <label>Departure Date:</label>
                        <input type="date" name="departureDate" required>
                    </td>
                    <td>
                        <label>Passengers:</label>
                        <select name="passengers">
                            <option value="1">1 Adult</option>
                            <option value="2">2 Adults</option>
                            <option value="3">3 Adults</option>
                            <option value="4">4 Adults</option>
                            <option value="5">5 Adults</option>
                            <option value="6">6 Adults</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <label>
                            <input type="checkbox" name="roundTrip" value="true"> Round Trip
                        </label>
                    </td>
                </tr>
            </table>
            
            <div class="form-actions">
                <button type="submit" class="search-btn">
                    Search Flights
                </button>
            </div>
        </form>
    </div>

    <!-- Special Offers -->
    <div class="offers-section">
        <h3>Special Offers</h3>
        <div class="offers-grid">
            <div class="offer-card">
                <h4>Early Bird Discount</h4>
                <p>Book 30 days in advance and get 20% off</p>
                <span class="offer-tag">SAVE 20%</span>
            </div>
            <div class="offer-card">
                <h4>Weekend Special</h4>
                <p>Weekend flights starting at ₹2,999</p>
                <span class="offer-tag">FROM ₹2,999</span>
            </div>
            <div class="offer-card">
                <h4>Group Booking</h4>
                <p>Special discounts for groups of 4 or more</p>
                <span class="offer-tag">GROUP OFFER</span>
            </div>
        </div>
    </div>

    <!-- Why Choose Us -->
    <div class="features-section">
        <h3>Why Choose SkyWings Airlines?</h3>
        <div class="features-grid">
            <div class="feature-item">
                <h4>Safe Travel</h4>
                <p>Highest safety standards and protocols</p>
            </div>
            <div class="feature-item">
                <h4>Comfortable Seats</h4>
                <p>Spacious legroom and comfortable seating</p>
            </div>
            <div class="feature-item">
                <h4>Delicious Meals</h4>
                <p>Complimentary meals and beverages</p>
            </div>
            <div class="feature-item">
                <h4>Easy Booking</h4>
                <p>Simple and hassle-free reservation process</p>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../includes/footer.jsp"/>