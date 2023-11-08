<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Railway Crossing</title>
        <link rel="icon" type="image/ico" href="https://logos-download.com/wp-content/uploads/2019/11/Indian_Railway_Logo_2.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <style>
            body{
                margin: 0%;
                padding: 0%;
                background-image: url(https://i1.wp.com/nerdschalk.com/wp-content/uploads/2020/06/blur-your-background-on-zoom-2.png);
            }
            .container{
                margin-left: 60%;
                margin-top: 20px;
                color: white;
                background-color: hwb(0 14% 83% / 0.314);
                height: 700px;
                width: 40%;
                border-radius: 5%;
            }
            .container img{
                margin-top: 10px;
                border-radius: 5%;
                height: 100px;
                width: 100%;
            }
        </style>
    </head>
    <body>
        <form method="post" action="SignUp">
            <div class="container">
                <img src="https://t3.ftcdn.net/jpg/00/29/82/12/360_F_29821254_q50pUSH1Bmygss0x3HpnyNnOWgoErkIX.jpg">
                <label style="margin-top: 30px;">FirstName : </label><br>
                <input style="margin-top: 5px; height: 6%; width: 100%; border-radius: 7%;" type="text" name="firstname" placeholder="Enter Firstname" required><br>
                <label style="margin-top: 20px;">LastName : </label><br>
                <input style="margin-top: 5px; height: 6%; width: 100%; border-radius: 7%;" type="text" name="lastname" placeholder="Enter Lastname" required><br>
                <label style="margin-top: 20px;">E-Mail : </label><br>
                <input style="margin-top: 5px; height: 6%; width: 100%; border-radius: 7%;" type="email" name="email" placeholder="Enter E-mail address" required><br>
                <label style="margin-top: 20px;">Password : </label><br>
                <input style="margin-top: 5px; height: 6%; width: 100%; border-radius: 7%;" type="password" name="password" placeholder="Enter Password" required><br>
                <label style="margin-top: 20px;">Re-Enter Password :</label><br>
                <input style="margin-top: 5px; height: 6%; width: 100%; border-radius: 7%;" type="password" name="re-password" placeholder="Enter password" required><br>
                <p>If you have an account..!Please<a href="userlogin.jsp">&nbsp;login</a></p><br>
                <input style="width: 48%; margin-left: 7px;" type="submit" value="Submit" class="btn btn-danger">
                <input style="width: 48%;" type="reset" value="Cancel" class="btn btn-danger">
            </div>
        </form>
    </body>
</html>