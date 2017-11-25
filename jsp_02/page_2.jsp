<!DOCTYPE=html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.0.0-beta.3/dist/css/bootstrap-material-design.min.css" integrity="sha384-k5bjxeyx3S5yJJNRD1eKUMdgxuvfisWKku5dwHQq9Q/Lz6H8CyL89KF52ICpX4cL" crossorigin="anonymous">
    <title>Chasiny's homework</title>
</head>
<style>
    table{
        margin: auto;
        font-family: "Trebuchet MS", sans-serif;
        font-size: 25px;
        line-height: 1.4em;
    }
    td{
        font-size:32px;
        text-align:center;
        padding:10px;
        background-color: rgba(0, 120, 208, 0.13);
        color: #004ff4;
    }
</style>
<body>
<%@ page language="java" contentType="text/html; charset=utf-8" %>

<%
    out.println("<div style='text-align:center;'>");
    long[] array;
    int num;
    int min;
    int max;
    try{
        String numStr=request.getParameter("num");
        String minStr=request.getParameter("min");
        String maxStr=request.getParameter("max");
        if(numStr==""||minStr==""||maxStr==""){
            out.println("<h2>输入非法，请重新输入！</h2>");
            return;
        }
        num=Integer.valueOf(numStr);
        min=Integer.valueOf(minStr);
        max=Integer.valueOf(maxStr);
        if(num<=0){
            out.println("<h2>数量非法，请重新输入！</h2>");
            return;
        }
        if(max<=min){
            out.println("<h2>最大值没有小于最小值，请重新输入！</h2>");
            return;
        }
        out.println("<h2 style='color: #03a9f4;margin-top:100px;'>冒泡排序</h2><br>");
        out.println("<h3 style='color: #03a9f4;'>数量："+num+"|最小值："+min+"|最大值："+max+"</h3>");
    }
    catch(Exception e){
        out.println("程序错误，请重新打开");
        return;
    }

    array=new long[num];
    for(int i=0;i<num;i++){
        array[i]=(int)(Math.random()*(max-min))+min;
    }
    out.println("<br><table>");
    long temp;
    for(int i=1;i<num;i++){
        for(int j=i;j<num;j++){
            if(array[j-1]>array[j]){
                temp=array[j-1];
                array[j-1]=array[j];
                array[j]=temp;
            }
        }
        out.println("<tr>");
        out.println("<td>");
        out.println("第"+ i +"轮");
        out.println("</td>");
        for(int k=0;k<num;k++){
            out.println("<td>");
            out.println(array[k]);
            out.println("</td>");
        }
        out.println("</tr>");
    }

    out.println("</table>");

    out.println("</div>");
%>
</body>
</html>