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

<div>
  <vyre-item:attribute name="name" mode="field" defaultValue="put name here..."/>
</div>

<div>
  <vyre-item:attribute name="description" mode="field" defaultValue="put description here..."/>
</div>


<vyre-item:upload-field/>

<div>
  <input type="button" value="Save" onclick="<vyre-item:action type="createAndActivate" />"  class="btn green"/>
</div>

<c:if test="${item != null}">
  <div>
    <input type="button" value="Delete" onclick="<vyre-item:action type="delete" />" class="btn red"/>
  </div>
</c:if>
