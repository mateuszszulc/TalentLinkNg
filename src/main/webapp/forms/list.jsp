<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>First Page</title>
    <script type="text/javascript" src="/js/jquery-1.9.1.js" > </script>
    <script type="text/javascript" src="/js/main.js"> </script>
</head>
<body>

<form:form modelAttribute="simpleForm" method="post">
    <form:input path="skillName" size="30"/>
    <input type="submit" value="Add"/>
</form:form>
    Hello World!
</body>
</html>