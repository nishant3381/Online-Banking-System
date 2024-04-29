<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<style>
/* CSS for Login Form */
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

form {
    background: #fff;
    max-width: 400px;
    padding: 30px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
    font-weight: bold;
    margin-bottom: 5px;
    display: block;
}
h2{
 text-align: center;
 font-size: 50px;

}

input[type="text"],
input[type="password"] {
    width: calc(100% - 22px);
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 3px;
}

input[type="submit"] {
    background-color: #4caf50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #45a049;
}

.register-link {
    margin-top: 10px;
    text-align: center;
}

.register-link a {
    color: #4caf50;
    text-decoration: none;
}

.register-link a:hover {
    text-decoration: underline;
}
</style>
</head>
<body>
<h2>LOGIN</h2>
<form action = "LoginServlet" method = "post">
<label>USERNAME : </label>
<input type = "text" name = "uname"/>
<br/><br/>
<label>PASSWORD : </label>
<input type = "Password" name = "pwd"/>
<br/><BR/>	
<input type = "submit" value="Login">
<br/><br/>
 Not Registered Yet? <a href='Register.jsp'> Register Now</a>
</form>
</body>
</html>