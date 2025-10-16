<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SkyWings Airlines - <%= request.getParameter("pageTitle") != null ? request.getParameter("pageTitle") : "Home" %></title>
    <style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background: #f4f4f4;
}

.container {
    width: 80%;
    margin: auto;
    overflow: hidden;
}

.header {
    background: #333;
    color: #fff;
    padding: 20px;
    text-align: center;
}

.navbar {
    background: #004499;
    padding: 15px;
    text-align: center;
}

.navbar a {
    color: white;
    text-decoration: none;
    margin: 0 15px;
    padding: 10px 15px;
    border-radius: 5px;
}

.navbar a:hover {
    background: #003377;
}

.welcome-section {
    text-align: center;
    padding: 40px 0;
}

.stats-section {
    display: flex;
    justify-content: space-around;
    text-align: center;
    padding: 20px 0;
}

.stat-card {
    background: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0,0,0,0.1);
}

.search-form {
    background: #fff;
    padding: 30px;
    border-radius: 5px;
    margin-top: 20px;
}

.search-form table {
    width: 100%;
}

.search-form td {
    padding: 10px;
}

.search-form .form-actions {
    text-align: center;
    margin-top: 20px;
}

.offers-section, .features-section {
    padding: 40px 0;
}

.offers-grid, .features-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 20px;
}

.offer-card, .feature-item {
    background: #fff;
    padding: 20px;
    border-radius: 5px;
    text-align: center;
}

.footer {
    background: #333;
    color: #fff;
    text-align: center;
    padding: 20px;
    margin-top: 40px;
}

.flight-card { background: white; border: 1px solid #ddd; padding: 20px; margin: 15px 0; border-radius: 8px; box-shadow: 0 2px 5px rgba(0,0,0,0.1); }
.flight-card:hover { box-shadow: 0 4px 10px rgba(0,0,0,0.15); }

/* Modal styles */
.modal {
    display: none; 
    position: fixed; 
    z-index: 1; 
    left: 0;
    top: 0;
    width: 100%; 
    height: 100%; 
    overflow: auto; 
    background-color: rgb(0,0,0); 
    background-color: rgba(0,0,0,0.4); 
}

.modal-content {
    background-color: #fefefe;
    margin: 15% auto; 
    padding: 20px; 
    border: 1px solid #888; 
    width: 80%; 
}

.close {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: black;
    text-decoration: none;
    cursor: pointer;
}

.search-summary {
    background: #fff;
    padding: 20px;
    border-radius: 5px;
    margin-bottom: 20px;
}

.filters-section {
    background: #fff;
    padding: 20px;
    border-radius: 5px;
    margin-bottom: 20px;
}

.flight-details .timing-section {
    display: flex;
    align-items: center;
    justify-content: space-between;
}

.duration-line {
    display: flex;
    align-items: center;
}

.dot {
    height: 8px;
    width: 8px;
    background-color: #bbb;
    border-radius: 50%;
    display: inline-block;
}

.line {
    width: 100px;
    height: 1px;
    background-color: #bbb;
    margin: 0 5px;
}

.booking-summary {
    background: #e3f2fd;
    padding: 20px;
    border-radius: 8px;
    margin-bottom: 25px;
}

.confirmation-message {
    background: #d4edda;
    color: #155724;
    padding: 25px;
    border-radius: 10px;
    text-align: center;
    margin-bottom: 25px;
}

.e-ticket {
    border: 2px dashed #0066cc;
    padding: 25px;
    border-radius: 10px;
    background: white;
}
</style>
</head>
<body>
    <div class="header">
        <h1>SkyWings Airlines</h1>
        <p>Your Journey Begins With Us</p>
    </div>