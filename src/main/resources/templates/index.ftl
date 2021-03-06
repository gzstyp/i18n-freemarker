<!DOCTYPE html>
<html lang="en">
<head>
    <#import "spring.ftl" as spring>
    <#assign arg = ["AAA","张三"]>
    <title><@spring.messageArgs "title",arg /></title>
    <meta charset="UTF-8">
</head>
<body>
<br/>
<a class="changeLang" href="javascript:;">English</a><br/>
<a class="changeLang" href="javascript:;">中文</a><br/>
<@spring.message code="user.loginname"/><br/>
<br/>
是目录文件夹messages下的messages文件,也就是配置文件application.properties里的spring.messages.basename=messages/messages
</body>
<script src="${request.contextPath}/static/jquery.js"></script>
<script>
    $(".changeLang").on("click", function () {
        switch ($(this).text()) {
            case "中文": {
                window.location.href = "index?language=zh_CN";
                break;
            }
            case "English": {
                window.location.href = "index?language=en_US";
                break;
            }
        }
    });
</script>
</html>