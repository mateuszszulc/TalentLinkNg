<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://amateras.sf.jp/functions" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<fmt:requestEncoding value="UTF-8" />

<c:import url="/WEB-INF/views/common/layout.jsp" charEncoding="UTF-8">
    <c:param name="title" value="HOME" />
    <c:param name="body">
        <h2>Hello!</h2>
        <p>
            ${f:h(serverTime)} <br>
        </p>
        <ul>
            <li><a href='${pageContext.request.contextPath}/person/list/'>PERSON
                    LIST</a></li>
            <li><a href='${pageContext.request.contextPath}/person/form/'>PERSON
                    CREATE</a></li>
        </ul>
    </c:param>
</c:import>

