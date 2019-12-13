<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<#list 1..10 as x>
  ${x}
  <#if x == 3>
    <#break>
  </#if>
</#list>
</body>
</html>