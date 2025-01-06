<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Potato</title>
<link rel="stylesheet" href="styles.css">
</head>
<h1>Update Potato</h1>
<body>
	<form action="updatePotato.do" method="POST">
	<input type="hidden" name="id" value="${potato.id}"> <strong>Potato
			ID:</strong> ${potato.id} <br>
			
	 <strong>Potato:</strong> ${potato.name} <br> 
			<label for="name">Enter the potatoes name:</label> 
			<input type="text" id="name" name="name" placeholder="${potato.name}"
			required="required" value="${potato.name}"><br> <br>
			
	 
			<label for="exteriorColor">Enter the potatoes exterior color:</label> 
			<input type="text" id="exteriorColor" name="exteriorColor" placeholder="${potato.exteriorColor}"
			required="required" value="${potato.exteriorColor}"><br> <br>
			
	  
			<label for="interiorColor">Enter the potatoes interior color:</label> 
			<input type="text" id="interiorColor" name="interiorColor" placeholder="${potato.interiorColor}"
			required="required" value="${potato.interiorColor}"><br> <br>
			
			<label for="bestUses">Enter in the best uses for the potato!</label>
			<div>
				<label for="boiling">Boiling</label>
				<input type="checkbox" id="boiling" name="uses"
				<c:if test='${potato.bestUses.contains("boiling")}'>checked</c:if>
				value="boiling">
			</div>
			<div>
				<label for="steaming">Steaming</label>
				<input type="checkbox" id="steaming" name="uses"
				<c:if test='${potato.bestUses.contains("steaming")}'>checked</c:if>
				value="steaming">
			</div>
			<div>
				<label for="mashing">Mashing</label>
				<input type="checkbox" id="mashing" name="uses"
				<c:if test='${potato.bestUses.contains("mashing")}'>checked</c:if>
				value="mashing">
			</div>
			<div>
				<label for="frying">Frying</label>
				<input type="checkbox" id="frying" name="uses"
				<c:if test='${potato.bestUses.contains("frying")}'>checked</c:if>
				value="frying">
			</div>
			<div>
				<label for="roasting">Roasting</label>
				<input type="checkbox" id="roasting" name="uses"
				<c:if test='${potato.bestUses.contains("roasting")}'>checked</c:if>
				value="roasting">
			</div>
			<div>
				<label for="baking">Baking</label>
				<input type="checkbox" id="baking" name="uses"
				<c:if test='${potato.bestUses.contains("baking")}'>checked</c:if>
				value="baking">
			</div>
			<div>
				<label for="deep frying">Deep Frying</label>
				<input type="checkbox" id="deep frying" name="uses"
				<c:if test='${potato.bestUses.contains("deep frying")}'>checked</c:if>
				value="deep frying">
			</div>
			<div>
				<label for="chipping">Chipping</label>
				<input type="checkbox" id="boiling" name="uses"
				<c:if test='${potato.bestUses.contains("chipping")}'>checked</c:if>
				value="chipping">
			</div>
			<div>
				<label for="grilling">Grilling</label>
				<input type="checkbox" id="grilling" name="uses"
				<c:if test='${potato.bestUses.contains("grilling")}'>checked</c:if>
				value="grilling">
			</div>
			<div>
				<label for="pan frying">Pan Frying</label>
				<input type="checkbox" id="pan frying" name="uses"
				<c:if test='${potato.bestUses.contains("pan frying")}'>checked</c:if>
				value="pan frying">
			</div>
			<br>
			<label for="description">Enter the potatoes description:</label> 
			<input type="text" id="description" name="description" size="50" placeholder="${potato.description}"
			required="required" value="${potato.description}"><br> <br>
			
	<input type="submit"
			class="submit-button" value="Update Potato">
	</form>
	<button type="submit" class="submit-button" onclick="window.location.href='/home.do'">Return
		To Home</button>

</body>
</html>