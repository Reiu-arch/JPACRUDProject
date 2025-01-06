<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Potato</title>
<link rel="stylesheet" href="styles.css">
</head>
<h1>Potatoes Galore</h1>
<body>

<form action="getPotato.do" method="GET">
  Input Potato ID: <input type="text" name="potatoId" />
  <input type="submit" value="Show Potato" />
</form>



<form action="newPotato.do" method="GET">
			<input class="submit-button" type="submit" value="Add New Potato"
				title="Add New Potato" />
		</form>

<form action="findPotato.do" method="POST">
    <label for="name" class="form-label">Search Potatoes By Keyword:</label>
    <input type="text" id="name" name="name" required="required" maxlength="255" placeholder="search" />
    <br>
    <input class="submit-button" type="submit" value="Search By Keyword" />
</form>

</body>
</html>