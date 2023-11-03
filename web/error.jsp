<%@ page isErrorPage="true" import="java.io.*" %>
<html>
<head>
<title>Error Page</title>
</head>

<script LANGUAGE="JavaScript" TYPE="text/javascript">
<!--
function back()
{
	history.back(1)
}
//-->
</script>

<body>
<table border="1">
    <tr>
        <td>Exception</td>
        <td><%= exception %></td>
    </tr>
    <tr>
        <td>Message</td>
        <td><%= exception.getMessage() %></td>
    </tr>
    <tr>
        <td>Localized Message</td>
        <td><%= exception.getLocalizedMessage() %></td>
    </tr>
    <tr>
        <td>Stack Trace</td>
        <td><pre>
            <%  StringWriter sw = new StringWriter();
                PrintWriter pw = new PrintWriter(sw);
                exception.printStackTrace(pw);
                out.println(sw);
            %>
        </pre></td>
    </tr>
</table>
     <p>
     <input type="button" value="&lt;&lt; Retornar" name="B5"
      style="font-family: Verdana; font-size: 7pt" onClick="back()">
</body>
</html>
