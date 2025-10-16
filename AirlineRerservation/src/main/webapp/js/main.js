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