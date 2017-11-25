
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.0.0-beta.3/dist/css/bootstrap-material-design.min.css" integrity="sha384-k5bjxeyx3S5yJJNRD1eKUMdgxuvfisWKku5dwHQq9Q/Lz6H8CyL89KF52ICpX4cL" crossorigin="anonymous">
    <title>Chasiny's homework</title>
</head>
<body>
<%@ page language="java" contentType="text/html; charset=utf-8" %>
<form action="page_2.jsp" methos="POST" style="text-align: center;width: 100%;margin-top: 100px;">
    <div class="form-group" style="margin: 10px auto;width: 500px;">
        <h2 style="color: #03a9f4">冒泡排序</h2>
        <div class="row">
            <div class="col">
                <input type="number" class="form-control" name="num" placeholder="数量">
            </div>
            <div class="col">
                <input type="number" class="form-control" name="min" placeholder="最小值">
            </div>
            <div class="col">
                <input type="number" class="form-control" name="max" placeholder="最大值">
            </div>
        </div>
        <br>
        <input class="btn btn-outline-info" type="submit"></input>
        <input class="btn btn-outline-danger" type="reset"></input>

    </div>
</form>
</body>
</html>



