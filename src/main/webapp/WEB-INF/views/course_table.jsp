
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="tap.app.entities.TableData" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Current Course Curriculum</title>
    <link rel="icon" type="image/x-icon" href="favicon.ico">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 20px;
            background-color: #f8f9fa;
            color: #343a40;
        }

        h1 {
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

        table caption {
            margin-bottom: 20px;
            font-size: 24px;
            font-weight: bold;
            color: #007bff;
        }
    </style>
      <%
  List<TableData> courseTableList = (List<TableData>) request.getAttribute("tableDataList");
    %>
</head>
<body>
    <h1>Current Course Curriculum</h1>

    <table border="1">
        <caption>Course Schedule</caption>
        <thead>
            <tr>
                <th>Day/Date</th>
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
                for (int i = 0; i < courseTableList.size(); i++) {
            %>
                <tr>
                    <td><%=courseTableList.get(i).getDayDates()%></td>
                    <td><%=courseTableList.get(i).getMonday()%></td>
                    <td><%=courseTableList.get(i).getTuesday()%></td>
                    <td><%=courseTableList.get(i).getWednesday()%></td>
                    <td><%=courseTableList.get(i).getThursday()%></td>
                    <td><%=courseTableList.get(i).getFriday()%></td>
                    <td><%=courseTableList.get(i).getSaturday()%></td>
                    <td><%=courseTableList.get(i).getSunday()%></td>
                </tr>
            <%
                }
            %>
        </tbody>
    </table>

 </body>
</html>
