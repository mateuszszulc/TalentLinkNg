<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://amateras.sf.jp/functions" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<fmt:requestEncoding value="UTF-8" />

<c:import url="/WEB-INF/views/common/layout.jsp" charEncoding="UTF-8">
    <c:param name="title" value="PERSON FORM" />
    <c:param name="body">
        <spring:hasBindErrors name="person">
            <script type="text/javascript">
                $(document).ready(function() {
                    $("div.control-group>div.controls>.error").parent().parent().addClass("error");
                });
            </script>
        </spring:hasBindErrors>
        <form:form method="post" action="." modelAttribute="person"
            cssClass="form-horizontal">
            <fieldset>
                <legend>Person</legend>
                <div class="control-group">
                    <label class="control-label" for="name">name</label>
                    <div class="controls">
                        <form:input path="name" cssClass="span5"
                            cssErrorClass="error" />
                        <form:errors path="name"
                            cssClass="error help-inline inline"
                            element="span" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="age">age</label>
                    <div class="controls">
                        <form:input path="age" cssClass="span3"
                            cssErrorClass="error" />
                        <form:errors path="age"
                            cssClass="error help-inline inline"
                            element="span" />
                    </div>
                </div>
                <form:hidden path="id" />
                <div class="form-actions">
                    <input type="submit" class="btn btn-primary"
                        value="Submit">&nbsp;
                    <button type="reset" class="btn">Cancel</button>
                </div>
            </fieldset>
        </form:form>
        <hr>
        <a href='${pageContext.request.contextPath}/person/list' class="btn">list</a>
    </c:param>
</c:import>

