<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
    <title>Search Results</title>
</head>
<body>

<h1>Search Results</h1>

<s:if test="users != null && !users.isEmpty()">
    <table border="1">
        <tr>
            <th>First Name</th>
            <th>Email</th>
             <th>Password</th>
            <th>Age</th>
              <th>Description</th>
              <th>Sex</th>
        </tr>
        <s:iterator value="users">
            <tr>
                <td><s:property value="fullname" /></td>
                <td><s:property value="email" /></td>
                      <td><s:property value="pass" /></td>
                <td><s:property value="age" /></td>
                      <td><s:property value="hint" /></td>
                <td><s:property value="pass" /></td>
            </tr>
        </s:iterator>
    </table>
</s:if>

<s:else>
    <p>No users found with the given last name.</p>
</s:else>

</body>
</html>
