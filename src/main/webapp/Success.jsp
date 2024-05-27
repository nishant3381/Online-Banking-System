<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
              background: linear-gradient(135deg, #8bd7cb 0%, #c9e4e8 50%, #ffd3b6 100%);
            color: white;
        }
        h2 {
            color: #fff;
        }
        h4 {
            margin-top: 0;
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        li {
            margin: 20px 0;
            background-color: rgba(0, 0, 0, 0.6);
            padding: 15px 20px;
            border-radius: 8px;
            transition: background-color 0.3s;
        }
        li:hover {
            background-color: rgba(0, 0, 0, 0.8);
        }
        a {
            text-decoration: none;
            color: #2196F3;
            font-size: 18px;
            transition: color 0.3s;
        }
        h5{
        
		text-align: center;
		 font-size: 40px;
      }
        a:hover {
            color: #FF4081;
        }
        .content {
            text-align: center;
            background: rgba(0, 0, 0, 0.5);
            padding: 20px;
            border-radius: 8px;
            width: 40%;
        }
    </style>
</head>
<body>
<h5> ONLINE BANKING SYSTEM</h5>
<h2>Login Successful!</h2>
    <div class="content">
        
        <h4>Account Operations</h4>
        <ul>
            <li><a href="Create.jsp">Create Account</a></li>
            <li><a href="Display.jsp">Display details</a></li>
            <li><a href="Deposit.jsp">Deposit</a></li>
            <li><a href="Withdraw.jsp">Withdraw</a></li>
            <li><a href="Logout.jsp">Logout</a></li>
        </ul>
    </div>
</body>
</html>
