<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.codegnan.model.Student" %>

<%
Student student = (Student) request.getAttribute("student");
%>

<!DOCTYPE html>
<html>
<head>
<title>Edit Student</title>
<style>
body{
    background:linear-gradient(120deg,#ffb347,#ffcc33);
    font-family:Segoe UI;
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;
}
.box{
    background:#fff;
    padding:35px;
    width:360px;
    border-radius:15px;
    box-shadow:0 20px 40px rgba(0,0,0,.25);
    border-top:6px solid #ef6c00;
}
h1{
    text-align:center;
    color:#ef6c00;
}
input{
    width:100%;
    padding:10px;
    margin:8px 0;
    border-radius:6px;
    border:1px solid #ccc;
}
button{
    width:100%;
    padding:10px;
    margin-top:15px;
    background:#ef6c00;
    color:white;
    border:none;
    border-radius:6px;
    font-size:16px;
    cursor:pointer;
    transition:.3s;
}
button:hover{
    background:#e65100;
    transform:scale(1.05);
}
a{
    display:block;
    text-align:center;
    margin-top:15px;
    text-decoration:none;
    color:#ef6c00;
}
</style>
</head>
<body>

<div class="box">
<h1>Edit Student</h1>

<form action="edit-student" method="post">

    <!-- ID -->
    <input type="hidden" name="id"
           value="<%=student.getId()%>">

    <!-- NAME -->
    <input type="text" name="name"
           value="<%=student.getName()%>" required>

    <!-- AGE -->
    <input type="number" name="age"
           value="<%=student.getAge()%>" required>

    <!-- COURSE -->
    <input type="text" name="course"
           value="<%=student.getCourse()%>" required>

    <button>Update Student</button>
</form>

<a href="students">← Back</a>
</div>

</body>
</html>
