<cfscript>
    if (!structKeyExists(session, "user")) {
        cfheader(statusCode="302");
        cfheader(name="statusText", value="Found");
        cfheader(name="Location", value="index.cfm");
        cfabort();
    }
</cfscript>

<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        .main{
            width: 100%;
            height: 100vh;
            display:flex;
            align-items:center;
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
            color: #333;
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
             width:100%;
            display:flex;
            align-items:center;
            justify-content: center;
        }
        .img{
            width:100%;
            display:flex;
            align-items:center;
            justify-content: center;
            margin:30px 0;
        }

        .profile-img{
            width:100px;
            height:100px;
        }

    </style>
</head>
<body>
    <div class="main">
        <div class="container">
            <h2>Single Sign On</h2>
            <div>
            <div class="details">
                <div class="img">
                    <img class="profile-img" src="<cfoutput>#session.user.picture#</cfoutput>" alt="Profile Image">
                </div>
                <p><b>Welcome, <cfoutput>#session.user.name#</cfoutput></b></p>
                <p><b>Email: <cfoutput>#session.user.email#</cfoutput></b></p>
            </div>
        </div>
    </div>
</body>
</html>

