<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<#assign xs = [1, 2, -3, 4, -5, 6]>

Drop while positive:
<#list xs?drop_while(x -> x > 0) as x>${x} </#list>
<br/><br/>
Filer for positives:
<#list xs?filter(x -> x > 0) as x>${x} </#list>
</body>
</html>