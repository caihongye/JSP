<!DOCTYPE=html>
<html>
    <head>
        <title>chy</title>
    </head>
    <style>
        table.table1{
            margin: 10px auto;
            font-family: "Trebuchet MS", sans-serif;
            font-size: 16px;
            font-weight: bold;
            line-height: 1.4em;
            font-style: normal;
        }
        .table1 td{
            color: #9CD009;
            font-size:32px;
            text-align:center;
            padding:10px 0px;
        }
        .table1 th{
            color:#666;
        }
        .table1 td{
            padding:10px;
            text-align:center;
            background-color:#DEF3CA;
            border: none;
            color:#666;
        }
    </style>
    <body>
        <%@ page language="java" contentType="text/html; charset=utf-8" %>
        <h2 class="title" style="font-size:50px;color:#76f1bc;text-align:center;margin-top:100px;">Fibonacci</h2>
        <%
            try{
                String rowStr=request.getParameter("row");
                String colStr=request.getParameter("col");
                if(rowStr==""||colStr==""){
                    out.println("你输入的什么鬼，再输一次！");
                    return;
                }
                int row=Integer.valueOf(rowStr);
                int col=Integer.valueOf(colStr);
                if(row<=0||col<=0){
                    out.println("數這麼小你不想搞事情啊，再输一次！");
                    return;
                }
                if(row*col>100){
                    out.println("數這麼大你想搞死我啊，再输一次！");
                    return;
                }

                int len=row*col;

                if(len<=0){
                    out.println("程序GG了，肯定是你亂來了，再输一次！");
                    return ;
                }
                long[] array=new long[len];
                if(len>0){
                    array[0]=0;
                }
                if(len>1){
                    array[1]=1;
                }
                for(int i=2;i<len;i++){
                    array[i]=array[i-1]+array[i-2];
                }

                out.println("<div style='text-align:center;'><table class='table1' border='1px'>");
                int count=0;
                for(int i=0;i<row;i++){
                    out.println("<tr>");
                    for(int j=0;j<col;j++,count++){
                        out.println("<td>");
                        out.println(array[count]);
                        out.println("</td>");
                    }
                    out.println("</tr>");
                }
                out.println("</table></div>");
            }
            catch(Exception e){
                out.println("程序GG了，肯定是你亂來了");
                return;
            }

        %>
    </body>
</html>