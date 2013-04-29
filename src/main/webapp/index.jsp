<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE HTML>
<html>
<head>
    <title>Cellar</title>
    <link rel="stylesheet" href="css/styles.css"/>
</head>

<body>

<div class="header">
    <input type="text" id="searchKey"/>
    <button id="btnSearch">Search</button>
    <button id="btnAdd">New Wine</button>
</div>


<div class="leftArea">
    <ul id="wineList"></ul>
</div>

<form id="wineForm">

    <div class="mainArea">

        <label>Id:</label>
        <input id="wineId" name="id" type="text" disabled/>

        <label>Name:</label>
        <input type="text" id="name" name="name" required>

        <label>Grapes:</label>
        <input type="text" id="grapes" name="grapes"/>

        <label>Country:</label>
        <input type="text" id="country" name="country"/>

        <label>Region:</label>
        <input type="text" id="region" name="region"/>

        <label>Year:</label>
        <input type="text" id="year" name="year"/>

        <button id="btnSave">Save</button>
        <button id="btnDelete">Delete</button>

    </div>

    <div class="rightArea">

        <img id="pic" height="300"/>

        <label>Notes:</label>
        <textarea id="description" name="description"></textarea>
    </div>

</form>

<script src="js/jquery-1.9.1.js"></script>
<script src="js/main.js"></script>

</body>
</html>