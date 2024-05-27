<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Logout</title>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
    background: linear-gradient(135deg, #8bd7cb 0%, #c9e4e8 50%, #ffd3b6 100%);
}

form {
    max-width: 300px;
    margin: 50px auto;
    padding: 20px;
    background-color: #ffffff;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

form a {
    display: block;
    text-align: center;
    padding: 10px;
    background-color: #007bff;
    color: #fff;
    text-decoration: none;
    border-radius: 5px;
    margin-left: 70px;
}
h5{
text-align: center;
 font-size: 40px;
}
h2{
text-align: center;
 font-size: 50px;
}


form a:hover {
    background-color: #0056b3;
}
</style>
</head>
<body>
<h5>ONLINE BANKING SYSTEM</h5>
<h2> Login Again</h2><form action = "LoginServlet" method = "post">
<a href='Login.jsp'> Login</a></form>

</body>
</html>
