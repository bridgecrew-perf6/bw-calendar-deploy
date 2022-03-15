<%@ page contentType="text/xml;charset=UTF-8" buffer="none" language="java" %><?xml version="1.0" encoding="UTF-8"?>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix="c" %>
<%@ taglib uri='struts-logic' prefix='logic' %>
<%@ taglib uri='bedework' prefix='bw' %>

<bedework>

  <logic:iterate id="msg" name="calForm" property="msg.msgList">
    <message>
      <bw:emitText name="msg" property="msgId"
                   tagName="id"/>
      <logic:iterate id="param" name="msg" property="params" >
        <bw:emitText name="param" />
      </logic:iterate>
    </message>
  </logic:iterate>

  <logic:iterate id="errBean" name="calForm" property="err.msgList">
    <error>
      <bw:emitText name="errBean" property="msgId"
                   tagName="id"/>
      <logic:iterate id="param" name="errBean" property="params" >
        <bw:emitText name="param" />
      </logic:iterate>
    </error>
  </logic:iterate>

  <c:set var="presentationState" value="${bw_presentationstate}" />
  <bw:emitText name="presentationState" property="appRoot" tagName="appRoot" />

  <page>attendeeWidget</page>

<%
try {
%>
  <logic:present  name="calForm" property="attendees.attendees">
    <attendees>
    <logic:iterate id="att" name="calForm" property="attendees.attendees">
	    <attendee>
	      <bw:emitText name="att" property="attendeeUri"/>
        <bw:emitText name="att" property="partstat"/>
        <bw:emitText name="att" property="cn"/>
        <bw:emitText name="att" property="cuType"/>
        <bw:emitText name="att" property="role"/>
        <bw:emitText name="att" property="delegatedFrom"/>
        <bw:emitText name="att" property="delegatedTo"/>
        <bw:emitText name="att" property="dir"/>
        <bw:emitText name="att" property="language"/>
        <bw:emitText name="att" property="rsvp"/>
        <bw:emitText name="att" property="sentBy"/>
	    </attendee>
    </logic:iterate>
    </attendees>
  </logic:present>
  <logic:notPresent  name="calForm" property="attendees.attendees">
    <attendees>
    </attendees>
  </logic:notPresent>

<%
} catch (Throwable t) {
  t.printStackTrace();
}
%>
</bedework>
