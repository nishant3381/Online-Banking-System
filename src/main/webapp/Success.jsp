<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title> Login Success</title>
<style>
/* CSS for Login Success Page */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
     padding: 100px 600px;
}

.container {
    width: 100%;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

h2, h4 {
    text-align: center;
    font-size: 50px;
}

ul {
    list-style-type: none;
    padding: 0;
}

li {
    margin-bottom: 10px;
    font-size: 30px;
}

a {
    display: block;
    text-align: center;
    color: #4caf50;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}
</style>
</head>
<body>
<h2> Login Successful</h2>
<h4> Account Operations</h4>
<ul>
<li> <a href='Create.jsp'> Create Account</a></li>
<li> <a href='Display.jsp'> Diplay details</a></li>
<li> <a href='Deposit.jsp'> Deposit </a></li>
<li> <a href='Withdraw.jsp'> Withdraw</a></li>
<li> <a href='Logout.jsp'> Logout</a></li>

</ul>

</body>
</html>