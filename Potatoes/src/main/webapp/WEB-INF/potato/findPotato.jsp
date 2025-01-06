<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="jakarta.tags.core" prefix="c"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Potato Search</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>
<h1>Potato By Keyword: '${keyword}'</h1>
	<c:if test="${! empty potatoes}">
		<p>
			<strong>Showing ${potatoes.size()} Results</strong>
		</p>
		<button type="submit" class="submit-button" onclick="window.location.href='/home.do'">Return
			To Home</button>
		<hr>
	</c:if>
	<c:if test="${empty potatoes}">
		<p>
			<strong>No Results Found For: </strong>'${keyword}'
		</p>
	</c:if>
	<div>
		<table>
			<thead>
				<tr>
					<th>Name</th>
					<th>Interior Color</th>
					<th>Exterior Color</th>
					<th>Best Uses</th>
					<th>Description</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="potato" items="${potatoes}">
    <tr>
        <td>${potato.id}</td>
        <td><a href="<c:url value='getPotato.do'><c:param name='potatoId' value='${potato.id}'/></c:url>">
                ${potato.name}</a></td>
        <td>${potato.interiorColor}</td>
        <td>${potato.exteriorColor}</td>
        <td>${potato.description}</td>
        <td>
            <form action="updatePotato.do" method="GET">
                <input type="hidden" name="id" value="${potato.id}" />
                <button type="submit" class="edit-button">Edit Potato</button>
            </form>
        </td>
        <td>
            <form action="deletePotato.do" method="POST" onsubmit="return window.confirm('Confirm Delete?');">
                <input type="hidden" name="id" value="${potato.id}" />
                <button type="submit" class="delete-button">Delete Potato</button>
            </form>
        </td>
    </tr>
</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>