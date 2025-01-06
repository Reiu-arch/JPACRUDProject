<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Potato Index</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    
    <div class="container">
        
        <div class="potato-details">
            <h3 class="potato-name">${potato.name}</h3>
            <hr>
            <ul class="potato-info">
                <li><strong>Interior Color:</strong> ${potato.interiorColor}</li>
            <hr>
                <li><strong>Exterior Color:</strong> ${potato.exteriorColor}</li>
            <hr>
                <li><strong>Best Uses:</strong> ${potato.bestUses}</li>
            <hr>
                <li><strong>Description:</strong> ${potato.description}</li>
            </ul>
        </div>
        
       
        <div class="actions">
           
            <form action="updatePotato.do" method="GET" class="action-form">
                <input type="hidden" id="id" name="id" value="<c:out value='${potato.id}' />">
                <button type="submit" class="edit-button">Edit Potato</button>
            </form>

            
            <form action="deletePotato.do" method="POST" class="action-form"
                  onsubmit="return window.confirm('Confirm Delete?');">
                <input type="hidden" id="id" name="id" value="<c:out value='${potato.id}' />">
                <button type="submit" class="delete-button">Delete Potato</button>
            </form>

            
            <button class="return-button" onclick="window.location.href='home.do'">
                Return To Home
            </button>
        </div>
    </div>
</body>
</html>
