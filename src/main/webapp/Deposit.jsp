<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Create</title>
<style>
/* CSS for Create Form */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    
     padding: 100px 600px;
      align-items : center;
    height: 100vh;
      background: linear-gradient(135deg, #8bd7cb 0%, #c9e4e8 50%, #ffd3b6 100%);
    
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
    margin-left: 70px;
}

label {
    font-weight: bold;
    margin-bottom: 5px;
    display: block;
}

input[type="text"] {
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
h5{
text-align: center;
 font-size: 40px;
}
h2{
text-align: center;
 font-size: 50px;
}

input[type="submit"]:hover {
    background-color: #45a049;
}
</style>
</head>
<body>
<h5>ONLINE BANKING SYSTEM</h5>
<h2> Create Account</h2>
<form action= 'CreateServlet'  method='post'>
<label>Enter Acc Num :</label>
<input type = 'text' name='num'/>
<br/>
<label>Enter Name :</label>
<input type = 'text' name='name'/>
<br/>
<label>Enter Enter Balance :</label>
<input type = 'text' name='balance'/>

<input type = 'submit' value ='Create Account'/>
</form>

</body>
</html>
