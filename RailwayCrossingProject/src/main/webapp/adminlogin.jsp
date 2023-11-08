<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Railway Crossing</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="icon" type="image/ico" href="https://logos-download.com/wp-content/uploads/2019/11/Indian_Railway_Logo_2.png">

        <style>
            body{
                background-image: url(https://png.pngtree.com/background/20210715/original/pngtree-color-contrast-gradient-login-interface-login-box-picture-image_1319414.jpg);
                background-repeat: no-repeat;
                background-position: center;
                background-size: cover;
                background-attachment: fixed;
            } 
            .container{
                color: white;
                background-color: #1a2c3fda;
                height: 430px;
                width: 25%;
                margin-top: 4.5%;
                margin-left: 40%;
                border-radius: 5%;
            }
            .container img{
                margin-top: 10px;
                margin-left: 120px;
                height: 15%;   
            }
            
        </style>
    </head>
    <body>
        <form method="post" action="adminhomepage.jsp">
            <div class="container">
                <img src="https://www.freeiconspng.com/thumbs/login-icon/user-login-icon-29.png" >
                <h2 style="text-align: center;">Admin Login</h2>
                <label style="margin-top: 25px;">UserName : </label><br>
                <input style="margin-top: 5px; height: 9%; width: 100%; border-radius: 8%;" type="text" name="username" value="Lakshman" placeholder="Enter Username" required><br>
                <label style="margin-top: 20px;">Password : </label><br>
                <input style="margin-top: 5px; height: 9%; width: 100%; border-radius: 8%;" type="password" name="password" value="tiger" placeholder="Enter Password" required><br>
                <a href="Signup.html"><p style="color: hsl(180, 82%, 52%);">Forget Password?</a><br><br>
                <input type="submit" value="Login" style="width: 45%; margin-left: 5px;" class="btn btn-primary">
                <input type="reset" value="Cancel" style="width: 45%;margin-left: 18px" class="btn btn-primary">
            </div>
        </form>
    </body>
</html>