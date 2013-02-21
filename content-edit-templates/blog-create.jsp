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
<label>Blog title</label>
  <vyre-item:attribute name="name" mode="field" defaultValue="" label="none"/>
</div>

<div>
<label>Blog body</label>
  <vyre-item:attribute name="description" mode="field" defaultValue="" label="none" />
</div>

<!-- NEED TO CHANGE LINK ID -->

<label>Select a previously uploaded image</label>
<div>
  <vyre-item:item-link id="61" mode="field" />
</div>


<div>
  <input type="button" class="btn" value="Save" onclick="<vyre-item:action type="createAndActivate" />"/>
</div>




<c:if test="${item != null}">
  <div>
    <input type="button" value="Delete" onclick="<vyre-item:action type="delete"  />" class="btn"/>
  </div>
</c:if>
