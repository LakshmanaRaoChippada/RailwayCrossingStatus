<html>
    <head>
        <title>Railway Crossing</title>
        <link rel="icon" type="image/ico" href="https://logos-download.com/wp-content/uploads/2019/11/Indian_Railway_Logo_2.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> 
         
        <style>
        	header{
			    margin: 0%;
			    padding: 0%;
			    background-color: rgb(39, 37, 37);
			    
			}
			
			header img{
			    height: 100px;
			    width: 100px;
			    margin: 0%;
			}
			#col{
			    background-color: rgba(250, 252, 253, 0.801);
			    border: 1px solid black;
			    border-radius: 3%;
			    margin-top: 10%;
			    height: 300px;
			}
			#list{
			    font-size: large;
			}
			footer,#dev{
			    background-color: black;
			    color: white;
			    text-align: center;
			    margin: 0%;
			}
			
			
			.card{
			    background-color: rgba(250, 252, 253, 0.801);
			}
			body{
			    background-image: url(https://media.istockphoto.com/id/1317229163/photo/closed-railway-crossing-gate-and-a-red-warning-light-with-a-freight-train-in-background.jpg?s=612x612&w=0&k=20&c=I6wrrhMoSa78AfIZUufQnIQKPGYlU2W3nPQQwutKYzI=);
			    background-repeat: no-repeat;
			    background-attachment: fixed;
			    background-size: cover;
			    scroll-behavior: auto;
			    
			}
        </style>
    </head>
    <body>              
        <header>
            <nav class="navbar">
                <div class="container-fluid">
                    <a class="navbar-brand" style="color: white;"><h1>Welcome Railway Crossing</h1></a>                    
                    <a href="welcome.jsp"><img src="https://logos-download.com/wp-content/uploads/2019/11/Indian_Railway_Logo_2.png"></a>
                </div>
            </nav>
        </header>
        
        <div class="container">
            <div class="row">
                <div class="col-5" id="col">
                    <h4 style="margin-top: 15px;">Railway Crossing</h4>
                    <form method="post" action="userlogin.jsp">
                        <input type="search" class="form-control" placeholder="Enter Railway Crossing Center" required><br>
                        <input class="btn btn-success" type="submit" value="Search" style="width: 30%;">
                    </form><br><br>
                    <a href="userlogin.jsp"><input class="btn btn-primary" type="submit" value="USER" style="width: 49%;"></a>
                    <a href="adminlogin.jsp"><input class="btn btn-primary" type="submit" value="ADMIN" style="width: 49%;"></a>
                </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="col-6" id="col">
                    <h5>Advisory for IPAS users:-</h5><br>
                    <ol id="list">
                        <li>All staff/officers are advised not to share their personal information/ bank account details/ OTP to anybody on phone, email or SMS</li>
                        <li>See Login History to ensure that your UserId and passwords are not being used unauthorizedly.</li>
                        <li>For any assistance, CRIS Centralised Helpdesk Team may be contacted on following Mobile Numbers -
                            1- 8130868799
                            2- 8130353466</li>
                    </ol>
                </div>
            </div>
        </div>
        <br><br><br>
        <h4 id="dev">Developers</h4>
        <div class="card-group">
            <div class="card">  
                <img src="https://img.freepik.com/free-vector/frontend-developer-typographic-header-website-interface-design-improvement-web-page-programming-coding-testing-it-profession-isolated-flat-vector-illustration_613284-304.jpg?w=2000" class="card-img-top">
              <div class="card-body">
                <h5 class="card-title">Sai Kumar,Front-End</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              </div>
            </div>

            <div class="card">
                <img src="https://img.freepik.com/free-vector/frontend-developer-typographic-header-website-interface-design-improvement-web-page-programming-coding-testing-it-profession-isolated-flat-vector-illustration_613284-304.jpg?w=2000" class="card-img-top">
              <div class="card-body">
                <h5 class="card-title">BalaKristna,Front-End</h5>
                <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
              </div>
            </div>

            <div class="card">
                <img src="https://img.freepik.com/free-vector/back-end-developer-typographic-header-software-development-process-website-interface-design-improvement-programming-coding-it-profession-isolated-flat-vector-illustration_613284-521.jpg?w=2000" class="card-img-top">
              <div class="card-body">
                <h5 class="card-title">Lakshman,Back-End</h5>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
              </div>
            </div>

            <div class="card">
                <img src="https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/218170802/original/88e6008ffe9203cbeff4fcf6686527a46b83d3cb/design-database-mysql-oracle-sql-server-and-sql-queries.jpg" class="card-img-top">
                <div class="card-body">
                  <h5 class="card-title">Jasmitha,DataBase</h5>
                  <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                </div>
              </div>
          </div>
        <footer>@CopyRights2023,Railway Crossing,All Rights Reserved.</footer>
    </body>
</html>
