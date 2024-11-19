<%@ taglib uri="/struts-tags" prefix="s" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bluesky Login</title>
    <style>
        /* Global Styles */
        body {
            font-family: 'Arial', sans-serif;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(to bottom, #a2d9ff, #e6f7ff);
            margin: 0;
            padding: 0;
        }

        /* Form Container */
        .form-container {
            background: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 450px;
            border: 2px solid #3498db;
            box-sizing: border-box;
        }

        .form-container h1 {
            text-align: center;
            font-size: 28px;
            margin-bottom: 30px;
            font-weight: bold;
            color: #3498db;
        }

        .form-container div {
            margin-bottom: 20px;
        }

        /* Input Styles */
        .form-container input {
            width: 100%;
            padding: 15px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            outline: none;
            color: #333;
            background: #f9f9f9;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        .form-container input:focus {
            border-color: #3498db;
            box-shadow: 0 0 8px rgba(52, 152, 219, 0.3);
        }

        /* Submit Button */
        .form-container .s-button {
            width: 100%;
            padding: 15px;
            font-size: 18px;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            color: #fff;
            background: #3498db;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .form-container .s-button:hover {
            background-color: #2874a6;
            transform: translateY(-2px);
        }

        /* Message Alerts */
        .form-container .alert {
            font-size: 16px;
            text-align: center;
            color: #fff;
            padding: 10px;
            border-radius: 5px;
            margin-top: 10px;
        }

        .form-container .success {
            background-color: #28a745;
        }

        .form-container .error {
            background-color: #dc3545;
        }

        /* Forgot Password Section */
        .forgot-password {
            text-align: center;
            margin-top: 20px;
        }

        .forgot-password a {
            color: #3498db;
            text-decoration: none;
            font-size: 14px;
        }

        .forgot-password a:hover {
            text-decoration: underline;
        }

        /* Hidden Forgot Password Form */
        .hidden {
            display: none;
        }
    </style>
    <script>
        function showForgotPassword() {
            const forgotForm = document.getElementById('forgot-password-form');
            if (forgotForm) {
                forgotForm.classList.toggle('hidden');
            }
        }
    </script>
</head>
<body>

    <div class="form-container">
        <h1>Blue Sky Login</h1>
  
        <!-- Display Hint at the Top -->
        <div>
            <s:label name="hint" />
        </div>

        <!-- Login Form -->
        <s:form action="loginUser" method="post">
            <!-- Email Input -->
            <div>
                <s:textfield name="email" label="Username" placeholder="Enter your email" />
            </div>

            <!-- Password Input -->
            <div>
                <s:textfield name="pass" type="password" label="Password" placeholder="Enter your password" />
            </div>

            <!-- Login Button -->
            <div>
                <s:submit value="Login" cssClass="s-button" />
            </div>
        </s:form>

        <!-- Display Success or Error Messages -->
        <s:if test="hasActionMessages()">
            <div class="alert success">
                <s:actionmessage />
            </div>
        </s:if>

        <s:if test="hasActionErrors()">
            <div class="alert error">
                <s:actionerror />
            </div>
        </s:if>

        <!-- Forgot Password Link -->
        <div class="forgot-password">
            <a href="javascript:void(0);" onclick="showForgotPassword()">Forgot Password?</a>
        </div>

        <!-- Hidden Forgot Password Form -->
        <div id="forgot-password-form" class="hidden">
            <s:form action="getuser" method="post">
          
                <div>s
                    <s:textfield name="emailSearch" placeholder="Enter your email for hint" />
                </div>
                <div>
                    <s:submit value="Get Hint" cssClass="s-button" />
                </div>
            </s:form>
        </div>
    </div>

</body>
</html>
