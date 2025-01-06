<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Potato</title>
<link rel="stylesheet" href="styles.css">
</head>
<h1>Lets make a New Potato!</h1>
<body>
<form action="newPotato.do" method="POST">
 <h3>Potato Name</h3>
 <label for="name">Enter the name of your potato:</label> <input
			type="text" id="name" name="name" size="20" required><br>
 
 <h3>Potato Exterior Color</h3>
 <label for="exteriorColor">Enter the potatoes exterior color:</label> <input
			type="text" id="exteriorColor" name="exteriorColor" size="20" required><br>
			
 <h3>Potato Interior Color</h3>
 <label for="interiorColor">Enter the potatoes interior color:</label> <input
			type="text" id="interiorColor" name="interiorColor" size="20" required><br>
 <h3>Potato Best Uses</h3>
 <label>Enter in the best uses of the potato:</label><br>
 <input type="checkbox" id="bestUses" name="bestUses" value="boiling"><label for="bestUses">Boiling</label><br>
 <input type="checkbox" id="bestUses" name="bestUses" value="steaming"><label for="bestUses">Steaming</label><br>
 <input type="checkbox" id="bestUses" name="bestUses" value="mashing"><label for="bestUses">Mashing</label><br>
 <input type="checkbox" id="bestUses" name="bestUses" value="frying"><label for="bestUses">Frying</label><br>
 <input type="checkbox" id="bestUses" name="bestUses" value="roasting"><label for="bestUses">Roasting</label><br>
 <input type="checkbox" id="bestUses" name="bestUses" value="baking"><label for="bestUses">Baking</label><br>
 <input type="checkbox" id="bestUses" name="bestUses" value="deep frying"><label for="bestUses">Deep Frying</label><br>
 <input type="checkbox" id="bestUses" name="bestUses" value="chipping"><label for="bestUses">Chipping</label><br>
 <input type="checkbox" id="bestUses" name="bestUses" value="grilling"><label for="bestUses">Grilling</label><br>
 <input type="checkbox" id="bestUses" name="bestUses" value="pan frying"><label for="bestUses">Pan Frying</label><br>
 
 <h3>Potato Description</h3>
 <label for="description">Description</label><input type="text" id="description" name="description" size="50"><br>			
	<input class="submit-button" type="submit" value="Submit" />
</form>
<br>
<button type="submit" class="submit-button" onclick="window.location.href='/home.do'">Return
		To Home</button>
</body>
</html>