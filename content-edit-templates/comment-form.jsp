<jsp:directive.page contentType="text/html;charset=UTF-8"/>
<% response.setContentType("text/html;charset=" + vyre.core.Kernel.getEncoding());%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.vyre.com/taglibs/vyre-item-1.0" prefix="vyre-item" %>

<div id="validationErrors">
  <c:forEach var="error" items="${validationErrors}">
    <div class="validationError"><c:out value="${error.messageKey}"/></div>
  </c:forEach>
</div>

<div style="display:none">
  <vyre-item:attribute name="name" mode="field" defaultValue="a comment"/>
</div>

<div>
  <label>Your comment:</label>
  <vyre-item:attribute name="description" mode="field" defaultValue="" label="none" />
</div>

<!-- CHANGE LINK ID -->
<vyre-item:item-link id="31" mode="field" inputType="detect" />

<div>
  <input type="button" value="Add comment" onclick="<vyre-item:action type="createAndActivate" />" class="btn" />
</div>