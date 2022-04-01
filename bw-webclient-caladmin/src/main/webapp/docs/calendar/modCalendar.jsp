<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri='struts-logic' prefix='logic' %>
<%@ taglib uri='bedework' prefix='bw' %>

<bedework>
<%@include file="/docs/header.jsp"%>

<page>modCalendar</page>
<tab>system</tab>

<bw:emitText name="calForm" property="addingCalendar"
             tagName="creating"/>

<%@include file="/docs/calendar/displayCalendarCommon.jsp"%>
<%@include file="/docs/calendar/subscriptionStatus.jsp"%>

<%@include file="/docs/calendar/emitCalendars.jsp"%>

<categories>
  <all>
    <logic:iterate id="category" name="bw_categories_list"
                   scope="session">
      <%@include file="/docs/category/emitCategory.jsp"%>
    </logic:iterate>
  </all>
  <current>
    <c:if test="${not empty calForm.calendar.categories}">
      <logic:iterate id="category" name="calForm" property="calendar.categories">
        <%@include file="/docs/category/emitCategory.jsp"%>
      </logic:iterate>
    </c:if>
  </current>
</categories>

<%@include file="/docs/footer.jsp"%>


</bedework>
