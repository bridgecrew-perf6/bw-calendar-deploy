<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix="c" %>
<%@ taglib uri='struts-logic' prefix='logic' %>

<bedework>
<%@include file="/docs/header.jsp"%>

<page>deleteCategoryConfirm</page>
<tab>system</tab>

<currentCategory>
  <logic:present name="calForm" property="category">
    <c:set var="category" value="${calForm.category}"/>
    <%@include file="/docs/category/emitCategory.jsp"%>
  </logic:present>
</currentCategory>

<%@include file="/docs/footer.jsp"%>

</bedework>
