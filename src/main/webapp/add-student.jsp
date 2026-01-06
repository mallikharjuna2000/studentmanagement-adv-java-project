<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Add Student</title>
<style>
body{
    background: linear-gradient(120deg,#a8e063,#56ab2f);
    font-family: 'Segoe UI', sans-serif;
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;
}
.card{
    background:#fff;
    padding:35px;
    width:360px;
    border-radius:15px;
    box-shadow:0 20px 40px rgba(0,0,0,.25);
    animation:fadeIn .6s ease;
}
@keyframes fadeIn{
    from{opacity:0;transform:translateY(30px);}
    to{opacity:1;transform:translateY(0);}
}
h1{
    text-align:center;
    color:#2e7d32;
}
input{
    width:100%;
    padding:10px;
    margin:8px 0;
    border-radius:6px;
    border:1px solid #ccc;
}
input:focus{
    border-color:#2e7d32;
    box-shadow:0 0 8px rgba(46,125,50,.4);
    outline:none;
}
button{
    width:100%;
    margin-top:15px;
    padding:10px;
    background:#2e7d32;
    color:#fff;
    border:none;
    border-radius:6px;
    font-size:16px;
    cursor:pointer;
    transition:.3s;
}
button:hover{
    background:#1b5e20;
    transform:scale(1.05);
}
a{
    display:block;
    margin-top:15px;
    text-align:center;
    text-decoration:none;
    color:#2e7d32;
}
</style>
</head>
<body>

<div class="card">
<h1>Add Student</h1>
<form action="add-student" method="post">
    <input type="text" name="name" placeholder="Student Name" required>
    <input type="number" name="age" placeholder="Age" required>
    <input type="text" name="course" placeholder="Course" required>
    <button>Add Student</button>
</form>
<a href="students">← Back</a>
</div>

</body>
</html>
