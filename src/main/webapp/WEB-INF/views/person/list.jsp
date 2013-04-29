<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://amateras.sf.jp/functions" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<fmt:requestEncoding value="UTF-8" />
<c:import url="/WEB-INF/views/common/layout.jsp" charEncoding="UTF-8">
    <c:param name="title" value="PERSON LIST" />
    <c:param name="body">
        <p>
            <a href='${pageContext.request.contextPath}/person/form/' class="btn btn-info">CREATE</a>
        </p>
        <table
            class="table table-striped table-bordered table-condensed">
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>AGE</th>
                <th>&nbsp;</th>
            </tr>
            <c:forEach items="${page.content}" var="person">
                <tr>
                    <td>${f:h(person.id)}</td>
                    <td>${f:h(person.name)}</td>
                    <td>${f:h(person.age)}</td>
                    <td><a
                        href='${pageContext.request.contextPath}/person/edit/${person.id}'
                        class="btn btn-primary">Edit</a> <a
                        href='${pageContext.request.contextPath}/person/delete/${person.id}'
                        class="btn">Delete</a></td>
                </tr>
            </c:forEach>
        </table>

        <p>${f:h(page.number + 1)}/${f:h(page.totalPages)}</p>
        <div class="pagination">
            <ul>
                <li><c:if test="${!page.isFirstPage()}">
                        <a href='<c:url value="?page=0" />'>&laquo;
                            first</a>
                    </c:if></li>
                <li><c:if test="${page.hasPreviousPage()}">
                        <a
                            href='<c:url value="?page=${f:h(page.number - 1)}" />'>&lt;
                            prev</a>
                    </c:if></li>
                <li><c:if test="${page.hasNextPage()}">
                        <a
                            href='<c:url value="?page=${f:h(page.number + 1)}" />'>next
                            &gt;</a>
                    </c:if></li>
                <li><c:if test="${!page.isLastPage()}">
                        <a
                            href='<c:url value="?page=${f:h(page.totalPages - 1)}" />'>last
                            &raquo;</a>
                    </c:if></li>
            </ul>
        </div>
    </c:param>
</c:import>

