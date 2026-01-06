<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<style>
body{
    background:linear-gradient(120deg,#2196f3,#21cbf3);
    font-family:Segoe UI;
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;
}
.login{
    background:rgba(255,255,255,.95);
    padding:40px;
    width:320px;
    border-radius:15px;
    box-shadow:0 25px 45px rgba(0,0,0,.3);
}
h1{
    text-align:center;
    color:#1976d2;
}
input{
    width:100%;
    padding:10px;
    margin:10px 0;
    border-radius:6px;
    border:1px solid #ccc;
}
input:focus{
    border-color:#1976d2;
    box-shadow:0 0 8px rgba(25,118,210,.4);
    outline:none;
}
button{
    width:100%;
    padding:10px;
    background:#1976d2;
    color:white;
    border:none;
    border-radius:6px;
    font-size:16px;
    cursor:pointer;
}
button:hover{
    background:#0d47a1;
}
</style>
</head>
<body>

<div class="login">
<h1>Login</h1>
<form action="login" method="post">
    <input type="text" name="username" placeholder="Username" required>
    <input type="password" name="password" placeholder="Password" required>
    <button>Login</button>
</form>
</div>

</body>
</html>
