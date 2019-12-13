<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<#assign ls = ["whale", "Barbara", "zeppelin", "aardvark", "beetroot"]?sort>
<#list ls as i>${i} </#list>
<br/>
<#assign ls2 = ["4", "2", "1", "5", "3"]?sort>
<#list ls2 as i>${i} </#list>
</body>
</html>