<!-- tablesPage.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Five Tables Example</title>
<style>
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    margin: 20px;
    background-color: #f8f9fa;
    color: #343a40;
}

h1, h2 {
    color: #007bff;
    margin-bottom: 20px;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    overflow: hidden;
}

th, td {
    padding: 12px;
    text-align: left;
    border-bottom: 1px solid #dee2e6;
}

th {
    background-color: #007bff;
    color: #fff;
}

tbody tr:hover {
    background-color: #e9ecef;
    transition: background-color 0.3s;
}

h1 {
    margin-top: 40px;
    font-size: 28px;
    font-weight: bold;
}

h2 {
    font-size: 24px;
    font-weight: bold;
}

/* Additional Styles */
table caption {
    margin-bottom: 10px;
    font-size: 20px;
    font-weight: bold;
}

tbody tr:nth-child(even) {
    background-color: #f8f9fa;
}

a {
    color: #007bff;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}
tbody tr:nth-child(even) {
    background-color: #f8f9fa;
}

tbody tr td:first-child {
    background-color: #d6d8db; /* Adjust the color as needed */
    color: #000; /* Adjust the text color as needed */
}

a {
    color: #007bff;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}
</style>

</head>
<body>

    <h1>Course Curriculum</h1>

    <h2>Java</h2>
    <table>
        <thead>
            <tr>
                <th>DayDates</th>
                <th>Monday</th>
                <th>Tuesday</th>
                <th>Wednesday</th>
                <th>Thursday</th>
                <th>Friday</th>
                <th>Saturday</th>
                <th>Sunday</th>
            </tr>
        </thead>
        <tbody>
            <% 
                Map<String, List<Object>> tablesData = (Map<String, List<Object>>) request.getAttribute("tablesData");
                System.out.println("DOJO");

                for(int i=0; i<5; i++) {
                    String mano = "" + tablesData.get("java").get(i);

                    int sq=mano.indexOf('[');
                    String maindata = mano.substring(sq+1,mano.length()-1);
                    String[] str = maindata.split(",");
            %>
            <tr>
                <%
                    for(int j=0; j<str.length; j++) {
                        String s = str[j].substring(1);
                        int e = s.indexOf("=");

                        // System.out.println("Day : "+s.substring(0,e));
                        System.out.println("Value :"+s.substring(e+1));
                %>
                <td><%= s.substring(e+1) %></td>
                <%
                    }
                %>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>

  <h2>Python</h2>
    <table>
        <thead>
            <tr>
                <th>DayDates</th>
                <th>Monday</th>
                <th>Tuesday</th>
                <th>Wednesday</th>
                <th>Thursday</th>
                <th>Friday</th>
                <th>Saturday</th>
                <th>Sunday</th>
            </tr>
        </thead>
        <tbody>
            <% 
                
               

                for(int i=0; i<5; i++) {
                    String mano = "" + tablesData.get("python").get(i);

                    int sq=mano.indexOf('[');
                    String maindata = mano.substring(sq+1,mano.length()-1);
                    String[] str = maindata.split(",");
            %>
            <tr>
                <%
                    for(int j=0; j<str.length; j++) {
                        String s = str[j].substring(1);
                        int e = s.indexOf("=");

                        // System.out.println("Day : "+s.substring(0,e));
                        System.out.println("Value :"+s.substring(e+1));
                %>
                <td><%= s.substring(e+1) %></td>
                <%
                    }
                %>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
    
    
      <h2>MySql</h2>
    <table>
        <thead>
            <tr>
                <th>DayDates</th>
                <th>Monday</th>
                <th>Tuesday</th>
                <th>Wednesday</th>
                <th>Thursday</th>
                <th>Friday</th>
                <th>Saturday</th>
                <th>Sunday</th>
            </tr>
        </thead>
        <tbody>
            <% 
               
                System.out.println("DOJO");

                for(int i=0; i<5; i++) {
                    String mano = "" + tablesData.get("msql").get(i);

                    int sq=mano.indexOf('[');
                    String maindata = mano.substring(sq+1,mano.length()-1);
                    String[] str = maindata.split(",");
            %>
            <tr>
                <%
                    for(int j=0; j<str.length; j++) {
                        String s = str[j].substring(1);
                        int e = s.indexOf("=");

                        // System.out.println("Day : "+s.substring(0,e));
                        System.out.println("Value :"+s.substring(e+1));
                %>
                <td><%= s.substring(e+1) %></td>
                <%
                    }
                %>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
    
    
      <h2>FrontEnd</h2>
    <table>
        <thead>
            <tr>
                <th>DayDates</th>
                <th>Monday</th>
                <th>Tuesday</th>
                <th>Wednesday</th>
                <th>Thursday</th>
                <th>Friday</th>
                <th>Saturday</th>
                <th>Sunday</th>
            </tr>
        </thead>
        <tbody>
            <% 
               
                

                for(int i=0; i<5; i++) {
                    String mano = "" + tablesData.get("frontend").get(i);

                    int sq=mano.indexOf('[');
                    String maindata = mano.substring(sq+1,mano.length()-1);
                    String[] str = maindata.split(",");
            %>
            <tr>
                <%
                    for(int j=0; j<str.length; j++) {
                        String s = str[j].substring(1);
                        int e = s.indexOf("=");

                        // System.out.println("Day : "+s.substring(0,e));
                        System.out.println("Value :"+s.substring(e+1));
                %>
                <td><%= s.substring(e+1) %></td>
                <%
                    }
                %>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
    
    
        <h2>C</h2>
    <table>
        <thead>
            <tr>
                <th>DayDates</th>
                <th>Monday</th>
                <th>Tuesday</th>
                <th>Wednesday</th>
                <th>Thursday</th>
                <th>Friday</th>
                <th>Saturday</th>
                <th>Sunday</th>
            </tr>
        </thead>
        <tbody>
            <% 
               
                

                for(int i=0; i<5; i++) {
                    String mano = "" + tablesData.get("c").get(i);

                    int sq=mano.indexOf('[');
                    String maindata = mano.substring(sq+1,mano.length()-1);
                    String[] str = maindata.split(",");
            %>
            <tr>
                <%
                    for(int j=0; j<str.length; j++) {
                        String s = str[j].substring(1);
                        int e = s.indexOf("=");

                        // System.out.println("Day : "+s.substring(0,e));
                        System.out.println("Value :"+s.substring(e+1));
                %>
                <td><%= s.substring(e+1) %></td>
                <%
                    }
                %>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
      
        <h2>C++</h2>
    <table>
        <thead>
            <tr>
                <th>DayDates</th>
                <th>Monday</th>
                <th>Tuesday</th>
                <th>Wednesday</th>
                <th>Thursday</th>
                <th>Friday</th>
                <th>Saturday</th>
                <th>Sunday</th>
            </tr>
        </thead>
        <tbody>
            <% 
               
                

                for(int i=0; i<5; i++) {
                    String mano = "" + tablesData.get("cpp").get(i);

                    int sq=mano.indexOf('[');
                    String maindata = mano.substring(sq+1,mano.length()-1);
                    String[] str = maindata.split(",");
            %>
            <tr>
                <%
                    for(int j=0; j<str.length; j++) {
                        String s = str[j].substring(1);
                        int e = s.indexOf("=");

                        // System.out.println("Day : "+s.substring(0,e));
                        System.out.println("Value :"+s.substring(e+1));
                %>
                <td><%= s.substring(e+1) %></td>
                <%
                    }
                %>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>



    <br>
    
    <br>
    <h1></h1>

</body>
</html>
