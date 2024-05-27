<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<style>/* CSS for Registration Form */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
     align-items : center;
    height: 100vh;
     background: linear-gradient(135deg, #8bd7cb 0%, #c9e4e8 50%, #ffd3b6 100%);
    
}
h2{
 text-align: center;
 font-size: 70px;

}

form {
    background: #fff;
    max-width: 400px;
    margin: 20px auto;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
    font-weight: bold;
}

input[type="text"],
input[type="password"] {
    width: 100%;
    padding: 10px;
    margin: 5px 0 15px 0;
    border: 1px solid #ccc;
    border-radius: 3px;
    box-sizing: border-box; /* ensures padding and border are included in the element's total width and height */
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

.error {
    color: red;
    font-size: 0.9em;
}
</style>
</head>
<body>
<h2>ONLINE BANKING SYSTEM </h2>
<form action = "RegisterServlet" method = "post">
<label>USERNAME</label>
<input type = "text" name = "uname"/>
<br/>
<label>PASSWORD</label>
<input type = "password" name = "pwd"/>
<br/>
<label>CONFIRM PASSWORD</label>
<input type = "password" name = "cnfm"/>
<br/>
<input type = "submit" value="Register">
<br/><br/>
 If login !! <a href='Login.jsp'> Register Now</a>

</form>

</body>
</html>
