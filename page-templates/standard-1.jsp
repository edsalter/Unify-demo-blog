<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<jsp:directive.page contentType="text/html;charset=UTF-8"/>
<% response.setContentType("text/html;charset=" + vyre.core.Kernel.getEncoding()); %>
<%@ taglib uri="http://www.vyre.com/taglibs/vyre-templates-1.0" prefix="vyre-template" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<vyre-template:head />
</head>

<body> 
	<div id="holder">
		<div id="blogHead">
			<!-- NEED TO CHANGE ID -->
			<vyre-template:content-area id="blogHead1" shared="true" />
		</div>


		<div>
			<!-- NEED TO CHANGE ID -->
			<vyre-template:content-area id="blogBody1" />
		</div>



		<div id="blogFooter">
			<!-- NEED TO CHANGE ID -->
			<vyre-template:content-area id="blogFooter1" shared="true" />
		</div>
	</div>

</body>
</html>