<%--
  Created by IntelliJ IDEA.
  User: Wu
  Date: 2021/4/10
  Time: 13:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="webjars/jquery/3.6.0/dist/jquery.min.js"></script>
    <script type="text/javascript">
        $(function() {
            $("button").click(function () {
                $.ajax({
                    url : "test/returnStringData.do",
                    data : {
                        name : "vanessa",
                        age : 20
                    },
                    type : "post",
                    //dataType : "json",
                    success : function (resp) {
                        // resp从服务器端返回的是json格式的字符串 {"name" : "vanessa", "age" : 20}
                        // jquery 会把字符串转为json对象，赋值给resp形参
                        // alert(resp.name + "  " + resp.age);
                        // $.each(resp, function (i, n) {
                        //     alert(n.name + "  " + n.age);
                        // })
                        alert("返回的是文本数据" + resp);
                    }
                })
            })
        })
    </script>
</head>
<body>
    <p>处理器方法返回String表示视图名称</p>
    <form action="test/returnString.do" method="post">
        姓名 <input type="text" name="name" /> <br>
        年龄 <input type="text" name="age" /> <br>
        <input type="submit" value="提交" />
    </form>

    <br><br>
    <button id="btn">发起ajax请求</button>
</body>
</html>
