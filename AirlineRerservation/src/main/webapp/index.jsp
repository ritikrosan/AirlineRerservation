<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="includes/header.jsp">
    <jsp:param name="pageTitle" value="Home"/>
</jsp:include>

<jsp:include page="includes/navbar.jsp"/>

<div class="container">
    <h2>Welcome to SkyWings Airlines</h2>
    <p>Book your flights with ease and enjoy premium service with SkyWings Airlines.</p>
    
    <!-- Quick Search Form -->
    <div class="search-form">
        <h3>🔍 Find Your Perfect Flight</h3>
        <form action="pages/search.jsp" method="get">
            <table style="width: 100%;">
                <tr>
                    <td style="padding: 10px;">
                        <label><strong>From:</strong></label><br>
                        <select name="from" style="width: 100%; padding: 8px;">
                            <option value="DEL">Delhi (DEL)</option>
                            <option value="BOM">Mumbai (BOM)</option>
                            <option value="BLR">Bangalore (BLR)</option>
                            <option value="HYD">Hyderabad (HYD)</option>
                        </select>
                    </td>
                    <td style="padding: 10px;">
                        <label><strong>To:</strong></label><br>
                        <select name="to" style="width: 100%; padding: 8px;">
                            <option value="DEL">Delhi (DEL)</option>
                            <option value="BOM">Mumbai (BOM)</option>
                            <option value="BLR">Bangalore (BLR)</option>
                            <option value="HYD">Hyderabad (HYD)</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td style="padding: 10px;">
                        <label><strong>Departure Date:</strong></label><br>
                        <input type="date" name="date" required style="width: 100%; padding: 8px;">
                    </td>
                    <td style="padding: 10px;">
                        <label><strong>Passengers:</strong></label><br>
                        <select name="passengers" style="width: 100%; padding: 8px;">
                            <option value="1">1 Passenger</option>
                            <option value="2">2 Passengers</option>
                            <option value="3">3 Passengers</option>
                            <option value="4">4 Passengers</option>
                        </select>
                    </td>
                </tr>
            </table>
            <div style="text-align: center; margin-top: 20px;">
                <button type="submit" style="background: #0066cc; color: white; padding: 12px 30px; border: none; border-radius: 5px; font-size: 16px; cursor: pointer;">
                    🚀 Search Flights
                </button>
            </div>
        </form>
    </div>
</div>

<style>
.container { max-width: 1000px; margin: 30px auto; padding: 20px; background: white; border-radius: 10px; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
.search-form { background: #f8f9fa; padding: 25px; border-radius: 10px; margin-top: 20px; }
</style>

<jsp:include page="includes/footer.jsp"/>