<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Enter User Details</title>
    
    <!-- Inline CSS for styling the page -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        h1 {
            color: #333;
            text-align: center;
        }
        .form-container {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }
        .form-container s:textfield {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }
        .form-container s:submit {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }
        .form-container s:submit:hover {
            background-color: #45a049;
        }
        .form-container label {
            font-size: 14px;
            color: #555;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Enter User Details</h1>
        <s:form action="fetchUsers" method="post">
    
            <s:submit value="View all Table " />
        
         </s:form>
               
    </div>
</body>
</html>
