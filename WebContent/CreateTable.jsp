<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CreateTable</title>
</head>
<body>
<%String name = request.getParameter("name");%>
<%int rows = Integer.parseInt(request.getParameter("rows"));%>
<%int columns = Integer.parseInt(request.getParameter("columns"));%>
hello
<%
if((name.isEmpty()))out.println("no name entered");
else
out.println(name); %>
, this is your table<br>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
</tbody>
<%
if(!(rows>0&&columns>0))out.println("Enter positive table values: "+
		"<P>Return to<A HREF=\"classexercise.jsp\"> table creator </A>");

for(int n=0;n < rows;n++){
	out.println("<tr>");

	for(int j=0;j < columns;j++){
		out.println("<td style=\"vertical-align: top;\">"+n+","+j+"<br>");
		out.println("</td>");
	}
	out.println("</tr>");
} %>
</tbody>
</table>
<br>
</body>
</html>