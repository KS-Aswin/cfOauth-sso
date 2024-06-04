<!DOCTYPE html>
<html>
<head>
    <title>Login with Google</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        .main {
            width: 100%;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .container {
            width: 500px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #4285F4;
            text-align: center;
        }

        .details {
            margin-top: 20px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
        }

        .details p {
            margin: 0 0 10px;
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .img {
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 30px 0;
        }

        .profile-img {
            width: 100px;
            height: 100px;
        }
    </style>
</head>
<body>
    <div class="main">
        <div class="container">
            <h2>Login with Google SSO</h2>
            <div class="img">
                <a href="login.cfm">
                    <img src="google.png" alt="Login with Google" style="width: 30px;">
                </a>
            </div>
        </div>
    </div>
</body>
</html>
