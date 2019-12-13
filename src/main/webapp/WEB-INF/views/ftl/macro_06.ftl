<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<#macro img src extra...>
  <img src="/resources/myapp${src?ensure_starts_with('/')}"
    <#list extra as attrName, attrVal>
      ${attrName}="${attrVal}"
    </#list>
  >
</#macro>
<@img src="/images/test.png" width=100 height=50 alt="Test"/>
</body>
</html>