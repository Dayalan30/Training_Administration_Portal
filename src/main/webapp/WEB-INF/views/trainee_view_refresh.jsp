<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Refresh Page</title>
</head>
<body>

    <script type="text/javascript">
    if (!window.refreshed) {
        window.refreshed = true;
        window.location.reload(true);
    }
    </script>

</body>
</html>
