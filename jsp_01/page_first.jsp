<!DOCTYPE=html>
<html>
    <style>
        .form{
            text-align:center;
            margin-top:100px;
        }
        input[type="text"]{
        box-sizing: border-box;
        text-align:center;
        font-size:1.4em;
        height:40px;
        border-radius:4px;
        border:1px solid #c8cccf;
        color:#6a6f77;
        -moz-appearance: none;
        width:200px;
        }
        input[type="text"]:focus{
        border:1px solid #ff7496;
        }
        .button{
            width:80px;
            height:40px;
            border-radius: 10px;
            -moz-border-radius: 25px;
            box-shadow: 0 5px 1px #5C8F78;
            background:#76f1bc;
            color:#fff;
            transition: all 0.3s ease;
            font-size:18px;
        }
        
        .button:hover {
            background: #56E0A5;
            box-shadow: 0 5px 1px #31AF79;
            color: #fff;
        }
    </style>
    <head>
        <title>chy</title>
    </head>
    <body>
        <%@ page language="java" contentType="text/html; charset=utf-8" %>
        <form action="page_second.jsp" methos="POST" class="form">
            <h2 class="title" style="font-size:50px;color:#76f1bc;">計算Fibonacci</h2>
            <div>
            请输入行：<input type="text" name="row" placeholder="行数"></input>
            </div>
            <br>
            <div>
            请输入列：<input type="text" name="col" placeholder="列数"></input>
            </div>
            <br>
            <input class="button" type="submit"></input>
            <input class="button" type="reset"></input>
        </form>
    </body>
</html>





