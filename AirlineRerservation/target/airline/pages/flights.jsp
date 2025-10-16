<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Get search parameters from request
    String fromCity = request.getParameter("fromCity");
    String toCity = request.getParameter("toCity");
    String departureDate = request.getParameter("departureDate");
    String passengers = request.getParameter("passengers");
    String roundTrip = request.getParameter("roundTrip");
    
    // Set default values if parameters are null
    if (fromCity == null) fromCity = "DEL";
    if (toCity == null) toCity = "BOM";
    if (departureDate == null) departureDate = "2024-01-15";
    if (passengers == null) passengers = "1";
    
    // Set page title
    String pageTitle = "Available Flights";
%>

<jsp:include page="../includes/header.jsp">
    <jsp:param name="pageTitle" value="<%= pageTitle %>"/>
</jsp:include>

<jsp:include page="../includes/navbar.jsp"/>

<div class="container">
    <!-- Search Summary -->
    <div class="search-summary">
        <h2>Available Flights</h2>
        <div class="search-details">
            <table>
                <tr>
                    <td><strong>Route:</strong> <%= fromCity %> to <%= toCity %></td>
                    <td><strong>Date:</strong> <%= departureDate %></td>
                    <td><strong>Passengers:</strong> <%= passengers %></td>
                    <td>
                        <strong>Trip Type:</strong> 
                        <%= "true".equals(roundTrip) ? "Round Trip" : "One Way" %>
                    </td>
                </tr>
            </table>
        </div>
        
        <!-- Modify Search Button -->
        <div class="modify-search">
            <a href="home.jsp" class="modify-btn">
                Modify Search
            </a>
        </div>
    </div>

    <!-- Filters -->
    <div class="filters-section">
        <h4>Filter Flights</h4>
        <div class="filter-options">
            <select>
                <option>Sort by: Recommended</option>
                <option>Sort by: Price (Low to High)</option>
                <option>Sort by: Price (High to Low)</option>
                <option>Sort by: Duration</option>
                <option>Sort by: Departure Time</option>
            </select>
            
            <label>
                <input type="checkbox"> Non-stop
            </label>
            
            <label>
                <input type="checkbox"> Morning (6AM - 12PM)
            </label>
            
            <label>
                <input type="checkbox"> Afternoon (12PM - 6PM)
            </label>
            
            <label>
                <input type="checkbox"> Evening (6PM - 12AM)
            </label>
        </div>
    </div>

    <!-- Flight Results -->
    <div class="flight-results">
        <%
            // Sample flight data - In real application, this would come from database
            String[][] flights = {
                {"SW101", "08:00", "10:30", "2h 30m", "Non-stop", "5499", "Economy"},
                {"SW202", "14:15", "16:45", "2h 30m", "Non-stop", "6299", "Economy"},
                {"SW303", "19:30", "22:00", "2h 30m", "Non-stop", "4999", "Economy"},
                {"SW404", "06:45", "09:15", "2h 30m", "Non-stop", "6999", "Business"},
                {"SW505", "12:30", "15:00", "2h 30m", "Non-stop", "5799", "Economy"},
                {"SW606", "21:00", "23:30", "2h 30m", "Non-stop", "4599", "Economy"}
            ];
            
            for (String[] flight : flights) {
        %>
        
        <div class="flight-card">
            <div class="flight-header">
                <div class="airline-info">
                    <h3>SkyWings Airlines</h3>
                    <p>Flight: <%= flight[0] %> | <%= flight[6] %> Class</p>
                </div>
                <div class="flight-price">
                    <span class="price">₹<%= flight[5] %></span>
                    <p>per person</p>
                </div>
            </div>
            
            <div class="flight-details">
                <div class="timing-section">
                    <div class="departure">
                        <strong><%= flight[1] %></strong>
                        <br>
                        <span><%= fromCity %></span>
                    </div>
                    
                    <div class="duration">
                        <div class="duration-line">
                            <span class="dot"></span>
                            <span class="line"></span>
                            <span class="dot"></span>
                        </div>
                        <span class="duration-text"><%= flight[3] %></span>
                        <br>
                        <span class="flight-type"><%= flight[4] %></span>
                    </div>
                    
                    <div class="arrival">
                        <strong><%= flight[2] %></strong>
                        <br>
                        <span><%= toCity %></span>
                    </div>
                </div>
            </div>
            
            <div class="flight-features">
                <span class="feature">Meal Included</span>
                <span class="feature">15kg Baggage</span>
                <span class="feature">Seat Selection</span>
                <span class="feature">Mobile Boarding</span>
            </div>
            
            <div class="flight-actions">
                <div class="price-breakdown">
                    <strong>Total for <%= passengers %> passenger(s): ₹<%= Integer.parseInt(flight[5]) * Integer.parseInt(passengers) %></strong>
                </div>
                <div class="action-buttons">
                    <a href="booking.jsp?flight=<%= flight[0] %>&from=<%= fromCity %>&to=<%= toCity %>&date=<%= departureDate %>&price=<%= flight[5] %>&passengers=<%= passengers %>" 
                       class="book-btn">
                       Book Now
                    </a>
                    <button class="details-btn" onclick="showFlightDetails('<%= flight[0] %>')">
                       Details
                    </button>
                </div>
            </div>
        </div>
        <%
            }
        %>
    </div>

    <!-- No Flights Message (Hidden by default) -->
    <div class="no-flights" style="display: none;">
        <h3>No flights found</h3>
        <p>Try modifying your search criteria</p>
        <a href="home.jsp" class="search-btn">Search Again</a>
    </div>

    <!-- Flight Details Modal -->
    <div id="flightDetailsModal" class="modal" style="display: none;">
        <div class="modal-content">
            <span class="close" onclick="closeModal()">&times;</span>
            <h3>Flight Details</h3>
            <div id="modalContent">
                <!-- Dynamic content will be inserted here -->
            </div>
        </div>
    </div>
</div>

<script>
function showFlightDetails(flightNumber) {
    // In real application, this would fetch details from server
    const details = `
        <h4>Flight ` + flightNumber + ` - Detailed Information</h4>
        <table>
            <tr><td><strong>Aircraft:</strong></td><td>Airbus A320</td></tr>
            <tr><td><strong>Seats Available:</strong></td><td>45</td></tr>
            <tr><td><strong>Baggage Allowance:</strong></td><td>15kg check-in + 7kg cabin</td></tr>
            <tr><td><strong>Meal Service:</strong></td><td>Complimentary meal and beverages</td></tr>
            <tr><td><strong>Entertainment:</strong></td><td>In-flight entertainment system</td></tr>
            <tr><td><strong>WiFi:</strong></td><td>Complimentary WiFi available</td></tr>
        </table>
    `;
    
    document.getElementById('modalContent').innerHTML = details;
    document.getElementById('flightDetailsModal').style.display = 'block';
}

function closeModal() {
    document.getElementById('flightDetailsModal').style.display = 'none';
}

// Close modal when clicking outside
window.onclick = function(event) {
    const modal = document.getElementById('flightDetailsModal');
    if (event.target === modal) {
        closeModal();
    }
}
</script>

<jsp:include page="../includes/footer.jsp"/>