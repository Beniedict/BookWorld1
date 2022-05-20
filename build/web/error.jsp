<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
        
        <style>
            body 
            {
                font-family: 'Open Sans', sans-serif;
                background-image: url("pictures/login_background.jpg");
                background-position: center center;
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: cover;
                color: #474747;
                line-height: 1.6;
                display: flex;
                flex-direction: column;
                align-items: center;
            }

            h1
            {
                font-family: 'Open Sans', sans-serif;
            }

            .sub-head
            {
                margin-top: -20px;
                font-size: 15px;
            }

            .image
            {
                width: 100%;
                max-width: 300px;
                height: auto;
                margin-top: 50px;
            }
            
            button 
            {
                font-family: 'Open Sans', sans-serif;
                width: 100%;
                padding: 7px;
                font-size: 17px;
                background: #27BED8;
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }
        </style>
       
    </head>
    <body>
        <img class="image" src="pictures/error_mark.png" alt="checklogo">
        <h1>Authentication Error <h1>
        <p class="sub-head">
            <u>
                <b>
                    <%
                        String error = (String) request.getAttribute("error");
                        
                        if (error == null)
                        {
                            out.println("");
                        }
                        else if(error.equals("Username"))
                        {
                            out.println("Username Not Found. Please Try Again.");
                        }
                        else if(error.equals("Password"))
                        {
                            out.println("Incorrect Password. Please Try Again.");
                        }
                    %>
                </b>
            </u>
        </p>
        <a href ="login.jsp">
            <button href="login.jsp" name="home_button" type="submit">Okay</button>
        </a>
    </body>
</html>
