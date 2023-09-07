<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Join Us</title>
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei"
                rel="stylesheet">
        <link href="css/style.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
            <div class="container">
                <div style="display:flex; margin-top: 200px">
                    <div style="flex:1">
                        <div class="box">
                            <h1>Admin Login</h1>
                            <form action="LoginServlet" method="post">
                                    <p>Email</p>
                                    <input type="text" placeholder="Email" name="aemail" required>
                                    <p>Password</p>
                                    <input type="password" placeholder="Password" name="apassword"
                                            required> <input type="submit" value="Login"> 
                            </form>
                    </div>
                    </div>
                    <div style="flex:1">
                        <div class="box">
                            <h1>Consultant Login</h1>
                            <form action="ConsultantLoginServlet" method="post">
                                    <p>Email</p>
                                    <input type="text" placeholder="Email" name="email" required>
                                    <p>Password</p>
                                    <input type="password" placeholder="Password" name="password"required> 
                                    <input type="submit" value="Login">
                            </form>
                    </div>
                    </div>
                    <div style="flex:1"><div class="box">
                            <h1>Job Seeker Login</h1>
                            <form action="JobSeekerLoginServlet" method="post">
                                    <p>Email</p>
                                    <input type="text" placeholder="Email" name="semail" required>
                                    <p>Password</p>
                                    <input type="password" placeholder="Password" name="spassword"
                                            required> <input type="submit" value="Login">
                            </form>
                    </div></div>
                </div>
                </div>

    </body>
</html>
