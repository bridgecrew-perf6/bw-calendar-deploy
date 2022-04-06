<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix="c" %>
<%@ taglib uri='struts-html' prefix='html' %>
<%@ taglib uri='bedework' prefix='bw' %>
<html:xhtml/>

<bedework>
<%@include file="/docs/header.jsp"%>

<page>modAuthUser</page>
<tab>users</tab>

<formElements>
  <html:form action="authuser/update" >
    <bw:emitText name="calForm" property="editAuthUser.userHref"
                 tagName="userHref"/>
    <publicEvents><html:checkbox property="editAuthUserPublicEvents" /></publicEvents>
    <contentAdmin><html:checkbox property="editAuthUserContentAdmin" /></contentAdmin>
    <approver><html:checkbox property="editAuthUserApprover" /></approver>

    <submitButtons>
      <button type="update">modAuthUser</button>
    </submitButtons>

  </genurl:form>
</formElements>

<%@include file="/docs/footer.jsp"%>

</bedework>
