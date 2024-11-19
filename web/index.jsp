<%-- 
    Document   : index
    Created on : 11 19, 24, 8:37:35 AM
    Author     : itcrc
--%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bluesky Registration</title>
        <style>
            /* Reset */
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: 'Arial', sans-serif;
                color: #333;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                background: linear-gradient(to bottom, #a2d9ff, #e6f7ff);
                overflow: hidden;
            }

            /* Sky background */
            .sky {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: linear-gradient(to bottom, #a2d9ff, #e6f7ff);
                z-index: 0;
            }

            /* Clouds background */
            .clouds {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: url('https://i.pinimg.com/originals/66/94/11/669411a8a3da9affd30c9f89364918f2.gif') repeat-x; /* Replace with a high-quality cloud image */
                background-size: cover;
                z-index: 1;
            }

            /* Alert Box Styling */
            .alert {
                position: fixed;
                top: 20px;
                left: 50%;
                transform: translateX(-50%);
                padding: 15px 30px;
                background-color: #28a745;
                color: white;
                border-radius: 5px;
                font-size: 18px;
                display: none;
                box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
                z-index: 2;
            }

            .alert.error {
                background-color: #dc3545;
            }

            .form-container {
                position: relative;
                z-index: 2;
                background: #ffffff;
                padding: 30px 25px;
                border-radius: 10px;
                box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
                width: 100%;
                max-width: 500px;
                border: 2px solid #3498db;
            }

            .form-container h1 {
                text-align: center;
                font-size: 26px;
                margin-bottom: 20px;
                font-weight: bold;
                color: #3498db;
            }

            .form-container div {
                margin-bottom: 15px;
            }

            .form-container input,
            .form-container textarea,
            .form-container select {
                width: 100%;
                padding: 12px;
                font-size: 14px;
                border: 1px solid #ccc;
                border-radius: 5px;
                outline: none;
                color: #333;
                background: #f9f9f9;
                transition: border-color 0.2s, box-shadow 0.2s;
            }

            .form-container input:focus,
            .form-container textarea:focus,
            .form-container select:focus {
                border-color: #3498db;
                box-shadow: 0 0 5px rgba(52, 152, 219, 0.3);
            }

            .form-container textarea {
                resize: vertical;
                height: 100px;
            }

            .form-container select {
                appearance: none;
                background: #f9f9f9;
            }

            .form-container .s-button {
                width: 100%;
                padding: 12px;
                font-size: 16px;
                font-weight: bold;
                border: none;
                border-radius: 5px;
                color: #fff;
                background: #3498db;
                cursor: pointer;
                transition: background-color 0.3s, transform 0.2s;
            }

            .form-container .s-button:hover {
                background-color: #2874a6;
                transform: translateY(-2px);
            }

            .form-container .s-button:active {
                background-color: #1c5a85;
                transform: translateY(0);
            }
            </style>
    </head>
    <body>
        <div class="sky"></div>
        <div class="clouds"></div>
        <div class="form-container">
            
                 <!-- Display Success or Error Alerts -->
        <s:actionmessage/>
        <s:actionerror/>
        
        <script type="text/javascript">
            // Display success or error message as an alert
             <s:if test="hasActionMessages()">
                document.getElementById('alertBox').style.display = 'block';
                document.getElementById('alertBox').classList.remove('error');
                document.getElementById('alertBox').classList.add('success');
            </s:if>

            <s:if test="hasActionErrors()">
                document.getElementById('alertBox').style.display = 'block';
                document.getElementById('alertBox').classList.remove('success');
                document.getElementById('alertBox').classList.add('error');
            </s:if>
        </script>
            
            <h1>Bluesky Registration</h1>
            <s:form action="saveUser" method="post">
                <div>
                    <s:textfield name="fullname" label="Full Name" />
                </div>
                <div>
                    <s:textfield name="email" label="Email" />
                </div>
                <div>
                    <s:textfield name="pass" type="password" label="Password" />
                </div>
                <div>
                    <s:textfield name="age" type="number" label="Age" />
                </div>
                <div>
                    <s:textarea name="hint" label="Brief Hint About Your Password" />
                </div>
                <div>
                    <s:select name="sex" label="Sex"
                              list="{'Male', 'Female', 'Prefer to keep it Hidden'}"
                              headerKey="-1" headerValue="Select an option" />
                </div>
                <div>
                    <s:submit value="Register Account" cssClass="s-button" />
                </div>
            </s:form>
            
             <div>
                 <a href ="login.jsp">Have an Account Login Here</a>
                </div>
        </div>
    </body>
</html>
