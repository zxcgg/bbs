<%@ page import="java.util.Random" %>
<%@ page import="javafx.scene.control.Alert" %>
<%@ page import="org.springframework.web.context.request.SessionScope" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>在线获取手持生分证-四件套</title>
    <script language="JavaScript">

    </script>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <style type="text/css">

        body {
            width: 400px;
            height: 200px;
            margin: auto;
            text-align: center;
        }
    </style>
</head>
<body>
<%

int num= (int) (Math.random()*10000);


%>
<h1>手持身份证四件套  </h1>
<h5   ><code>加载不出来就请刷新</code></h5>
<button type="button" class="btn btn-danger" onclick="document.location.reload();">点我刷新</button>
<tr>
    <td>
        <img class="img-rounded" src="http://60.211.217.162:9001//opt/xydWeb/ArchFiles/upload/FqApiUploadFiles/authPic/<%=num %>/back.jpg"
             width="400px" height="200px">
    </td>
    <td>
        <img  class="img-rounded" src="http://60.211.217.162:9001//opt/xydWeb/ArchFiles/upload/FqApiUploadFiles/authPic/<%=num %>/hold.jpg"
             width="400px" height="200px">
    </td>
    <td>
        <img  class="img-rounded" src="http://60.211.217.162:9001//opt/xydWeb/ArchFiles/upload/FqApiUploadFiles/authPic/<%=num %>/front.jpg"
             width="400px" height="200px">
    </td>
    <td>
        <img class="img-rounded" src="http://60.211.217.162:9001//opt/xydWeb/ArchFiles/upload/FqApiUploadFiles/authPic/<%=num %>/stucard.jpg"
             width="400px" height="200px">
    </td>
</tr>
<br>

</body>
</html>