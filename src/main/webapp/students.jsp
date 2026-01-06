<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.codegnan.model.Student" %>
<!DOCTYPE html>
<html>
<head>
<title>Students</title>
<style>
body{
    background:#f4f6f9;
    font-family:Segoe UI;
    padding:30px;
}
h1{text-align:center;}
table{
    width:85%;
    margin:auto;
    border-collapse:collapse;
    background:white;
    box-shadow:0 15px 30px rgba(0,0,0,.15);
}
th{
    background:#343a40;
    color:white;
    padding:12px;
}
td{
    padding:10px;
    text-align:center;
}
tr:hover{background:#e3f2fd;}
button{
    padding:6px 12px;
    border:none;
    border-radius:4px;
    cursor:pointer;
}
.edit{background:#ffc107;}
.delete{background:#dc3545;color:white;}
.edit:hover{transform:scale(1.1);}
.delete:hover{background:#b71c1c;}
a{
    margin:15px;
    display:inline-block;
    text-decoration:none;
    font-weight:bold;
}
</style>
</head>
<body>

<h1>Student Dashboard</h1>

<table border="1">
<tr>
<th>ID</th><th>Name</th><th>Age</th><th>Course</th>
<% if("admin".equals(session.getAttribute("role"))){ %>
<th>Actions</th>
<% } %>
</tr>

<% List<Student> students=(List<Student>)request.getAttribute("students");
for(Student s:students){ %>
<tr>
<td><%=s.getId()%></td>
<td><%=s.getName()%></td>
<td><%=s.getAge()%></td>
<td><%=s.getCourse()%></td>
<% if("admin".equals(session.getAttribute("role"))){ %>
<td>
<form action="edit-student" method="get" style="display:inline">
<input type="hidden" name="id" value="<%=s.getId()%>">
<button class="edit">Edit</button>
</form>
<form action="delete-student" method="post" style="display:inline">
<input type="hidden" name="id" value="<%=s.getId()%>">
<button class="delete">Delete</button>
</form>
</td>
<% } %>
</tr>
<% } %>
</table>

<center>
<% if("admin".equals(session.getAttribute("role"))){ %>
<a href="add-student">➕ Add Student</a>
<% } %>
<a href="logout">🚪 Logout</a>
</center>

</body>
</html>
