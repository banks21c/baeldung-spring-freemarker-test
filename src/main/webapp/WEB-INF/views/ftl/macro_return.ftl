<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<#macro test>
  Test text
  <#return>
  Will not be printed.
</#macro>
<@test/>
</body>
</html>