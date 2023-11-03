<%@ page language="java" import="java.util.*, sys.*" errorPage="error.jsp" %>

<jsp:useBean id="login" scope="page" class="sys.Login">
 <jsp:setProperty name="login" property="*" />
</jsp:useBean>

<jsp:useBean id="monitor" scope="application" class="java.util.HashMap" />


<%    
    String display = "index.jsp";

    try {
        User user = login.authenticate();

        if (user != null) {
            
            if (monitor.containsKey(user)) {
                HttpSession oldSession = (HttpSession)monitor.get(user);

                /*****************************************
                HashMap hash = (HashMap)application.getAttribute("monitor");
                hash.remove(user);
                ******************************************/

                monitor.remove(user);
                oldSession.invalidate();
            }

            session.setAttribute("user", user);
            monitor.put(user, session);


            session.setMaxInactiveInterval(2000);
            display = "home.jsp";

        } else {
            display = "index.jsp?m=1";            
        }
        
    } catch (Exception e) {
      out.println(e.getMessage());
    }

%>

<jsp:forward page="<%= display %>" />  
