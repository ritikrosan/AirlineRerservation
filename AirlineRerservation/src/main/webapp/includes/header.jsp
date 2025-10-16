<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SkyWings Airlines - <%= request.getParameter("pageTitle") != null ? request.getParameter("pageTitle") : "Home" %></title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
    <div class="header">
        <h1>SkyWings Airlines</h1>
        <p>Your Journey Begins With Us</p>
    </div>